import { Application } from "@hotwired/stimulus"
import ScrollTo from "stimulus-scroll-to"

const application = Application.start()
application.register("scroll-to", ScrollTo)
