import React, { Component }from 'react';
import { Link } from 'react-router';
import rooms from '../data/rooms.js'

class RoomShow extends Component {
  render(){
    const imageStyles = { maxWidth: '500px', maxHeight: '400px' }
    const divStyles= {paddingLeft: '50px', paddingTop: '50px'}
    const currentRoom = this.props.params.roomName;
    const { name, image, description } = rooms[currentRoom];//this.state.currentRoom;
    let nextRoom = rooms[currentRoom].nextRoom ? `/rooms/${rooms[currentRoom].nextRoom}` : "/"
    return (
      <div style={divStyles} className="room_show">
        <img style={ imageStyles } alt="room" src={image} />
        <h3>{ name }</h3>
        <p>{ description }</p>
        <Link to={`${nextRoom}`}> Next Room </Link>
      </div>
    );
  }
}

export default RoomShow;
