//Hudson McDaniel
//Due Jan 17, 2016

import Foundation
import Cocoa

class Sketch {

   
    let canvas : Canvas
    
    // Declare any properties you need
    var x : Double = -10
    var s = 10
    var y : Double = 0
    //state the previous x position
    var oldx : Double = 0
    //state the previous y position
    var oldy : Double = 0
  

    // This runs once
    init() {
        
        // Create canvas
        canvas = Canvas(width: 400, height: 500)
        
        // The frame rate
        canvas.framesPerSecond = 100
        
        // background
        canvas.fillColor = Color(hue: 181, saturation: 0, brightness: 98, alpha: 100)
       
        //array for the grid lines on the screen
        for i in 0...20 {
            
            
            // draw vertical lines
            canvas.drawLine(fromX: i * 25, fromY: 0 , toX: i * 25, toY: 500)
            
            // draw horizontal lines
            canvas.drawLine(fromX: 0, fromY: i * 25 , toX: 500, toY: i * 25)
            
        }
        
        
    }
    
    // Runs repeatedly
    
    
        func draw() {
        
        //the previous value for the x coordinate
        oldx = x
        //the previous value for the y coordinate
        oldy = y
        
        //Stating the value of x
        //x = x + s 
        x = Double(canvas.frameCount - 10)
        
        // formula for the graph
        y = 0.001*(x-200)*(x-200)+50
        
            
        // My Attempt at getting the square root function to work it does not graph if the the othe function is attempting to graph
       // var root = sqrt(64.0)
       // print("square root is \(root)")
       // y = 0.1*(x-root)+50
        
        //Keep track of POS of points
        
        print(x)
        print(y)
        
        //State the color of the line
        canvas.lineColor = Color(hue: 0, saturation: 100, brightness: 98, alpha: 100)
        //connecting the mini circles on the screen to form a true graph
        canvas.drawLine(fromX: Int(oldx), fromY: Int(oldy), toX: Int(x), toY: Int(y), lineWidth: 5)
       
    
    
            
        if (x > Double(canvas.width) || x < 0) {
            s *= -1
        }
        
            
        // Clear the background
        
        // Draw the graph in form of little circles
        canvas.drawShapesWithBorders = false
        //make the background white
        canvas.fillColor = Color(hue: 0, saturation: 100, brightness: 98, alpha: 100)
        
        //draw circles on the screen to make a graph
        canvas.drawEllipse (centreX: Int(x), centreY: Int(y), width: 5, height: 5)
        
            
        //Put text up on the screen
        canvas.textColor = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)
        canvas.drawText(message: "By Hudson McDaniel")
        
    
    }
    
}