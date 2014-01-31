class MainRouter extends Backbone.Router
  routes:
    '': 'index'

  index: ->
    Index = require 'components/index'
    index = React.renderComponent new Index(), $('#hello')[0]

module.exports = new MainRouter()