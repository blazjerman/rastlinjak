import { Chart } from 'react-charts'
import React from 'react'
import ResizableBox from "../ResizableBox";

function MyChart({data}) {

  const primaryAxis = React.useMemo(() => ({
      getValue: datum => datum.time,
    }),[]
  )

  const secondaryAxes = React.useMemo(() => [{
        getValue: datum => {
            return datum.value
        },
    },
    ],[]
  )
  return (
    <div className='chart'>
      <h1>{data[0].label}</h1>
      <ResizableBox>
        <Chart
          options={{
            data,
            primaryAxis,
            secondaryAxes,
          }}
        />
      </ResizableBox>
    </div>
  )
}

export default MyChart