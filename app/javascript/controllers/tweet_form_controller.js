import { Controller } from "stimulus" 

export default class extends Controller {

  static targets = ["body", "characterCount"]

  initialize() {
    // console.log(this.bodyTarget);
    // console.log(this.characterCountTarget);

    // setup character count when page loads
    this.update()
  }

  update() {
    // console.log("update");
    var count = this.bodyTarget.value.length
    // console.log('count is: ', count);
    

    if (count == 1) {
       var message =  "1 character"
    } else {
      var message = `${count} characters`
    }
    

    this.characterCountTarget.textContent = message
  }

  submit(event){

    var count = this.bodyTarget.value.length

    if (count > 140) {
      event.preventDefault()
      this.characterCountTarget.classList.add("text-red-500")
   
    }

  }

}