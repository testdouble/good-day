window.App = Ember.Application.create()

App.ApplicationAdapter = DS.ActiveModelAdapter
App.ApplicationSerializer = DS.ActiveModelSerializer

App.Timesheet = DS.Model.extend
  entries: DS.hasMany('entry')
  year: DS.attr('number')
  week: DS.attr('number')

App.Entry = DS.Model.extend
  timesheet: DS.belongsTo('timesheet')
  amount: DS.attr('string') #=> "full", "half", "none"

App.Router.map ->
  @resource "timesheets", ->
    @resource "timesheet", path: ":timesheet_id"

App.IndexRoute = Ember.Route.extend
  redirect: ->
    @transitionTo("timesheets")

App.TimesheetsIndexRoute = Ember.Route.extend
  redirect: ->
    @transitionTo("timesheet", "latest")

App.TimesheetRoute = Ember.Route.extend
  model: (params) ->
    @store.find('timesheet', params["timesheet_id"])

  afterModel: (model) ->
    @transitionTo('timesheet', model.get('id'))

App.TimesheetController = Ember.ObjectController.extend
  entryAmounts: ["full", "half", "none"]
