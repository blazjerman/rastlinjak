import React from 'react'
import { useEffect } from 'react'
import { useState } from 'react'
import {allAutomatizacije} from '../../services/DataLayer/GetAllAutomations'
import {deleteAutomatizacija} from '../../services/DataLayer/DeleteAutomation'
import './style.css'

function Automatizacije() {
    const [automatizacije, setAutomatizacije] = useState([])

    const getAutomatizacije = async () => setAutomatizacije(await allAutomatizacije())
    
    useEffect(() => {
        getAutomatizacije()
    },[])
  return (
    <div>
        <h2>Moje automatizacije</h2>
        {automatizacije.map(automatizacija => (
            <div className='automatizacija'>
              <div>Every {automatizacija.cron_string} turn {automatizacija.action} on pin {automatizacija.pin}</div> 
              <div className='deleteAutomatization' onClick={ async () => {
                await deleteAutomatizacija(automatizacija.id)
                window.location.reload()
              }}>delete</div>
            </div>
        ))}
    </div>
  )
}

export default Automatizacije