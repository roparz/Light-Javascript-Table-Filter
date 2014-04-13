LightTableFilter = do ->

    _input = null

    _onInputEvent = (e) =>
        _input = e.target
        tables = document.getElementsByClassName(_input.getAttribute('data-table'))
        for table in tables
            for tbody in table.tBodies
                _filter(row) for row in tbody.rows
        return

    _filter = (row) ->
        text = row.textContent.toLowerCase()
        vals = _input.value.toLowerCase().split(' ')
        len = vals.length
        n = 0
        n++ for val in vals when text.indexOf(val) isnt -1
        row.style.display = if n is len then 'table-row' else 'none'

    return init : ->
        inputs = document.getElementsByClassName('light-table-filter')
        input.oninput = _onInputEvent for input in inputs
