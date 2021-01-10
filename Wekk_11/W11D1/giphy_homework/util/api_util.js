import { giphyKey } from "../keys";

export const fetchSearchGiphys = ( searchTerm ) => {
    const url = `http://api.giphy.com/v1/gifs/search?q=${searchTerm}&api_key=${giphyKey}&limit=2`;
    return $.ajax({
        method: "GET",
        url: url
    });
}