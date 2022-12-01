import { useState, useRef } from 'react';

import { Rectangle } from 'react-rough';
import ReactRoughAnimated from './ReactRoughAnimated';

import Color from 'color';

export default function RoughScrollContainer({
    children,
    width = 400,
    height = 400,
    fill,
    ScrollbarWidth = 16,
    ScrollbarSize = 32,
    scrollbarFill = Color("gray"),
    scrollbarMarkerFill = Color("blue"),
    scrollbarPadding = 0,
    contentMargin = 32.0,
    onScroll,
    hidden,
    style
}) {
    const [scrollPosition, setScrollPosition] = useState(0);
    const containerRef = useRef(null);

    const getScrollPosition = () => {
        const scrollTop = containerRef.current.scrollTop;
        const scrollTopMax = containerRef.current.scrollHeight - (height - (contentMargin * 2));
        return scrollTop / scrollTopMax;
    };

    const getContainerSize = () => containerRef.current ? containerRef.current.scrollHeight - (height - (contentMargin * 2)) : 0;

    const handleScroll = () => {
        let scrollPosition = getScrollPosition();
        setScrollPosition(scrollPosition);
        if (onScroll)
            onScroll(Math.round(scrollPosition * 100));
    };

    const RoughMargin = 16.0;
    const RightOffset = - ScrollbarWidth - (scrollbarPadding / 2);

    return (
        <div hidden={hidden} style={{ width: width + 'px', height: height + 'px', ...style }}>
            <ReactRoughAnimated
                width={width}
                height={height}
                margin={RoughMargin}>
                <Rectangle
                    x={RoughMargin} y={RoughMargin}
                    width={width}
                    height={height}
                    fill={fill}
                    stroke={'none'} />
            </ReactRoughAnimated>
            <div style={{
                position: 'relative',
                top: -height + 'px',
            }}>
                <div ref={containerRef} style={{
                    position: 'absolute',
                    width: width - contentMargin + RightOffset + 'px',
                    height: height + RoughMargin - contentMargin + 'px',
                    left: contentMargin / 2 + 'px',
                    top: contentMargin / 2 + 'px',
                    overflowY: 'scroll',
                }} onScroll={handleScroll}>
                    {children}
                </div>
            </div>
            <ReactRoughAnimated
                width={width}
                height={height}
                margin={RoughMargin}
                style={{ position: 'absolute', top: 0 }}>
                <Rectangle
                    x={RoughMargin} y={RoughMargin}
                    width={width}
                    height={height}
                    fill={'none'} />
                <Rectangle
                    x={RoughMargin + width + RightOffset}
                    y={RoughMargin + (scrollbarPadding / 2)}
                    width={ScrollbarWidth}
                    height={height - scrollbarPadding}
                    fill={scrollbarFill} />
                {getContainerSize() > height ? <Rectangle
                    x={RoughMargin + width + RightOffset}
                    y={RoughMargin + (scrollbarPadding / 2) + (height - scrollbarPadding - ScrollbarSize) * scrollPosition}
                    width={ScrollbarWidth}
                    height={ScrollbarSize}
                    fill={scrollbarMarkerFill} /> : null}
            </ReactRoughAnimated>
        </div>
    )
}