IndexComponent = require 'components/index'

describe "Index component", ->
  it "should print Hello World", ->
    test = ReactTestUtils.renderIntoDocument el = new IndexComponent
    console.log(test)
    assert.equal 'Hello World', el._renderedComponent.props.children
