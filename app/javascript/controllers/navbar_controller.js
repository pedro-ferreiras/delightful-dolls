import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  static targets = ["items"]

  connect() {
  }

  updateNavbar() {
    if (window.pageYOffset >= this.itemsTarget.offsetTop) {
      this.itemsTarget.classList.add("sticky")
    } else {
      this.itemsTarget.classList.remove("sticky");
    }
  }
}
