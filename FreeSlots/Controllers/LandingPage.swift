//
//  ViewController.swift
//  FreeSlots
//
//  Created by Tushar Singh on 26/08/18.
//  Copyright © 2018 Tushar Singh. All rights reserved.
//

import UIKit

class LandingPage: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(self.respondToSwipeGesture))
        swipeUp.direction = UISwipeGestureRecognizerDirection.up
        self.view.addGestureRecognizer(swipeUp)
        
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(self.respondToSwipeGesture))
        swipeDown.direction = UISwipeGestureRecognizerDirection.down
        self.view.addGestureRecognizer(swipeDown)
    }
    
    @objc func respondToSwipeGesture(gesture: UIGestureRecognizer) {
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            switch swipeGesture.direction {
                
            case UISwipeGestureRecognizerDirection.down:
                swipeUp()
            case UISwipeGestureRecognizerDirection.up:
                swipeDown()
            default:
                break
            }
        }
    }
    
    
    
    func swipeUp(){
         print("Swiped up")
    }
    
    
    func swipeDown(){
         print("Swiped down")
    }
    

}
