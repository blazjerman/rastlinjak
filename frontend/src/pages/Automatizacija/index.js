import React from 'react'
import AddAutomatizacija from '../../components/AddAutomatizacija'
import Automatizacije from '../../components/Automatizacije'
import './style.css'
function Automatizacija() {
  return (
    <div  className='automatizacije'>
      <AddAutomatizacija/>
      <Automatizacije/>
    </div>
  )
}

export default Automatizacija