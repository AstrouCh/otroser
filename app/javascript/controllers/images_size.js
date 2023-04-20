import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.element.textContent = "Hello World!"
  }

  console.log("Hello");
  readonly element = document.querySelector('#big-images');

  readonly imagesSize = () => {
    if (this.element.naturalWidth > this.element.naturalHeight) {
      element.classList.add("vertical");
    } else {
      element.classList.add("horizontal");
    }
  console.log(element);
  }

}

// replaced 'const' by 'readonly' to avoid an error message
