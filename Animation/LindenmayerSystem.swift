import Foundation

public class LindenmayerSystem {
    
    // Properties (globals - available everywhere in a class)
    var initialLength : Int     // initial line segment length
    var currentLength : Int     // current line segment length
    var reduction : Int         // reduction factor
    var x : Int                 // initial horizontal position of turtle
    var y : Int                 // initial vertical position of turtle
    var direction : Int         // initial direction turtle faces (degrees)
    var angle : Degrees         // rotation amount for turtle (degrees)
    var axiom : String
    var rule : String
    var n : Int                 // number of times the production rule is applied
    public var word : String    // the word that will be rendered
    var animationPosition = 0   // tracks current character being interpreted when
        
    public init(length : Int,
                reduction : Int,
                x : Int,
                y : Int,
                direction : Int,
                angle : Degrees,
                axiom : String,
                rule : String,
                generations : Int) {
        
        // Initializer(s)
        initialLength = length
        currentLength = initialLength
        self.reduction = reduction
        self.x = x
        self.y = y
        self.direction = direction
        self.angle = angle
        self.axiom = axiom
        self.rule = rule
        self.n = generations
        self.word = axiom   // The first word is the axiom
        
        // Apply the production rule
        applyRules()
        
    }
    
    public init(system : LindenmayerSystem){
        
        self.reduction = reduction
        self.x = system.x
        self.y = system.y
        self.direction = direction
        self.angle = angle
        self.axiom = axiom
        self.rule = rule
        self.n = generations
        self.word = axiom
        
    }
    
    func applyRules() {
        
        // See if word needs to be re-written
        if n > 0 {
            
            // Apply the production rule "n" times
            for i in 1...n {
                
                // Create a new word
                var newWord = ""
                
                // Inspect each character of existing word
                for character in word.characters {
                    
                    if character == "F" {
                        
                        // apply production rule, replace "old" F with new string
                        newWord.append(rule)
                        
                    } else {
                        
                        // just copy what's in the existing word to the new word
                        newWord.append(character)
                        
                    }
                    
                }
                
                // Add the re-written word to the system
                word = newWord
                
            }
            
        }
        
    }
    
}
