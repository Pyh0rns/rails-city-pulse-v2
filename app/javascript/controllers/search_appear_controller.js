import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["searchdiv", "loupe"]

  search(event) {
    event.preventDefault()
    this.searchdivTarget.classList.toggle('d-none')
  }

}
