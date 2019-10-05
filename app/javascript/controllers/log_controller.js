import { Controller } from "stimulus"
export default class extends Controller {
  static targets = ["name"];

  initialize() {
    this.nameElement.value = this.name;
  }

  hi() {
    console.log(this.targets.find("name").value);
  }

  log(event) {
    console.log(this.nameElement.value);  
  }

  paste(event){
    console.log(event);
    event.preventDefault();
    console.log("pasting is not allowed");
  }

  get name() {
    if (this.data.has("name")) {
      return this.data.get("name")
    } else {
      return "Default User"
    }
  }

  get nameElement(){
    return this.targets.find("name")
  }
}