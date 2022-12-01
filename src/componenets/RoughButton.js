import React, { useState, useEffect } from 'react';

import { Rectangle } from 'react-rough';
import ReactRoughAnimated from './ReactRoughAnimated';

import Color from 'color';
import { animate } from "framer-motion";

export default function RoughButton({
    children,
    onClick,
    label,
    width = 150,
    height = 50,
    fill = Color('#dddddd'),
    outline = Color("black"),
    buttonOffset = 16.0,
    toggle,
    style
}) {
    const [offset, setOffset] = useState(0);
    const [pressed, setPressed] = useState(toggle != undefined ? toggle : false);

    const handleMouseDown = () => setPressed(true);
    const handleMouseUp = () => setPressed(false);

    useEffect(() => {
        const controls = animate(offset, pressed ? buttonOffset : 0, {
            duration: pressed ? 0.1 : 1.0,
            type: "spring",
            onUpdate: v => setOffset(v),
        });
        return controls.stop;
    }, [pressed])

    useEffect(() => {
        if (toggle != undefined) {
            setPressed(toggle);
        }
    }, [toggle]);

    const handleMouseLeave = () => handleMouseUp();

    const childrenWithProps = React.Children.map(children, child => {
        if (React.isValidElement(child))
            return React.cloneElement(child, { width: width, height: height - buttonOffset, y: offset });
        return child;
    });

    const RoughMargin = 16.0;
    const OutlinePadding = 3;

    return (
        <div style={{ width: width + 'px', height: height + 'px', ...style }}>
            <ReactRoughAnimated
                width={width}
                height={height}
                margin={RoughMargin}>
                <Rectangle
                    x={RoughMargin}
                    y={RoughMargin + buttonOffset}
                    width={width}
                    height={height - buttonOffset}
                    fill={fill.mix(Color("blue"), 0.2)}
                    strokeWidth={0} />
                <Rectangle
                    x={RoughMargin}
                    y={RoughMargin + offset}
                    width={width}
                    height={height - buttonOffset}
                    fill={fill}
                    strokeWidth={0} />
                <Rectangle
                    x={RoughMargin - OutlinePadding}
                    y={RoughMargin - OutlinePadding + Math.min(offset, buttonOffset)}
                    width={width + (OutlinePadding * 2)}
                    height={height + (OutlinePadding * 2) + Math.max(-offset, -buttonOffset)}
                    fill={'#00000000'}
                    stroke={pressed ? Color("blue") : outline} />
            </ReactRoughAnimated>
            <button
                onMouseDown={toggle != undefined ? () => { } : handleMouseDown}
                onMouseUp={toggle != undefined ? () => { } : handleMouseUp}
                onMouseLeave={toggle != undefined ? () => { } : handleMouseLeave}
                onClick={() => { if (toggle != undefined) setPressed(!pressed); if (onClick) onClick(); }}
                style={{
                    top: -height + 'px',
                    position: 'relative',
                    width: width + 'px',
                    height: height + 'px',
                    padding: 0,
                }}>
                <span style={{
                    position: 'absolute',
                    color: fill.luminosity() < 0.5 ? Color("white") : Color("#222222"),
                    alignItems: 'center',
                    justifyContent: 'center',
                    width: width + 'px',
                    height: height - buttonOffset + 'px',
                    display: 'flex',
                    top: offset + 'px',
                }}>
                    {label}
                </span>
                {childrenWithProps}
            </button>

        </div>
    )
}