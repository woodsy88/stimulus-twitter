import { Controller } from "stimulus"

export default class extends Controller {

    static targets = [ "body", "form"]

    toggle() {
      console.log("you clicked me");
      
      this.bodyTarget.classList.add("hidden")
      this.formTarget.classList.remove("hidden")
    }
}