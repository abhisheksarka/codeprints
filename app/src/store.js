import { createStore } from 'redux';
import reducers from './reducers';

export default createStore(
  reducers, {
    cdlJson: {}
  },
  window.__REDUX_DEVTOOLS_EXTENSION__ && window.__REDUX_DEVTOOLS_EXTENSION__()
);
