import { useState } from 'react';

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
    style
}) {
    const [offset, setOffset] = useState(0);
    const [pressed, setPressed] = useState(false);

    const handleMouseDown = () => {
        setPressed(true)
        animate(offset, buttonOffset, {
            type: "spring",
            onUpdate: v => setOffset(v),
        })
    };
    const handleMouseUp = () => {
        if (pressed) {
            setPressed(false)
            animate(offset, 0, {
                type: "spring",
                onUpdate: v => setOffset(v),
            })
        }
    };

    const handleMouseLeave = () => handleMouseUp();

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
                onMouseDown={handleMouseDown}
                onMouseUp={handleMouseUp}
                onMouseLeave={handleMouseLeave}
                onClick={onClick}
                style={{
                    top: -height+'px',
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
                    top: offset+'px',
                }}>
                    {label}
                </span>
                {children}
            </button>

        </div>
    )
}