import React, { useState } from 'react'
import './style.css'

function Drop() {

  const [drops, setDrops] = useState([
    {
      state:false,
      id:1,
      active: true
    },
    {
      state:false,
      id:2,
      active: true
    },
    {
      state:false,
      id:3,
      active: true
    }
  ])


  const switchZalivalnik = (id) => setDrops(drops.map(drop => drop.id === id ? {...drop, state: !drop.state} : drop))
  // 4,13,16
  
  return (
    <div>
      <h3>Zalivanje</h3>
      <div className='rain_drops'>
        {drops.map(rainDrop => (
          <div key={rainDrop.id} className='drop'>
            {rainDrop.state ? 
              <img onClick={() => switchZalivalnik(rainDrop.id)} className='rain_drop' alt='img_off' src='https://i.ibb.co/FKJCps2/image.png'/> :
              <img onClick={() => switchZalivalnik(rainDrop.id)} className='rain_drop' alt='img_on' src='https://www.kindpng.com/picc/m/52-526854_rain-drop-graphic-clipart-png-download-rain-drop.png'/>
            }
            Zalivalnik {rainDrop.id}
          </div>
        ))}
      </div>
  </div>
  )
}

export default Drop