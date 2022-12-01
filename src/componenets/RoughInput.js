import { useState, useEffect } from 'react';

import { Rectangle } from 'react-rough';
import ReactRoughAnimated from './ReactRoughAnimated';

import Color from 'color';
import { animate } from "framer-motion";

export default function RoughInput({
    children,
    onChange,
    onFocusChange,
    width = 400,
    height = 40,
    fill = Color("white"),
    textMargin = 16.0,
    focusOutlineColor = Color('blue'),
    focusOutlineOffset = 4.0,
    focusOutlineSpeed = 1.0,
    placeholderText,
    text,
    style
}) {
    const [value, setValue] = useState("");
    const [offset, setOffset] = useState(0);
    const [focus, setFocus] = useState(false);

    const handleFocus = () => setFocus(true);
    const handleBlur = () => setFocus(false);

    useEffect(() => {
        if (value != text) setValue(text);
    }, [text]);

    useEffect(() => {
        if (onFocusChange) onFocusChange(focus)
    }, [focus]);

    useEffect(() => {
        animate(0, 18 / focusOutlineSpeed, {
            onUpdate: v => setOffset(v),
            repeat: Infinity,
            ease: "linear",
        });
    }, []);

    const RoughMargin = 16.0;

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
                    fill={fill} />
                <Rectangle
                    x={RoughMargin + focusOutlineOffset}
                    y={RoughMargin + focusOutlineOffset}
                    width={width - (focusOutlineOffset * 2)}
                    height={height - (focusOutlineOffset * 2)}
                    fill={'#00000000'}
                    stroke={focus ? focusOutlineColor : '#00000000'}
                    strokeWidth={focus ? 2 : 0}
                    strokeLineDash={[10, 8]}
                    strokeLineDashOffset={offset} />
            </ReactRoughAnimated>
            <input
                onChange={(e) => {
                    setValue(e.target.value);
                    if (onChange) onChange(e);
                }}
                value={value}
                onFocus={handleFocus}
                onBlur={handleBlur}
                placeholder={placeholderText}
                style={{
                    top: -height + 'px',
                    padding: (textMargin / 2),
                    position: 'relative',
                    width: width - textMargin + 'px',
                    height: height - textMargin + 'px',
                }}>
                {children}
            </input>
        </div>
    )
}