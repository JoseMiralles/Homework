Array.prototype.quickSort = function(callback){
    if (this.length <= 1) return this;

    if (!callback) callback = function(n1, n2){
        if (n1 < n2) return -1;
        if (n1 > n2) return 1;
        return 0;
    }

    const pivot = this[0];
    let left = [];
    let right = [];

    for(let i = 1; i < this.length; i++){
        if (callback(pivot, this[i]) === -1){
            right.push(this[i]);
        } else {
            left.push(this[i]);
        }
    }

    left = left.quickSort(callback);
    right = right.quickSort(callback);

    return left.concat([pivot]).concat(right);
}

// console.log( [5,8,3,2,4,4,6,7].quickSort() );


