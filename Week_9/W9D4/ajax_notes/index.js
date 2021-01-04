const newGifAJAX = query => {
  return $.ajax({
    method: "GET",
    url: `https://api.giphy.com/v1/gifs/random?tag=${query}&api_key=9IfxO6R6fpEZMAdqdw66QUgQdPejVIAW&rating=G`,
    // success: response => { 
    //   console.log(response);
    //   console.log(response.data.image_url); 
    // },
    success: gif => appendGifToUL(gif.data.image_url),
  });
};

// console.log(request);

const setupGifFormListener = () => {
  $(".gif-search-form").submit((e) => {
    e.preventDefault();
    const $input = $(".gif-search-input");
    const query = $input.val();
    newGifAJAX(query);
  });
};

const appendGifToUl = gifURL => {
  const $ul = $(".gif-index");
  $ul.empty();
  const $img = $(`<img src=${gifURL} />`);
  $ul.append($img);
};

$(() => {
  setupGifFormListener();
});

// const request = newGifAJAX('dog');