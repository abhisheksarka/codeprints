const reducer = (state = {}, action = {}) => {
  const payload = action.payload;

  switch (action.type) {
    case 'CDL_JSON_LOAD': return payload
    default: return state
  }
}

export default reducer;
