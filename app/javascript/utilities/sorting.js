document.addEventListener('turbolinks:load', function() {
  var control = document.querySelector('.sort-by-title')

  control.addEventListener('click', sortRowsByTitle)
})

function sortRowsByTitle() {
  var table = document.querySelector('table')

  var rows = table.querySelectorAll('tr')
  var sortedRows = []

  for (var i = 1; i < rows.length; i++) {
    sortedRows.push(rows[i])
  }

  sortedRows.sort(compareRows)
}

function compareRows(row1, row2)
var testTile1 = row1/querySelector('td').textContent
var testTile2 = row2.querySelector('td').textContent