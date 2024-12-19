document.addEventListener('turbolinks:load', function() {
  var confirmation = document.querySelector('.confirmation-input')
  var password = document.querySelector('.password-input') 

  if (confirmation && password) {
    confirmation.addEventListener('input', confirmPassword)
    password.addEventListener('input', confirmPassword)
  }
})

function confirmPassword () {

  var password_value = document.querySelector('.password-input').value
  var confirmation = document.querySelector('.confirmation')
  var confirmation_value = confirmation.querySelector('.confirmation-input').value

  if (password_value && password_value == confirmation_value) {
    confirmation.querySelector('.octicon-check').classList.remove('hide')
    confirmation.querySelector('.octicon-x').classList.add('hide')
  } else {
    confirmation.querySelector('.octicon-x').classList.remove('hide')
    confirmation.querySelector('.octicon-check').classList.add('hide')
  }
}