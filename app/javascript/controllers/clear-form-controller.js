import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  clear(event) {
    event.preventDefault();
    const inputs = this.element.elements

    for (var i = 0; i < inputs.length; i++) {
      if (inputs[i].type === "select-one") {
        inputs[i].selectedIndex = 0;
      }
    }

    this.element.requestSubmit();
  }
}
