import React, { Component } from 'react';


class MikosComponent extends Component {
  render() {
    return (
      <div>
        <h1>{this.props.text} </h1>
        <input onChange={(event) => { this.props.updateText(event.target.value)} } />
      </div>
    );
  }
}

export default MikosComponent;
