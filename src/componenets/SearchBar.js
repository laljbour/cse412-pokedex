import { useState, useEffect } from 'react';
import { supabase } from '../supabaseClient';

import RoughInput from './RoughInput';
import RoughButton from './RoughButton';
import RoughScrollContainer from './RoughScrollContainer';

import Color from 'color';

export default function SearchBar({
    width = 400,
    height = 50,
    onChange
}) {
    const [open, setOpen] = useState(false);
    const [search, setSearch] = useState('');
    const [options, setOptions] = useState([]);
    const [d, setData] = useState([]);

    const handleFocus = state => {
        if (search == "" && state == false) {
            setOpen(false);
        }
    }

    const handleSelect = option => {
        setSearch(option);
        setOpen(false);
    };

    const populate = () => {
        let optionList = [];
        for (let i = 0; i < d.length; i++) {
            optionList.push(<RoughButton onClick={() => handleSelect(d[i].name)} key={i} label={d[i].name} buttonOffset={0} height={height} width={width - 16} fill={Color('white')} />);
        }
        setOptions(optionList);
    };

    const getPokemon = async (no = 213) => {
        let { data, error, status } = await supabase
            .from('pokemon')
            .select(`no, name`)
            .ilike('name', search ? '%' + search + '%' : '*')
            .range(0, 8);
        if (error && status !== 406) throw error;
        if (data) setData(data);
        else setData([]);

        if (data.length > 0 && search != data[0].name) {
            populate();
            setOpen(true);
        } else {
            setOpen(false);
        }

        return data;
    };


    useEffect(() => {
        onChange(search);
        if (search != "") {
            getPokemon();
        } else {
            setOpen(false);
        }
    }, [search]);

    return (
        <div style={{ position: 'relative', top: '-8px' }}>
            <RoughInput onFocusChange={handleFocus} width={width} height={height} placeholderText={'Pokemon Name'} text={search} onChange={(e) => {setSearch(e.target.value);}} />
            <RoughScrollContainer hidden={!open} contentMargin={0} fill={'black'} width={width} height={options ? Math.min(options.length * height, 3.8 * height) : height} style={{ position: 'absolute', top: height + 'px' }}>
                <div className='column-container' style={{ gap: '8px', bottom: -100 + "px", justifyContent: 'start' }}>
                    {options}
                </div>

            </RoughScrollContainer>
        </div>
    )
}