import { Application } from "@hotwired/stimulus"
import { Confetti } from "stimulus-confetti"

// Start Stimulus for Sitepress pages
const application = Application.start()
application.debug = false

// Register only the controllers needed for Sitepress pages
application.register("confetti", Confetti)

// Make it available globally if needed
window.Stimulus = application

console.log("Sitepress JS loaded")