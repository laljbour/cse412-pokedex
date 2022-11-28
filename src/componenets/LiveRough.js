import ReactRough from 'react-rough'
import { useRoughContext } from './RoughProvider'

export default function LiveRough({children, options, width, height, seed=1, style}) {
  const switchRough = useRoughContext()
  const globalOptions = {
    strokeWidth: 2.0,
    fillWeight: 4.0,
    hachureGap: 4.0,
    roughness: 2.0,
  }

  return (
    <div style={{position: 'absolute', width: width + 'px', height: height + 'px', ...style}}>
      <div hidden={switchRough}>
        <ReactRough renderer="svg" config={{options:{seed: 1 * seed, ...globalOptions, ...options}}} width={width} height={height}>
          {children}
        </ReactRough>
      </div>
      <div hidden={!switchRough}>
        <ReactRough renderer="svg" config={{options:{seed: 2 * seed, ...globalOptions, ...options}}} width={width} height={height}>
          {children}
        </ReactRough>
      </div>
    </div>
  )
}