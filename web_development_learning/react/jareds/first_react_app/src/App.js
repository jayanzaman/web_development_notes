import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';
import MikosComponent from './MikosComponent';
import TajsComponent from './TajsComponent';

class App extends Component {
  constructor(){
    super();
    this.state = {
      inputText: ''
    }
  }

  printStuff() {
    console.log('hi');
    console.log('its 2017')
  }

  updateText(val){
    this.setState({
        inputText: val
    })
    console.log('app.js', this.state)
  }

  render() {
    return (
      <div className="App">
        <div className="App-header">
          <img src={logo} className="App-logo" alt="logo" />
          <h2 onClick={ this.printStuff }>
            Welcome to React
            </h2>
        <MikosComponent updateText={this.updateText.bind(this)} text="hi this is now carsons component" />
        <TajsComponent text={this.state.inputText} />
        </div>
        <p className="App-intro">
          To get started, edit <code>src/App.js</code> and save to reload.
        </p>
      </div>
    );
  }
}

export default App;
