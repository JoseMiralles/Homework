function timeOut(){
    window.setTimeout(() => {
        alert("HAMMERTIME");
    }, 5000);
}
// timeOut();

function hammerTime(time){
    window.setTimeout(function() {
        alert(`${time} is hammertime!`);
    }, time);
}
// hammerTime(1000);