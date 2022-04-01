import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["favoritesb", "favoritesr"]

  connect() {
    console.log("connected");
  }

  unfav(event) {
    console.log("unfav");
    // event.preventDefault() //?


    // this.favoritesrTarget.classList.remove("pulse-like-red");
    // this.favoritesrTarget.classList.add("pulse-like-blue");

  }

  fav(event) {
    console.log("fav");
    // event.preventDefault() //?


    // this.favoritesbTarget.classList.remove("pulse-like-blue");
    // this.favoritesbTarget.classList.add("pulse-like-red");

  }
}
// tout enlever et faire avec le redirect to scrollY ?!
