import React, { Component } from 'react';
import gallery from '../data/gallery'

class GalleryShow extends Component {
  constructor(){
    super();
    this.state = {
      gallery: gallery
    }
  }

  renderGallery(){
    const imgStyles={maxWidth: '400px', maxHeight: '400px'}
    return this.state.gallery.map(mytko => {
      return(
        <div key={mytko.img}>
          <p>{mytko.desc}</p>
          <img alt="mytko" style={imgStyles} src={mytko.img} />
          <hr/>
          <br/><br/>
        </div>
      )
    })
  }

  render() {
    const divStyle={paddingLeft: '50px'};
    return (
      <div style={divStyle}>
        <h3>The Gallery</h3>
        { this.renderGallery() }
      </div>
    );
  }
}

export default GalleryShow;
