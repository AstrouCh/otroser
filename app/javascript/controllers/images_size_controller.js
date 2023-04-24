import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="images-size"
export default class extends Controller {
  connect() {
    this.element.onload = () => {
      if (this.element.naturalWidth > this.element.naturalHeight) {
        this.element.classList.add("horizontal")
      }
    }
  }
}
