import React from 'react'
import Drops from '../../components/Drops'
import Lights from '../../components/Lights'
import Gretje from '../../components/Gretje'

import './style.css'

function index() {
  return (
    <div className='upravnjanje_container'>
      <div className='luci_zalivanje'>
        <Lights />
        <Drops />
      </div>
      <div className='gretje'>
      <Gretje/>
      </div>
    </div>
  )
}

export default index