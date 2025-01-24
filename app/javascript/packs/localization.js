import { I18n } from "i18n-js"
import translations from "../locales.json"

document.addEventListener('turbolinks:load', function() {
  const i18n = new I18n(translations)
  i18n.locale = document.querySelector('body').dataset.locale
  window.i18n = i18n
})