import './index.css'
import { useState, useEffect } from 'react'
import { supabase } from './supabaseClient'

import Color from 'color'
import { RoughProvider } from './componenets/RoughProvider'
import { Rectangle } from 'react-rough'
import LiveRough from './componenets/LiveRough'
import RoughInput from './componenets/RoughInput'
import RoughButton from './componenets/RoughButton'
import RoughScrollContainer from './componenets/RoughScrollContainer'

export default function App() {
  const [pokemon, setPokemon] = useState({})
  const [level, setLevel] = useState(25)
  const [avatarUrl, setAvatarUrl] = useState(null)

  useEffect(() => {
    if (pokemon.image) downloadImage(pokemon.image)
  }, [pokemon])

  const downloadImage = async (path) => {
    try {
      const { data, error } = await supabase.storage.from('pokemon').download(path)
      if (error) {
        throw error
      }
      const url = URL.createObjectURL(data)
      setAvatarUrl(url)
    } catch (error) {
      console.log('Error downloading image: ', error.message)
    }
  }

  const test = async () => {
    let { data, error, status } = await supabase
      .from('pokemon')
      .select(`name, image, type_1, hp, attack, defense, sp_atk, sp_def`)
      .eq('no', 213)
      .single()

    if (error && status !== 406) {
      throw error
    }

    if (data) {
      setPokemon(data)
    }
  }

  useEffect(() => {
    test()
  }, [])


  return (
    <RoughProvider>
      <div className="container" style={{ padding: '50px 0 100px 0' }}>
        <div style={{ 'paddingBottom': 20 + 'px' }}>
          <span className='inline-block'>Pokemon Catch Simulator</span>
          <RoughButton label={'Select Pokemon'} width={200} height={30} style={{ margin: 'auto' }}></RoughButton>
        </div>
        <LiveRough
          width={800 + (8 * 2)}
          height={800 + (8 * 2)}
          style={{
            left: '50%',
            transform: 'translateX(-50%)'
          }}>
          <Rectangle
            x={8}
            y={8}
            width={800}
            height={800}
            fill={'#00000000'} />
        </LiveRough>
        <div style={{ 'paddingTop': '50px' }}>
          <RoughScrollContainer width={220} height={260} style={{ position: 'absolute', left: '50%', marginLeft: '150px', marginTop: '30px' }}>
            <p style={{fontSize: '1.5rem'}}>
              <span style={{textDecoration: 'underline', fontSize: '1.5rem'}} className='inline-block'>STATS</span>
              Type: <span style={{ color: Color("blue"), fontSize: '1.5rem' }}>{pokemon.type_1}</span>
              <br/>
              HP: <span style={{ color: Color("blue"), fontSize: '1.5rem' }}>{pokemon.hp}</span>
              <br/>
              Attack: <span style={{ color: Color("blue"), fontSize: '1.5rem' }}>{pokemon.attack}</span>
              <br/>
              Defense: <span style={{ color: Color("blue"), fontSize: '1.5rem' }}>{pokemon.defense}</span>
              <br/>
              Sp. Attack: <span style={{ color: Color("blue"), fontSize: '1.5rem' }}>{pokemon.sp_atk}</span>
              <br/>
              Sp. Defense: <span style={{ color: Color("blue"), fontSize: '1.5rem' }}>{pokemon.sp_def}</span>
            </p>
          </RoughScrollContainer>
          <p style={{ 'paddingLeft': '140px' }} className='inline-block'>{'A wild '}<span style={{ color: Color("blue") }}>{pokemon.name}</span>{' has appeared!'}</p>
          <span className='inline-block' style={{ paddingTop: '50px', margin: 'auto' }}>{"Level " + level}</span>
          <img
            src={avatarUrl ? avatarUrl : `https://place-hold.it/${120}x${120}`}
            className="avatar image"
            style={{ height: 120 * 3, width: 120 * 3, margin: 'auto' }}
          />
          <p></p>
          <RoughButton style={{ margin: 'auto', paddingTop: '50px' }} label={'Catch!'}></RoughButton>
        </div>
      </div>
    </RoughProvider>
  )
}