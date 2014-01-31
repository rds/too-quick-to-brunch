exports.BackboneMixin =
  syncedModels: []

  getModels: ->
    @models or []

  componentDidMount: ->
    @getModels().forEach this.injectModel, @

  componentWillUnmount: ->
    @syncedModels.forEach (model) =>
      model.off null, model.__updater, @

  injectModel: (model) ->
    if !~this.syncedModels.indexOf model
      updater = this.forceUpdate.bind @, null
      model.__updater = updater
      model.on 'add change remove', updater, @

  bindTo: (model, key) ->
    value: model.get(key),
    requestChange: (value) => model.set key, value

# var Hello = React.createClass({
#     mixins:[ModelMixin],
#     getBackboneModels: function(){
#         return [this.props.instance]
#     },
#     render: function() {
#         return <div>
#                 <div>Hello {this.props.instance.get('initial')}</div>
#             <input type="text" valueLink={this.bindTo(this.props.instance, 'initial')}/> 
#         </div>;
#     }
# });