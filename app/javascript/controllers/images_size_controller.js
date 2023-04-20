import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="images-size"
export default class extends Controller {
  static targets = ["image"]

  connect() {
    console.log("hello")
    this.imageTargets.forEach(image => {
      if (image.naturalWidth > image.naturalHeight) {
        image.classList.add("horizontal")
      }
    })
  }
}
