document.addEventListener('turbolinks:load', function() {

  const progressBar = document.querySelector('.progress-bar')
  if (progressBar) {
    const current = parseInt(progressBar.dataset.current, 10)
    const count = parseInt(progressBar.dataset.count, 10)
    if (count > 0) {
      const percentComplete = (current - 1) / count * 100
      progressBar.style.width = percentComplete + "%"
    }
  }

})