import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["formaddpic", "formaddbio"]

  displayformpic(event) {
    event.preventDefault()
    this.formaddpicTarget.classList.toggle("d-none")
  }


  displayformbio(event) {
    event.preventDefault()
    this.formaddbioTarget.classList.toggle("d-none")
  }
}
