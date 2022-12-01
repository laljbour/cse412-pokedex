import Pokeball from '../images/pokeball.png';
import Greatball from '../images/greatball.png';
import Ultraball from '../images/ultraball.png';

export default function RoughButtonIcon({
    type = 0,
    width = 50,
    height = 50,
    x = 0,
    y = 0,
    style
}) {
    const PokeballType = [Pokeball, Greatball, Ultraball];

    return (
        <div style={{
            position: 'absolute',
            width: width + 'px',
            height: height + 'px',
            display: 'flex',
            top: y + 'px',
            left: x + 'px',
            justifyContent: 'center',
            ...style
        }}>
            <img style={{
                pointerEvents: 'none',
                margin: -10+'px'
            }} src={PokeballType[type]} />
        </div>
    )
}