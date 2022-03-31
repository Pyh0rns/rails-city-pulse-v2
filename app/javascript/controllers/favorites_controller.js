import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["favoritesb", "favoritesr", "favoritescount"]

  connect() {
    console.log("connected");
  }

  unfav() {
    console.log("unfav");
    event.preventDefault()


    this.favoritesrTarget.classList.remove("pulse-like-red");
    this.favoritesrTarget.classList.add("pulse-like-blue");

    // a remplacer par le bon nombre
    this.favoritescountTarget.innerText = "0";
  }

  fav() {
    console.log("fav");
    event.preventDefault()


    this.favoritesbTarget.classList.remove("pulse-like-blue");
    this.favoritesbTarget.classList.add("pulse-like-red");

    // a remplacer par le bon nombre
    this.favoritescountTarget.innerText = "1";
  }
}
// test
