import { useState, useEffect } from 'react';
import { supabase } from './supabaseClient';

import { RoughProvider } from './componenets/RoughProvider';
import { Rectangle } from 'react-rough';
import ReactRoughAnimated from './componenets/ReactRoughAnimated';
import RoughInput from './componenets/RoughInput';
import RoughButton from './componenets/RoughButton';
import RoughScrollContainer from './componenets/RoughScrollContainer';

import Color from 'color';
import PokeballIcon from './componenets/PokeballIcon';
import PokeballOptions from './componenets/PokeballOptions';

export default function App() {
  const [pokemon, setPokemon] = useState(null);
  const [level, setLevel] = useState(Math.floor(Math.random() * (100 - 1 + 1) + 1));
  const [imageUrl, setImageUrl] = useState(null);
  const [pokeball, setPokeball] = useState(-1);
  const [isCaught, setIsCaught] = useState(0);

  const [search, setSearch] = useState('');

  const downloadImage = async (path) => {
    try {
      const { data, error } = await supabase.storage.from('pokemon').download(path);
      if (error) throw error;
      const url = URL.createObjectURL(data);
      setImageUrl(url);
    } catch (error) {
      setImageUrl('https://lttlwinkcupntrqnzeys.supabase.co/storage/v1/object/public/pokemon/logo.png');
      console.log('Error downloading image: ', error.message);
    }
  };

  const getPokemon = async (no = 213) => {
    let { data, error, status } = await supabase
      .from('pokemon')
      .select(`name, type_1, hp, attack, defense, sp_atk, sp_def, catch_rate`)
      .eq('no', no)
      .single();
    if (error && status !== 406) throw error;
    if (data) {
      var pokemon_level = Math.floor(Math.random() * (100 - 1 + 1) + 1);
      data.hp = Math.round(((pokemon_level - 1) * 0.02 + 1) * data.hp);
      data.attack = Math.round(((pokemon_level - 1) * 0.02 + 1) * data.attack);
      data.defense = Math.round(((pokemon_level - 1) * 0.02 + 1) * data.defense);
      data.sp_atk = Math.round(((pokemon_level - 1) * 0.02 + 1) * data.sp_atk);
      data.sp_def = Math.round(((pokemon_level - 1) * 0.02 + 1) * data.sp_def);
      data.level = pokemon_level;
      setPokemon(data);
      setLevel(pokemon_level);
      var pokemon_name = data.name.toLowerCase();
      downloadImage(pokemon_name + '.png');
      setAnimationTrigger("none");
    }
  };

  const catchPokemon = async () => {
    var ball_buff = -1;
    if (pokeball == -1)
      ball_buff = 0;
    else if (pokeball == 0)
      ball_buff = 1;
    else if (pokeball == 1)
      ball_buff = 1.5;
    else
      ball_buff = 2;
    var final_catch_rate = pokemon.catch_rate / (2 * pokemon.level);
    final_catch_rate = final_catch_rate > 1 ? 1 : final_catch_rate;
    var success_rate = 1 - Math.pow(1 - final_catch_rate, ball_buff);
    var random_number = Math.random();
    if (random_number <= success_rate) setIsCaught(1);
    else setIsCaught(-1);
  };

  useEffect(() => {
    getPokemon();
  }, []);

  const [animationTrigger, setAnimationTrigger] = useState("");
  useEffect(() => {
    if (animationTrigger == "none") {
      setAnimationTrigger("");
    }
  }, [animationTrigger]);
  const messageBox = <p className='typewriter' style={{ position: 'absolute', left: '40px', top: '40px', animation: animationTrigger }}>{'A wild '}<span style={{ color: Color("blue") }}>{pokemon ? pokemon.name : ''}</span>{' has appeared!'}</p>;

  return (
    <RoughProvider>
      <div className='center-flex-container vh-10'>
        <h1>Pokemon Catch Simulator</h1>
        <div className='c-2' />
        <div className='row-container'>
          <RoughInput onChange={(e) => setSearch(e.target.value)} height={50} placeholderText={'Pokemon No.'}></RoughInput>
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
                Type: <span className='blue-text'>{pokemon ? pokemon.type_1 : ''}</span>
                <br />
                HP: <span className='blue-text'>{pokemon ? pokemon.hp : ''}</span>
                <br />
                Attack: <span className='blue-text'>{pokemon ? pokemon.attack : ''}</span>
                <br />
                Defense: <span className='blue-text'>{pokemon ? pokemon.defense : ''}</span>
                <br />
                Sp. Attack: <span className='blue-text'>{pokemon ? pokemon.sp_atk : ''}</span>
                <br />
                Sp. Defense: <span className='blue-text'>{pokemon ? pokemon.sp_def : ''}</span>
                <br />
                Catch Rate: <span className='blue-text'>{pokemon ? pokemon.catch_rate : ''}</span>

              </p>
            </RoughScrollContainer>
            {pokemon ? messageBox : null}
            <div className='column-container' style={{ height: '100%', }}>
              <span>{"Level " + level}</span>
              <img
                src={imageUrl ? imageUrl : `https://place-hold.it/${120}x${120}`}
                style={{ height: 120 * 3, width: 120 * 3, margin: -20+'px' }}
              />
              <span style={{ color: (isCaught == 1 ? Color("green") : Color("red")), }}>{isCaught == 0 ? '' : (isCaught == 1 ? 'CAPTURE SUCCESSFUL' : 'CAPTURE FAILED')}</span>
              <div className='c-3' />
              <div className={'row-container'} style={{justifyContent: 'right'}}>
                <RoughButton onClick={() => catchPokemon()} label={'Catch!'}/>
                <div className='r-2' />
                <PokeballOptions onChange={setPokeball}/>
              </div>
            </div>
          </div>
        </div>
      </div>
    </RoughProvider >
  )
}