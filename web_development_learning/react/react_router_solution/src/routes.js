import React from 'react';
import { Route, IndexRoute } from 'react-router';
import App from './components/App';
import Home from './components/Home';
import About from './components/About';
import RoomShow from './components/RoomShow';
import ButlersShow from './components/ButlersShow';
import GalleryShow from './components/GalleryShow';

export default(
  <Route path="/" component={App}>
    <IndexRoute component={Home} />
    <Route path="/about" component={About} />
    <Route path="/gallery" component={GalleryShow} />
    <Route path="/butlers/:butlerName" component={ButlersShow} />
    <Route path="/rooms/:roomName" component={RoomShow} />
  </Route>
);


