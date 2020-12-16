function mysteryScoping1() {
    var x = 'out of block';
    if (true) {
        x = 'in block';
        console.log(x);
    }
    console.log(x);
}

function mysteryScoping2() {
    var x = 'out of block';
    if (true) {
        x = 'in block';
        console.log(x);
    }
    console.log(x);
}

function mysteryScoping3() {
    var x = 'out of block';
    if (true) {
        x = 'in block';
        console.log(x);
    }
    console.log(x);
}

function mysteryScoping4() {
    var x = 'out of block';
    if (true) {
        x = 'in block';
        console.log(x);
    }
    console.log(x);
}

function mysteryScoping5() {
    var x = 'out of block';
    if (true) {
        x = 'in block';
        console.log(x);
    }
    x = 'out of block again';
    console.log(x);
}

mysteryScoping1()
mysteryScoping2()
mysteryScoping3()
mysteryScoping4()
mysteryScoping5()