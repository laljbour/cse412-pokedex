import { useState, useEffect } from 'react';
import { supabase } from './supabaseClient';

import { RoughProvider } from './componenets/RoughProvider';
import { Rectangle } from 'react-rough';
import ReactRoughAnimated from './componenets/ReactRoughAnimated';
import RoughInput from './componenets/RoughInput';
import RoughButton from './componenets/RoughButton';
import RoughScrollContainer from './componenets/RoughScrollContainer';
import Color from 'color';

export default function App() {
  const [pokemon, setPokemon] = useState({});
  const [level, setLevel] = useState(Math.floor(Math.random() * (100 - 1 + 1) + 1));
  const [imageUrl, setImageUrl] = useState(null);

  const [search, setSearch] = useState('');

  const downloadImage = async (path) => {
    try {
      const { data, error } = await supabase.storage.from('pokemon').download(path);
      if (error) throw error;
      const url = URL.createObjectURL(data);
      setImageUrl(url);
    } catch (error) {

      console.log('Error downloading image: ', error.message);
    }
  };

  const getPokemon = async (no = 213) => {
    let { data, error, status } = await supabase
      .from('pokemon')
      .select(`name, type_1, hp, attack, defense, sp_atk, sp_def`)
      .eq('no', no)
      .single();
    if (error && status !== 406) throw error;
    if (data) {
      setPokemon(data);
      setLevel(Math.floor(Math.random() * (100 - 1 + 1) + 1));
      var pokemon_name = data.name.toLowerCase();
      downloadImage(pokemon_name + '.png');
    }
  };

  useEffect(() => {
    getPokemon();
  }, []);


  return (
    <RoughProvider>
      <div className='center-flex-container vh-10'>
        <h1>Pokemon Catch Simulator</h1>
        <div className='c-2' />
        <div className='row-container'>
          <RoughInput onChange={(e) => setSearch(e.target.value)} height={50}></RoughInput>
          <div className='r-3' />
          <RoughButton onClick={() => getPokemon(search)} label={'Load Pokemon'} width={200} height={50}></RoughButton>
        </div>
        <div className='c-2' />
        <div style={{ position: 'relative', }}>
          <ReactRoughAnimated
            width={800}
            height={800}
            margin={16}>
            <Rectangle
              x={16} y={16}
              width={800}
              height={800}
              fill={'#00000000'} />
          </ReactRoughAnimated>
          <div style={{ position: 'absolute', width: '800px', height: '800px', bottom: 0 }}>
            <RoughScrollContainer width={220} height={260} style={{ position: 'absolute', right: '5%', top: '5%' }}>
              <p style={{ fontSize: '30px' }}>
                <span style={{ textDecoration: 'underline', display: 'inline-block', width: '100%', textAlign: 'center' }}>STATS</span>
                Type: <span className='blue-text'>{pokemon.type_1}</span>
                <br />
                HP: <span className='blue-text'>{pokemon.hp}</span>
                <br />
                Attack: <span className='blue-text'>{pokemon.attack}</span>
                <br />
                Defense: <span className='blue-text'>{pokemon.defense}</span>
                <br />
                Sp. Attack: <span className='blue-text'>{pokemon.sp_atk}</span>
                <br />
                Sp. Defense: <span className='blue-text'>{pokemon.sp_def}</span>

              </p>
            </RoughScrollContainer>
            <p style={{ position: 'absolute', left: '40px', top: '40px' }}>{'A wild '}<span style={{ color: Color("blue") }}>{pokemon.name}</span>{' has appeared!'}</p>
            <div className='column-container' style={{ height: '100%', }}>
              <span>{"Level " + level}</span>
              <img
                src={imageUrl ? imageUrl : `https://place-hold.it/${120}x${120}`}
                className="avatar image"
                style={{ height: 120 * 3, width: 120 * 3, }}
              />
              <RoughButton label={'Catch!'}></RoughButton>
            </div>
          </div>
        </div>
      </div>
    </RoughProvider >
  )
}