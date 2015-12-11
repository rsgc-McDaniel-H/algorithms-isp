//
//  Sketch.swift
//  Animation
//
//  Created by Russell Gordon on 2015-12-05.
//  Copyright © 2015 Royal St. George's College. All rights reserved.
//

import Foundation

class Sketch {

    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Declare any properties you need for your sketch below this comment, but before init()
    var x : Double = 0
    var s = 10
    var y : Double = 0


    // This runs once, equivalent to setup() in Processing
    init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 800, height: 500)
        
        // The frame rate can be adjusted; the default is 60 fps
        canvas.framesPerSecond = 60
        
    }
    
    // Runs repeatedly, equivalent to draw() in Processing
    func draw() {
                
        // Horizontal position of circle
        //x = x + s
        x = Double(canvas.frameCount)
        
        // vertical position of circle
        y = 0.1*(x-200)*(x-200)+50
        
        // Bounce when hitting wall
        if (x > Double(canvas.width) || x < 0) {
            s *= -1
        }
        
        //draw a rect with noe fill
        //canvas.drawRectangle(bottomRightX: 50, bottomRightY: 50, width: 200, height: 200)
        
        
        // Clear the background
        canvas.drawShapesWithBorders = false
        canvas.fillColor = Color(hue: 20, saturation: 100, brightness: 300, alpha: 10)
        //canvas.drawRectangle(bottomRightX: 0, bottomRightY: 0, width: canvas.width, height: canvas.height)
        
        // Draw a circle that moves across the screen
        canvas.drawShapesWithBorders = false
        canvas.fillColor = Color(hue: Float(canvas.frameCount), saturation: 80, brightness: 90, alpha: 100)
        canvas.drawEllipse (centreX: Int(x), centreY: Int(y), width: 5, height: 5)
        
        
    }
    
}