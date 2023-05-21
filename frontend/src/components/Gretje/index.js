import React, {useState} from 'react'

function Gretje() {
    const [value, setValue] = useState(10);
  
    const formatTime = (value) => {
      return 8 * value + 160
    };
  
    const clockStyle = {
      position: 'relative',
      width: '300px',
      height: '300px',
      border: '2px solid black',
      borderRadius: '50%',
      display: 'flex',
      alignItems: 'center',
      justifyContent: 'center',
      fontFamily: 'Arial, sans-serif',
      fontSize: '20px',
      fontWeight: 'bold',
    };
  
    const handStyle = {
      position: 'absolute',
      left: '50%',
      top: '50%',
      transformOrigin: 'center bottom',
      backgroundColor: 'black',
      transition: 'transform 0.2s ease-in-out',
    };
  
    const minuteHandStyle = {
      ...handStyle,
      width: '3px',
      height: '120px',
      marginLeft: '-1.5px',
      marginTop: '-120px',
      transform: `rotate(${formatTime(value)}deg)`,
    };
  
    const renderNumbers = () => {
      const numbers = [];
      for (let i = 10; i <= 40; i+=5) {
        numbers.push(
          <div
            key={i}
            style={{
              position: 'absolute',
              paddingBottom:'100px',
              paddingLeft:'15px',
              paddingRight:'15px',
              transform: `rotate(${8 * i + 160}deg) translateY(-120px)`,
            }}
            onClick={() => setValue(i)}
          >
            {i}
          </div>
        );
      }
      return numbers;
    };
  
    return (
        <div style={{textAlign:'center'}}>
            <div className="wall-clock" style={clockStyle}>
                <div className="minute-hand" style={minuteHandStyle}></div>
                {renderNumbers()}
            </div>
            Gretje
        </div>
    );
}

export default Gretje