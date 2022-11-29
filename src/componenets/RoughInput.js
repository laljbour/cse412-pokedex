import { Rectangle } from 'react-rough'
import ReactRoughAnimated from './ReactRoughAnimated'
import { useState, useEffect } from 'react'
import Color from 'color'
import { animate } from "framer-motion"

export default function RoughInput({ children, width = 400, height = 40, fill = Color("white"), style }) {
    const [offset, setOffset] = useState(0)
    const [focus, setFocus] = useState(false)

    const OutlineMargin = 8.0
    const FocusMargin = 4.0
    const containerSize = {
        width: width + (OutlineMargin * 2),
        height: height + (OutlineMargin * 2)
    }

    const handleFocus = () => setFocus(true)
    const handleBlur = () => setFocus(false)

    useEffect(() => {
        animate(0, 18, {
            onUpdate: v => setOffset(v),
            repeat: Infinity,
            ease: "linear",
        })
    }, [])

    return (
        <div style={{width: containerSize.width + 'px', height: containerSize.height + 'px', ...style}}>
            <ReactRoughAnimated
                width={containerSize.width}
                height={containerSize.height} >
                <Rectangle
                    x={OutlineMargin}
                    y={OutlineMargin}
                    width={width}
                    height={height}
                    fill={fill} />
                <Rectangle
                    x={OutlineMargin + FocusMargin}
                    y={OutlineMargin + FocusMargin}
                    width={width - (FocusMargin * 2)}
                    height={height - (FocusMargin * 2)}
                    fill={'#00000000'}
                    stroke={focus ? '#00CCCC' : '#00000000'}
                    strokeWidth={focus ? 2 : 0}
                    strokeLineDash={[10, 8]}
                    strokeLineDashOffset={offset} />
            </ReactRoughAnimated>
            <input
                onFocus={handleFocus}
                onBlur={handleBlur}
                style={{
                    'position': 'relative',
                    'top': `${OutlineMargin}px`,
                    'left': `${OutlineMargin}px`,
                    'width': `${width}px`,
                    'height': `${height}px`
                }}>
                {children}
            </input>
        </div>
    )
}