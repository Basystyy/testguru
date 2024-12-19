document.addEventListener('turbolinks:load', function() {
  var control = document.querySelector('.sort-by-title')

  if (control) { control.addEventListener('click', sortRowsByTitle) }
})

function sortRowsByTitle() {
  var table = document.querySelector('tbody')

  var rows = Array.from(table.querySelectorAll('tr'))
  var header = rows.shift()
  var sortedRows = []

  if (this.querySelector('.octicon-arrow-up').classList.contains('hide')) {
    sortedRows = rows.sort(compareRowsAsc)
    this.querySelector('.octicon-arrow-up').classList.remove('hide')
    this.querySelector('.octicon-arrow-down').classList.add('hide')
  } else {
    sortedRows = rows.sort(compareRowsDesc)
    this.querySelector('.octicon-arrow-down').classList.remove('hide')
    this.querySelector('.octicon-arrow-up').classList.add('hide')
  } 

  table.innerHTML = ''
  table.appendChild(header)
  for (var i = 0; i < sortedRows.length; i++) {
    table.appendChild(sortedRows[i])
  }

}

function compareRowsAsc(row1, row2) {
  var testTile1 = row1.querySelector('td').textContent
  var testTile2 = row2.querySelector('td').textContent

  if (testTile1 < testTile2) { return -1 }
  if (testTile1 > testTile2) { return 1 }
return 0
}

function compareRowsDesc(row1, row2) {
  var testTile1 = row1.querySelector('td').textContent
  var testTile2 = row2.querySelector('td').textContent

  if (testTile1 < testTile2) { return 1 }
  if (testTile1 > testTile2) { return -1 }
return 0
}