import { useState, useEffect, createContext, useContext } from 'react';

const RoughContext = createContext(null);

export function RoughProvider({ children }) {
  const [switchRough, setSwitchRough] = useState(false)

  let timer
  const updateSwitch = () => {
    timer = !timer && setInterval(() => {
      setSwitchRough(prevSwitch => !prevSwitch)
    }, 200)
  }

  useEffect(() => {
    updateSwitch()
  
    return () => clearInterval(timer)
  })

  return (
    <RoughContext.Provider value={switchRough}>
        {children}
    </RoughContext.Provider>
  );
}

export function useRoughContext() {
  return useContext(RoughContext);
}
