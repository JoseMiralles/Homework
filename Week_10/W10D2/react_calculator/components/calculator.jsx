import React from "react";

export default class Calcualtor extends React.Component{
    constructor(props){
        super(props);

        this.state = {
            result: 0,
            num1: "",
            num2: ""
        };

        // bind functions
        this.handleChange = this.handleChange.bind(this);
        this.doMaths = this.doMaths.bind(this);
        this.resetCalc = this.resetCalc.bind(this);
    }

    render(){
        const { handleChange, state, doMaths, resetCalc } = this;
        return(
            <div>
                <input onChange={handleChange} value={state.num1} type="number" name="num1"/>
                <br/><br/>
                <input onChange={handleChange} value={state.num2} type="number" name="num2"/>
                <br/><br/>
                <button onClick={doMaths}>+</button>
                <button onClick={doMaths}>/</button>
                <button onClick={doMaths}>*</button>
                <button onClick={doMaths}>-</button>
                <br/><br/>
                <h1>{ state.result }</h1>
                <br/>
                <button onClick={resetCalc}>Clear / Reset</button>
            </div>
        );
    }

    // Handles the change for both input fields, dynamically.
    // e.target.name referes to the name="num1" attribute from the <input /> tags.
    handleChange(e){
        // [e.target.name] can be num1 or num2, depending on which input field called this method.
        this.setState({ [e.target.name]: e.target.value });
    }

    // This method handles all of the buttons.
    // It uses eval("1 + 2") to evaluate math from a string.
    doMaths(e){
        e.preventDefault();
        // Leave the function if num1 or num2 are undefined, to avoid errors.
        // TODO: ensure that they are numbers.
        if (!this.state.num1 || !this.state.num2) return;
        const operator = e.target.innerText; // This gets the text from the button. EX: +,*,-
        // This is where a operation string gets constructed to look like: "2 + 4" or "2 / 3"
        const res = eval(
            `${this.state.num1} ${operator} ${this.state.num2}`
        );
        this.setState({result: res});
    }

    resetCalc(e){
        this.setState({
            num1: "",
            num2: "",
            result: 0
        });
    }
}