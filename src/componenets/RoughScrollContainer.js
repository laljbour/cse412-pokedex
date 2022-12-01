import { useState, useRef } from 'react';

import { Rectangle } from 'react-rough';
import ReactRoughAnimated from './ReactRoughAnimated';

import Color from 'color';

export default function RoughScrollContainer({
    children,
    width = 400,
    height = 400,
    ScrollbarWidth = 16,
    ScrollbarSize = 32,
    scrollbarFill = Color("gray"),
    scrollbarMarkerFill = Color("blue"),
    scrollbarPadding = 0,
    contentMargin = 32.0,
    style
}) {
    const [scrollPosition, setScrollPosition] = useState(0);
    const containerRef = useRef(null);

    const handleScroll = () => {
        const scrollTop = containerRef.current.scrollTop;
        const scrollTopMax = containerRef.current.scrollHeight - (height - (contentMargin * 2));
        setScrollPosition(scrollTop / scrollTopMax);
    };

    const RoughMargin = 16.0;
    const RightOffset = - ScrollbarWidth - (scrollbarPadding / 2);

    return (
        <div style={{ width: width + 'px', height: height + 'px', ...style }}>
            <ReactRoughAnimated
                width={width}
                height={height}
                margin={RoughMargin}>
                <Rectangle
                    x={RoughMargin} y={RoughMargin}
                    width={width}
                    height={height}
                    fill={'#00000000'} />
                <Rectangle
                    x={RoughMargin + width + RightOffset}
                    y={RoughMargin + (scrollbarPadding / 2)}
                    width={ScrollbarWidth}
                    height={height - scrollbarPadding}
                    fill={scrollbarFill} />
                <Rectangle
                    x={RoughMargin + width + RightOffset}
                    y={RoughMargin + (scrollbarPadding / 2) + (height - scrollbarPadding - ScrollbarSize) * scrollPosition}
                    width={ScrollbarWidth}
                    height={ScrollbarSize}
                    fill={scrollbarMarkerFill} />
            </ReactRoughAnimated>
            <div style={{
                position: 'relative',
                top: -height + 'px',
            }}>
                <div ref={containerRef} style={{
                    position: 'absolute',
                    width: width - contentMargin + RightOffset + 'px',
                    height: height - contentMargin + 'px',
                    left: contentMargin / 2 + 'px',
                    top: contentMargin / 2 + 'px',
                    overflowY: 'scroll',
                    overflowWrap: 'anywhere',
                }} onScroll={handleScroll}>
                    {children}
                </div>
            </div>
        </div>
    )
}