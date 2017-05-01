//
//  Sketch.swift
//  Animation
//
//  Created by Russell Gordon on 2015-12-05.
//  Copyright Â© 2015 Royal St. George's College. All rights reserved.
//

import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : EnhancedCanvas
    
    // This runs once, equivalent to setup() in Processing
    override init() {
        
        // Create canvas object â€“ specify size
        canvas = EnhancedCanvas(width: 500, height: 500)
        
        let kochstar = LindenmayerSystem(length: 400, reduction: 4, x: 150, y: 350, direction: 0, angle: 90, axiom: "F-F-F-F", rule: "F-F+F+FF-F-F+F", generations: 4 )

        let anotherSystem = LindenmayerSystem(length: <#T##Int#>, reduction: <#T##Int#>, x: <#T##Int#>, y: <#T##Int#>, direction: <#T##Int#>, angle: <#T##Degrees#>, axiom: <#T##String#>, rule: <#T##String#>, generations: <#T##Int#>)
        
        canvas.render(system: kochstar)
        
    }
    
    // Runs repeatedly, equivalent to draw() in Processing
    func draw() {
        
        
        
    }
    
    // Respond to the mouseDown event
    func mouseDown() {
        
        
    }

}
