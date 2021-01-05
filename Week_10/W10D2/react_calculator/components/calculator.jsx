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
    }

    render(){
        return(
            <div>
                <input onChange={this.handleChange} type="text" name="num1"/>
                <br/><br/>
                <input onChange={this.handleChange} type="text" name="num2"/>
                <br/><br/>
                <h1>{ this.state.result }</h1>
            </div>
        );
    }

    handleChange(e){
        this.setState({ [e.target.name]: e.target.value });
    }
}