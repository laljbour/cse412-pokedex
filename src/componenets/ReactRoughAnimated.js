import React, { useState } from "react";
import ReactRough from 'react-rough';
import { useRoughContext } from './RoughProvider';

export default function ReactRoughAnimated({
    children,
    options = {
        strokeWidth: 2.0,
        fillWeight: 4.0,
        hachureGap: 4.0,
        roughness: 2.0,
    },
    width, height,
    margin = 16.0,
    style
}) {
    const [seed, setSeed] = useState(Math.floor(Math.random() * (100 - 1) + 1));
    const roughToggle = useRoughContext();

    return (
        <div style={{
            ...style,
            margin: -margin+'px',
            width: width + (margin * 2) + 'px',
            height: height + (margin * 2) + 'px',
            pointerEvents: 'none',
        }}>
            <ReactRough
                renderer="svg"
                config={{ options: { 
                    seed: roughToggle ? seed : seed + 1, 
                    ...options } }}
                width={width + (margin * 2)}
                height={height + (margin * 2)}>
                {children}
            </ReactRough>
        </div>
    );
}