import { Controller } from "@hotwired/stimulus"


export default class extends Controller {
  static targets = ["pulsecontentrightdiv", "btn"]

  connect() {
    console.log("like controller connected");
  }

  fav(event) {
    event.preventDefault();

    // console.log("div", this.pulsecontentrightdivTarget.dataset)
    // console.log("btn", this.btnTarget.dataset)
    console.log("btn", this.btnTarget.dataset);


    // fetch(this.btnTarget.action, {
    //   method: "POST",
    //   headers: { "Accept": "application/json" },
    // })
    //   .then(response => response.json())
    //   .then((data) => {
    //     console.log(data)
    //   })

  }

  unfav(event) {
    event.preventDefault();

    // console.log("div", this.pulsecontentrightdivTarget.dataset);
    console.log("btn", this.btnTarget.dataset.pathAction);

    // fetch(this.btnTarget.action, {
    //   method: "DELETE",
    //   headers: { "Accept": "application/json" },
    // })
    //   .then(response => response.json())
    //   .then((data) => {
    //     console.log(data)
    //   })

  }


}
