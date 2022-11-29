import React, { useState, useEffect, createContext, useContext } from 'react';

const RoughContext = createContext(null);

export function RoughProvider({ children, toggleDelay = 200 }) {
  const [roughToggle, setRoughToggle] = useState(false);

  let timer;
  const setToggleInterval = () => {
    timer = !timer && setInterval(() => {
      setRoughToggle(prev => !prev);
    }, toggleDelay);
  };

  useEffect(() => {
    setToggleInterval();

    return () => clearInterval(timer);
  })

  return (
    <RoughContext.Provider value={roughToggle}>
      {children}
    </RoughContext.Provider>
  );
}

export function useRoughContext() {
  return useContext(RoughContext);
}
