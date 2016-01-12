

import Foundation

class Sketch {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    
    // Declare any properties you need for your sketch below this comment, but before init()
    var x : Double = 0
    var s = 10
    var y : Double = 0
    
    
    
    
    // This runs once, equivalent to setup() in Processing
    init() {
        
        // Create canvas object – specify size
        
        // The frame rate can be adjusted; the default is 60 fps
        canvas.framesPerSecond = 100
        
        // background
      
        //Vertical
        
        for i in 0...20 {
            
            
            // draw verical lines
            
            // draw horizontal lines
            
        }
        
        
    }
    
    // Runs repeatedly, equivalent to draw() in Processing
    func draw() {
        
        // Horizontal position of circle
        //x = x + s
        x = Double(canvas.frameCount)
        
        // vertical position of circle
        y = 0.1*(x-200)*(x-200)+100
        
        //Keep track of POS of points
        
        print(x)
        print(y)
        
        //canvas.drawLine(fromX: <#T##Int#>, fromY: <#T##Int#>, toX: <#T##Int#>, toY: <#T##Int#>)
        
        // Bounce when hitting wall
        if (x > Double(canvas.width) || x < 0) {
            s *= -1
        }
        
        //draw a rect with noe fill
        //canvas.drawRectangle(bottomRightX: 50, bottomRightY: 50, width: 200, height: 200)
        
        
        //        // Clear the background
        //        canvas.drawShapesWithBorders = true
        
        // Draw a circle that moves across the screen
        canvas.drawShapesWithBorders = false
        canvas.fillColor = Color(hue: 0, saturation: 100, brightness: 98, alpha: 100)
        canvas.drawEllipse (centreX: Int(x), centreY: Int(y), width: 5, height: 5)
        
        
    }
    
}