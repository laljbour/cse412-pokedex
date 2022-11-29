import React, { useEffect, useState } from "react";
import ReactRough from 'react-rough';
import { useRoughContext } from './RoughProvider';

export default function ReactRoughAnimated({
    children,
    options = {
        strokeWidth: 2.0,
        fillWeight: 4.0,
        hachureGap: 4.0,
        roughness: 4.0,
    },
    width, height
}) {
    const [seed, setSeed] = useState(Math.floor(Math.random() * (100 - 1) + 1));
    const roughToggle = useRoughContext();

    return (
        <ReactRough renderer="svg" config={{ options: { seed: roughToggle ? seed : seed + 1, ...options } }} width={width} height={height}>
            {children}
        </ReactRough>
    );
}