import { combineReducers } from 'redux';
import cdlJsonReducer from './workspace/editor/reducer';

export default combineReducers({
  cdlJson: cdlJsonReducer
});
