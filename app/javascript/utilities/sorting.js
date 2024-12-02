document.addEventListener('turbolinks:load', function() {
  var control = document.querySelector('.sort-by-title')

  if (control) { control.addEventListener('click', sortRowsByTitle) }
})

function sortRowsByTitle() {
  var table = document.querySelector('tbody')

  var rows = Array.from(table.querySelectorAll('tr'))
  var header = rows.shift()
  var sortedRows = []

  sortedRows = rows.sort(compareRows)

  table.innerHTML = ''
  table.appendChild(header)
  for (var i = 0; i < sortedRows.length; i++) {
    table.appendChild(sortedRows[i])
  }

}

function compareRows(row1, row2) {
  var testTile1 = row1.querySelector('td').textContent
  var testTile2 = row2.querySelector('td').textContent

  if (testTile1 < testTile2) { return -1 }
  if (testTile1 > testTile2) { return 1 }
return 0
}