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
        canvas = Canvas(width: 400, height: 500)
        
        // The frame rate can be adjusted; the default is 60 fps
        canvas.framesPerSecond = 60
        
        // background
        canvas.fillColor = Color(hue: 181, saturation: 0, brightness: 98, alpha: 100)
        canvas.drawRectangle(bottomRightX: 0, bottomRightY: 0, width: canvas.width, height: canvas.height)
        //Vertical
        canvas.drawLine(fromX: 100, fromY: 0 , toX: 100, toY: 500)
        canvas.drawLine(fromX: 0, fromY: 0 , toX: 0, toY: 500)
        canvas.drawLine(fromX: 200, fromY: 0 , toX: 200, toY: 500)
        canvas.drawLine(fromX: 300, fromY: 0 , toX: 300, toY: 500)
        canvas.drawLine(fromX: 400, fromY: 0 , toX: 400, toY: 500)
        canvas.drawLine(fromX: 500, fromY: 0 , toX: 500, toY: 500)
        //Horizontal
        canvas.drawLine(fromX: 0, fromY: 100 , toX: 500, toY: 100)
        canvas.drawLine(fromX: 0, fromY: 0 , toX: 500, toY: 0)
        canvas.drawLine(fromX: 0, fromY: 200 , toX: 500, toY: 200)
        canvas.drawLine(fromX: 0, fromY: 300 , toX: 500, toY: 300)
        canvas.drawLine(fromX: 0, fromY: 400 , toX: 500, toY: 400)
        canvas.drawLine(fromX: 0, fromY: 500 , toX: 500, toY: 500)
        




        //canvas.drawLine(fromX: Int, fromY: <#T##Int#>, toX: <#T##Int#>, toY: <#T##Int#>)
        
    }
    
    // Runs repeatedly, equivalent to draw() in Processing
    func draw() {
                
        // Horizontal position of circle
        //x = x + s
        x = Double(canvas.frameCount)
        
        // vertical position of circle
        y = 0.1*(x-200)*(x-200)+100
        
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