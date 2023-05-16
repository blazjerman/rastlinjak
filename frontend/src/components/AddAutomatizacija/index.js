import React from 'react'
import {addAutomatizacija} from '../../services/DataLayer/AddAutomation'
import './style.css'
function AddAutomatizacija() {


    const submit = async (e) => {
        e.preventDefault()
        const count = document.getElementById('count').value
        const time = document.getElementById('time').value
        const action = document.getElementById('action').value
        const pin = document.getElementById('pin').value
        const interval = document.getElementById('interval').value
        await addAutomatizacija({count, time, action, pin, interval})
        window.location.reload();
    }

  return (
    <div>
    <h2>Ustvari Avtomatizacijo</h2>
    <form className='addAutomatizationForm' onSubmit={submit}>
          <div>
              <label htmlFor="count">Every:</label>
              <input
                  className='input'
                  id="count"
                  type="number"
                  name="count"
                  placeholder="count"
                  required
                  autoComplete="off" />
          </div>
          <div>
              <label htmlFor="interval">Interval:</label>
              <select id="interval" className='input'>
                  <option label=""></option>
                  <option value="HOURS">Hours</option>
                  <option value="DAYS">Days</option>
                  <option value="WEEKS">Weeks</option>
              </select>
          </div>
          <div>
              <label htmlFor="time">At:</label>
              <input
                  className='input'
                  id="time"
                  type="time"
                  name="time"
                  placeholder="time"
                  required
                  autoComplete="off" />
          </div>
          <div>
              <label htmlFor="action">Do:</label>
              <select id="action" className='input'>
                  <option label=" "></option>
                  <option value="on">Turn On</option>
                  <option value="off">Turn Off</option>
              </select>
          </div>
          <div>
              <label htmlFor="pin">On pin:</label>
              <input
                  min="0" 
                  max="2"
                  className='input'
                  id="pin"
                  type="number"
                  name="pin"
                  placeholder="pin"
                  required
                  autoComplete="off" />
          </div>
          <input className='ustvari' type='submit' value='Ustvari' />
      </form>
      </div>
  )
}

export default AddAutomatizacija