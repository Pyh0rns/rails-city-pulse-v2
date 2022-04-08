import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["bannerdiv", "cross"]

  hide(event) {
    event.preventDefault()
    console.log("click")
    this.bannerdivTarget.classList.add('d-none')
  }

}
