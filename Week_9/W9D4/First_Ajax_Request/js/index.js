// console.log("Hello from the JavaScript console!");

// Your AJAX request here
$.ajax({
    method: "GET",
    url: "http://api.openweathermap.org/data/2.5/weather?q=new%20york,US&appid=bcb83c4b54aee8418983c2aff3073b3b",
    dataType: "json",
    // success: function(r){
    //     console.log(Object.values(r.weather[0]).toString());
    // },
    error: ()=>{console.log("Failed")}
}).then(function(r){console.log(Object.values(r.weather[0]).toString());});

// Add another console log here, outside your AJAX request
console.log("After the AJAX request.");