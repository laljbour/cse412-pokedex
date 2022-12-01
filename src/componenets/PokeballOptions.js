import { useState, useEffect } from 'react';

import RoughButton from './RoughButton';
import PokeballIcon from './PokeballIcon';

export default function PokeballOptions({
    width = 150,
    height = 50,
    spacing = 16,
    onChange,
}) {
    const [selectedOption, setSelectedOption] = useState(-1);

    const handleSelect = (option) => {
        if (selectedOption == option) {
            setSelectedOption(-1);
        } else { 
            setSelectedOption(option);
        }
        if (onChange) {
            onChange(option);
        }
    };

    return (
        <div className={'row-container'} style={{ width: width + (spacing * 2) + 'px', height: height + 'px' }}>
            <RoughButton onClick={() => handleSelect(0)} width={width / 3} height={height} toggle={selectedOption == 0}><PokeballIcon type={0} /></RoughButton>
            <RoughButton onClick={() => handleSelect(1)} width={width / 3} height={height} toggle={selectedOption == 1}><PokeballIcon type={1} /></RoughButton>
            <RoughButton onClick={() => handleSelect(2)} width={width / 3} height={height} toggle={selectedOption == 2}><PokeballIcon type={2} /></RoughButton>
        </div>
    )
}