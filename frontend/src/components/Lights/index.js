import React, { useEffect, useState } from 'react'
import { switchPin } from '../../services/DataLayer/SwitchPin'
import { microcontrollerOutputs } from '../../services/DataLayer/MicrocontrollerOutputs'
import './style.css'


function Light() {
  const [lights, setLights] = useState([
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

  const getLights = async () => console.log(microcontrollerOutputs())

  useEffect(() => {
    getLights()
  },[])


  const switchLight = async (id) => {
    await switchPin(id)
    setLights(lights.map(light => light.id === id ? {...light, state: !light.state} : light))
  }

  return (
    <div>
          <h3>Luci</h3>
          <div className='luci'>
            {lights.map(light => (
              <div key={light.id} className='luc'>
                {light.state ? 
                  <img onClick={() => switchLight(light.id)} className='light_bulb' alt='img_off' src='http://clipart-library.com/image_gallery2/Light-Bulb-PNG-File.png'/> :
                  <img onClick={() => switchLight(light.id)} className='light_bulb' alt='img_on' src='http://clipart-library.com/images_k/lightbulb-transparent/lightbulb-transparent-1.png'/>
                }
                luc {light.id}
              </div>
            ))}
          </div>
    </div>
  )
}

export default Light