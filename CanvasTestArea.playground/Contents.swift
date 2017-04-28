///*:
// 
// # Canvas
// 
// The Canvas class provides methods that allow basic shapes to be drawn on a Cartesian plane.
// 
// - callout(Experiment):
// 
//    Uncomment line 27 so that the axes of the plane are automatically drawn.
// 
//    Where is the origin?
// 
//    In what direction do values on the *x* and *y* axes increase?
// 
// */
// These are some required statements to make this playground work.
import Cocoa
import PlaygroundSupport

// Create a new canvas
let canvas = EnhancedCanvas(width: 500, height: 500)

let kochstar = LindenmayerSystem(length: 100, reduction: 2, x: 150, y: 350, direction: 0, angle: 90, axiom: "F-F-F-F", rule: "F-F+F+FF-F-F+F", generations: 4 )

kochstar.word

canvas.render(system: kochstar)


/*:
 
 ## To see output
 
 To see output, ensure that you have enabled the Assistant Editor...
 
 ![assistant-editor](assistant-editor.png "Enable the Assistant Editor")
 
 ... and verify that you have selected the *Timeline* option:
 
 ![timeline-option](timeline-option.png "Show the timeline")
 
 Finally, do not remove the following line of code:

 */
PlaygroundPage.current.liveView = canvas.imageView
