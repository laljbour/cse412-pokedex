import { Rectangle } from 'react-rough'
import LiveRough from './LiveRough'
import { useState, useRef } from 'react'
import Color from 'color'
import { animate } from "framer-motion"

export default function RoughScrollContainer({ children, width = 400, height = 400, fill = Color("white"), style }) {
    const [scrollPosition, setScrollPosition] = useState(0)
    const containerRef = useRef(null);
    const ScrollbarWidth = 8
    const ScrollbarSize = 64
    const OutlineMargin = 8.0
    const ContentMargin = 16.0
    const containerSize = {
        width: width + (OutlineMargin * 2),
        height: height + (OutlineMargin * 2)
    }

    const handleScroll = () => {
        const scrollTop = containerRef.current.scrollTop
        const scrollTopMax = containerRef.current.scrollHeight - (height - (ContentMargin * 2))
        setScrollPosition(scrollTop / scrollTopMax)
    }

    return (
        <div style={{ width: containerSize.width + 'px', height: containerSize.height + 'px', ...style }}>
            <LiveRough
                width={containerSize.width}
                height={containerSize.height} >
                <Rectangle
                    x={OutlineMargin}
                    y={OutlineMargin}
                    width={width}
                    height={height}
                    fill={'#00000000'} />
                <Rectangle
                    x={OutlineMargin + width - ScrollbarWidth - ContentMargin}
                    y={OutlineMargin + ContentMargin}
                    width={ScrollbarWidth}
                    height={height - (ContentMargin * 2)}
                    fill={'#00000000'} />
                <Rectangle
                    x={OutlineMargin + width - ScrollbarWidth - ContentMargin}
                    y={OutlineMargin + ContentMargin + (scrollPosition * (height - (ContentMargin * 2) - ScrollbarSize - ScrollbarWidth) + ScrollbarWidth)}
                    width={ScrollbarWidth}
                    height={ScrollbarSize}
                    fill={'#00000000'} />
            </LiveRough>
            <div style={{ 'position': 'relative', }}>
                <div ref={containerRef} style={{
                    position: 'absolute',
                    width: width - (ContentMargin * 3) - ScrollbarWidth + 'px',
                    height: height - (ContentMargin * 2) + 'px',
                    left: OutlineMargin + ContentMargin + 'px',
                    top: OutlineMargin + ContentMargin + 'px',
                    overflowY: 'scroll'
                }} onScroll={handleScroll}>
                    {children}
                </div>
            </div>
        </div>
    )
}