import { Controller } from "@hotwired/stimulus"
import { csrfToken } from "@rails/ujs"

export default class extends Controller {
  static targets = ["divtochange", "btnfav", "btnunfav"]

  fav(event) {
    event.preventDefault(); // pas besoin mais on sait jamais

    const url = this.btnfavTarget.href

    fetch(url, {
      method: "POST",
      headers: { "Accept": "application/json", "X-CSRF-Token": csrfToken() },
    })
      .then(response => response.json())
      .then((data) => {
        this.divtochangeTarget.innerHTML = data.inserted_item;
      })
 }

  unfav(event) {
    event.preventDefault(); // pas besoin mais on sait jamais
    const url = this.btnunfavTarget.href

    fetch(url, {
      method: "DELETE",
      headers: { "Accept": "application/json", "X-CSRF-Token": csrfToken() },
    })
      .then(response => response.json())
      .then((data) => {
        this.divtochangeTarget.innerHTML = data.inserted_item;
      })


  }
}
