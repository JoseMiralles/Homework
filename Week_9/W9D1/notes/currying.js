function normalAddThreeNumbers(n1,n2,n3){
    return n1 + n2 + n3;
}

function addThreeNumbers(num1){
    return function(num2){
        return function(num3){
            return num1 + num2 + num3;
        }
    }
}

// const first = addThreeNumbers(1);
// const second = first(2);
// const third = second(3); // third = 6 = 1 + 2 + 3
// console.log(third); // 6

function continousAdd(){
    const args = [];
    return function _curriedAdd(num){
        args.push(num);
        console.log(args.reduce( (acc, el) => {return acc + el} ));
        return _curriedAdd;
    }
}

const calc = continousAdd();
calc(1); // 1
calc(2); // 3
calc(3); // 6

// This is the same functionality, but using a "class"
function continousAdd(){
    this.args = [];
    this._curriedAdd = function(num){
        this.args.push(num);
        console.log(this.args.reduce( (acc, el) => {return acc + el} ));
    }
}

const calc = new continousAdd();
calc._curriedAdd(1);
calc._curriedAdd(2);
calc._curriedAdd(3);