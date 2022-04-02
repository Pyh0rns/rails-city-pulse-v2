import { Controller } from "@hotwired/stimulus"
import { csrfToken } from "@rails/ujs" // pas sur d'avoir besoin

export default class extends Controller {
  static targets = ["counter", "btn"]

  connect() {
    console.log("like controller connected");
    // console.log(this.counterTarget)
  }

  fav(event) {
    event.preventDefault();
    // -------- tests ---------
    // console.log("fav")
    // console.log("target", this.counterTarget)
    // console.log("btn", this.btnTarget)
    // console.log("btn", this.btnTarget.href) -----> yeah!! un lien => http://localhost:3000/pulses/16/favorites

    // -------- fetch ---------

    // d'abord définir l'url
    const url = this.btnTarget.href

    // changer la valeur du counter
    fetch(url, {
      method: "POST",
      headers: { "Accept": "application/json", "X-CSRF-Token": csrfToken() },
      // body: new FormData(this.formTarget)
    })
      .then(response => response.json())
      .then((data) => {
        console.log(data)
      })
  }







  unfav(event) {
    event.preventDefault();


  }
}
