import React, {Component} from 'react';

export class SingleRoom extends Component {
  state = {
    room: [],
    users: [],
    messages: [],
  }

  componentDidMount() {
    const productId = this.props.match.params.id;
    productRequest.getProductById(productId)
        .then((res) => {
            this.setState({ products: [res] });
        })
        .catch((err) => {
            console.error(err);
        });
  }

  render() {
    return (
      <div>
        <h1>Single Room</h1>
      </div>
    );
  }
}