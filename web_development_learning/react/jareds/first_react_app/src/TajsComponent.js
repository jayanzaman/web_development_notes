import React from 'react';

function TajsComponent(props){
  const currentColor = "purple"
  return (
    <span
      style={{"color": currentColor}} >
      {props.text}
    </span>
  )
}

export default TajsComponent;
