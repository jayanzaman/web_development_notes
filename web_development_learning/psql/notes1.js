app.get('/buildings/:id', function(req, res) {
    var id = req.params.id;
    db.many("SELECT buildings.name * FROM buildings JOIN apartments ON buildings.id = apartments.building_id WHERE buildings.id = $1 ORDER BY apartments.name ASC;", id).then(function(data) {
        var json_data = {
            name: data[0].building_name,
            build: data[0].building_id,
            address: data[0].address,
            floors: data[0].num_floors,
            building: data
        };
        res.render('views_single_building', json_data)
    })
})
