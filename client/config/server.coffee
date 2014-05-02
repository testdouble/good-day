module.exports =
  drawRoutes: (app) ->
    app.get '/timesheets/:timesheet_id', (req, res) ->
      res.json
        timesheets: [
          id: 1
          year: 2014
          week: 5
          entry_ids: [2, 3, 4, 5, 6]
        ]
        entries: [
            id: 2
            amount: "full"
          ,
            id: 3
            amount: "none"
          ,
            id: 4
            amount: "half"
          ,
            id: 5
            amount: "full"
          ,
            id: 6
            amount: "full"
        ]
