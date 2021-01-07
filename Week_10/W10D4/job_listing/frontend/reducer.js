const initialState = {
  city: "Please Select", 
  jobs: []
};

const reducer = (state = initialState, action) => {
  Object.freeze(state);
  switch(action.type){
    case "SWITCH_LOCATION":
      const newState = {};
      Object.assign(newState, state);
      newState.city = action.city;
      newState.jobs = action.jobs;
      return newState;
    break;

    default: return state;
  }
};

export default reducer;
