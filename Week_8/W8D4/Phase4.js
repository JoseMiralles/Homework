function dinerBreakfast(x = "I'd like cheesy scrambled eggs"){
    this.order = x;
    console.log(this.order + " please.");
    
    return function(y) {
        this.order += " and " + y;
        console.log(this.order + " please.");
    }
}

let bfastOrder = dinerBreakfast();
bfastOrder("chocolate chip pancakes");
bfastOrder("grits");