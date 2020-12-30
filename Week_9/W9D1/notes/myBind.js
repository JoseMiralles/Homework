Function.prototype.myBind = function(ctx, ...bindArgs){
    const fn = this;

    return function(...callArgs){
        return fn.apply(ctx, bindArgs.concat(callArgs));
    }
}

function someFunc(color, isPokemon){
    console.log(`${this.name} says hello.\n It's ${isPokemon} that it's a pokemon.\nColor: ${color}`);
    return "pika!";
}

const pikachu = {name: "Pikachu"};
const boundFunc = someFunc.myBind(pikachu, "yelow");
boundFunc(true);