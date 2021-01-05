import React from "react";

import Counts from "./counts";

class ClickCounter extends React.Component {
    
    constructor(props) {
        super(props);
        this.state = {
            count: 0,
            previousCounts: []
        };

        // Optionally, binding can happen here, instead of the render function.
        this.handleClick = this.handleClick.bind(this);
        this.reset = this.reset.bind(this);
    }

    render(){
        return(
            <div>
                <button onClick={this.handleClick}>Click me!!!</button>
                <span> {this.state.count} </span>
                <br /><br/>
                <button onClick={this.reset}>Reset</button>
                <Counts props={this.state.previousCounts} />
            </div>
        );
    }

    componentWillMount(){
        // Runs before the component is mounted to the parent element.
    }

    componentDidMount(){
        // Runs after the component is mounted to the parent element.
    }

    componentWillReceiveProps(nextProps){
        // Launches if the component is going to receive props.
        // nextProps contains the next props.
    }

    componentWillUpdate(nextProps, nextState){
        // Runs when the component is about to update.
        // Args have next properties, and the new state.
    }

    componentDidUpdate(prevProps, prevState){
        // The component updated, and the previous props and state are the args.
    }

    componentWillUnmount(){
        // Component is about to be unmounted from the dom.
    }

    handleClick(e){
        e.preventDefault();
        this.setState({ count: this.state.count + 1 });
    }

    bind(e){
        e.preventDefault();
        const previousCounts = this.state.previousCounts;
        previousCounts.push( this.state.count );
        this.setState({
            count: 0,
            previousCounts
        });
    }

}

export default ClickCounter;