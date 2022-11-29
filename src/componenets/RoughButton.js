import { useState } from 'react';

import { Rectangle } from 'react-rough';
import ReactRoughAnimated from './ReactRoughAnimated';

import Color from 'color';
import { animate } from "framer-motion";

export default function RoughButton({ label, width = 150, height = 50, fill = Color('#dddddd'), outline = Color("black"), style }) {
    const [offset, setOffset] = useState(0)
    const [pressed, setPressed] = useState(false)

    const OutlineMargin = 8.0
    const ButtonOffset = 25.0
    const containerSize = {
        width: width + (OutlineMargin * 2),
        height: height + ButtonOffset + (OutlineMargin * 2)
    }

    let offsetAnimation
    const handleMouseDown = () => {
        setPressed(true)
        offsetAnimation = animate(offset, ButtonOffset, {
            type: "spring", 
            onUpdate: v => setOffset(v),
        })
    }
    const handleMouseUp = () => {
        if (pressed) {
            setPressed(false)
            offsetAnimation = animate(offset, 0, {
                type: "spring", 
                onUpdate: v => setOffset(v),
            })
        }
    }

    const handleMouseLeave = () => handleMouseUp()

    return (
        <div style={{width: containerSize.width + 'px', height: containerSize.height + 'px', ...style}}>
            <ReactRoughAnimated
                width={containerSize.width}
                height={containerSize.height}>
                <Rectangle
                    x={OutlineMargin}
                    y={OutlineMargin + ButtonOffset}
                    width={width}
                    height={height}
                    fill={fill.mix(Color("blue"), 0.2)}
                    strokeWidth={0} />
                <Rectangle
                    x={OutlineMargin}
                    y={OutlineMargin + offset}
                    width={width}
                    height={height}
                    fill={fill}
                    strokeWidth={0} />
                <Rectangle
                    x={OutlineMargin - 0.2}
                    y={OutlineMargin - 0.2 + Math.min(offset, ButtonOffset)}
                    width={width + 0.2}
                    height={height + 0.2 + Math.max(ButtonOffset - offset, 0)}
                    fill={'#00000000'}
                    stroke={pressed ? Color("blue") : outline} />
            </ReactRoughAnimated>
            <div style={{ 'position': 'relative', }}>
                <span style={{
                    'position': 'absolute',
                    'color': fill.luminosity() < 0.5 ? Color("white") : Color("#222222"),
                    'top': `${OutlineMargin + offset}px`,
                    'left': `${OutlineMargin}px`,
                    'width': `${width}px`,
                    'height': `${height + ButtonOffset}px`,
                    'paddingBottom': `${ButtonOffset}px`
                }}>
                    {label}
                </span>
                <button
                    onMouseDown={handleMouseDown}
                    onMouseUp={handleMouseUp}
                    onMouseLeave={handleMouseLeave}
                    style={{
                        'position': 'absolute',
                        'color': fill.luminosity() < 0.5 ? Color("white") : Color("#222222"),
                        'top': `${OutlineMargin}px`,
                        'left': `${OutlineMargin}px`,
                        'width': `${width}px`,
                        'height': `${height + ButtonOffset}px`,
                        'paddingBottom': `${ButtonOffset}px`
                    }}>

                </button>
            </div>

        </div>
    )
}