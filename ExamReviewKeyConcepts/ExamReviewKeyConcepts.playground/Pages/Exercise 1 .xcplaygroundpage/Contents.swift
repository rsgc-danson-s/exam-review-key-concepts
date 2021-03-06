//: [Previous](@previous) / [Next](@next)
//: # Exercise 1
//: ## Your goal
//: Reproduce this image:
//:
//: ![Blur](Blur.png "Blur")
/*:
 ## Notes:
 * you will work on a canvas that is 400 pixels wide by 600 pixels high
 * strongly recommend that you make a plan [using this storyboard template](http://russellgordon.ca/rsgc/2016-17/ics2o/Storyboard%20Planning%20Template.pdf) (I have hard copies available if you are in class)
 * you can use the Digital Color Meter program to obtain an RGB color value (Command-Shift-C), then [go to this site](http://rgb.to/), paste the result, and use the HSB values provided.
 * efficiency counts: employ loops and/or function(s) and/or conditional statements to write compact code
 */
//: ## Template code
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
//: ## Reminder
//: To see the visual output, be sure to show the Assistant Editor and choose the Timeline option.
//:
//: ![timeline](timeline.png "Timeline")
//: ## Your code starts here
// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

canvas.drawShapesWithFill = true
canvas.fillColor = Color.init(hue: 190, saturation: 97, brightness: 82, alpha: 100)

//make background
canvas.drawRectangle(centreX: 200, centreY: 300, width: 400, height: 600)

canvas.fillColor = Color.init(hue: 0, saturation: 0, brightness: 0, alpha: 100)
canvas.drawText(message: "saturday", size: 10, x: 15, y: 560)
canvas.drawText(message: "october 16 1993/8pm", size: 11, x: 15, y: 550, kerning: -1.0)
canvas.drawText(message: "mandela hall", size: 10, x: 135, y: 560, kerning: -1.0)
canvas.drawText(message: "at university  of sussex", size: 11, x: 135, y: 550, kerning: -1.0)
canvas.drawText(message: "special guest", size: 10, x: 270, y: 560)
canvas.drawText(message: "salad, plus my life story", size: 10, x: 270, y: 550, kerning: -1.0)
canvas.drawText(message: "￡6.50/￡5.50 advance", size: 10, x: 270, y: 530, kerning: -1.0)
//make text
canvas.drawText(message: "blur", size: 200, x: 10, y: 300)

//loop that allows blur to go to bottom of page
for y in stride(from: 325, to: -100, by: -10) {
    //make text color black
    canvas.textColor = Color.init(hue: 0, saturation: 0, brightness: 0, alpha: 20)
    //make the "blur" go to the bottom of the page, and make actual blur on text
    canvas.drawText(message: "blur", size: 200, x: 10, y: y)
}

//: ## Template code
//: The code below is necessary to see the result of your work in the Assistant Editor at right. Please do not remove.
PlaygroundPage.current.liveView = canvas.imageView
