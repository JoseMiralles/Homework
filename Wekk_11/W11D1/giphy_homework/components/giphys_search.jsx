import React from 'react';

import GiphysIndex from './giphys_index';

export default class GiphysSearch extends React.Component {

    constructor(props) {
        super(props)

        this.state = {
            searchTerm: ""
        }

        this.handleChange = this.handleChange.bind(this);
        this.handleSubmit = this.handleSubmit.bind(this);
    }

    handleChange(e){
        const name = e.target.name;
        this.setState({
            [name]: e.target.value
        });
    }

    handleSubmit(e){
        e.preventDefault();
        this.props.fetchSearchGiphys(
            this.state.searchTerm
        )
    }

    render() {
        return (
            <div>
                <div>
                    <form action="">
                        <label htmlFor="search-box">Search: </label>
                        <input name="searchTerm" onChange={this.handleChange} type="text" id="search-box" />
                        <button onClick={this.handleSubmit}>search</button>
                    </form>
                </div>
                <div>
                    {this.props.giphys.map( url => <img src={url}/> )}
                </div>
            </div>
        );
    }

}