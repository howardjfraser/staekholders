import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "filterPanel" ]

  toggle(event) {
    event.preventDefault();

    this.filterPanelTarget.classList.toggle("hide");
  }
}
