import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="payment"
export default class extends Controller {

  // Declare a list of targets that identify HTML elements that our controller will interact with
  // Targets are a selection element and additional fields
  static targets = [ "selection", "additionalFields" ]

  initialize() {
    this.showAdditionalFields()
  }

  showAdditionalFields() {
    let selection = this.selectionTarget.value

    for (let fields of this.additionalFieldsTargets) {
      fields.disabled = fields.hidden = (fields.dataset.type != selection)
    }
  }
}