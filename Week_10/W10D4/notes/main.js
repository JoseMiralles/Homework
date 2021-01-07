// Changes the value of the current song.
const currentlyPlayingReducer = (oldMedia, action) => {
    Object.freeze(oldMedia); // Prevent oldMedia from being changed.
    switch(action.type){
        case "SWITCH_SONG":
            return action.newSong;
        break;

        case "STOP_SONG":
            return null;
        break;

        default: return oldMedia;
    }
}

let songState = {
    currentSong: "Darude - Sandstorm"
};

// const action = {
//     type: "SWITCH_SONG",
//     newSong: "Depacito"
// }
/// Better approach.

// This method returns a SWITCH_SONG item.
const switchSong = (newSong) => ({
    type: "SWITCH_SONG",
    newSong
});

store.dispatch(switchSong("Despacito."));