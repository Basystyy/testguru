import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  update(event) {
    event.preventDefault();

    const progressBar = document.querySelector(".progress-bar");
    const form = event.target;

    fetch(form.action, {
      method: form.method,
      body: new FormData(form),
      headers: {
        "X-Requested-With": "XMLHttpRequest"
      }
    })
    .then(response => response.json())
    .then(data => {
      const progressPercentage = data.progress;
      progressBar.style.width = `${progressPercentage}%`;
      progressBar.setAttribute("aria-valuenow", progressPercentage);
      progressBar.dataset.progress = progressPercentage;
      progressBar.querySelector(".progress-text").textContent = `${progressPercentage}%`;

      if (data.redirect_url) {
        window.location.href = data.redirect_url;
      }
    })
    .catch(error => console.error("Ошибка обновления прогресса:", error));
  }
}