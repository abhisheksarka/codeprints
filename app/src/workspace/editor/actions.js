const cdlJsonLoad = (payload = {}) => {
  return { type: 'CDL_JSON_LOAD', payload: payload }
}

export {
  cdlJsonLoad
};
