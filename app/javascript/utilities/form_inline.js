document.addEventListener('turbolinks:load', function() {
  
  var controls = document.querySelectorAll('.form-inline-link')

  if (controls.length) {
    for (var i = 0; i < controls.length; i++) {
      controls[i].addEventListener('click', formInlineLinkHandler)
    }
  }

  var errors = document.querySelector('.resource_errors')

  if (errors) {
    var resourceId = errors.dataset.resourceId
    formInlineHandler(resourceId)
  }
})

function formInlineLinkHandler(event) {
  event.preventDefault()
  var testId = this.dataset.testId
  formInlineHandler(testId)
}

function formInlineHandler(testId) {
  var link = document.querySelector(`.form-inline-link[data-test-id="${testId}"]`)
  var testTitle = document.querySelector(`.test-title[data-test-id="${testId}"]`)
  var formInline = document.querySelector(`.form-inline[data-test-id="${testId}"]`)

  if (formInline.classList.contains('hide')) {
    testTitle.classList.add('hide')
    formInline.classList.remove('hide')
    formInline.classList.add('d-flex')
    link.textContent = i18n.t('form.cancel')
  } else {
    testTitle.classList.remove('hide')
    formInline.classList.remove('d-flex')
    formInline.classList.add('hide')
    link.textContent = i18n.t('form.edit')
  }
}