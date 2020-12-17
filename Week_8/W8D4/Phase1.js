function titelize (arr, callback){
    return arr.map((x) => {
        let t = `Mx. ${x} Jingleheimer Schmidt.`;
        callback(t);
        return t;
    });
}
console.log(titelize(["Mary", "Brian", "Leo"], (x) => {
    console.log(x);
}));