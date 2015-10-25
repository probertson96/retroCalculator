//
//  ViewController.swift
//  retroCalculator
//
//  Created by Patrick Robertson on 25/10/2015.
//  Copyright © 2015 Patrick Robertson. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    //Enum creates a variable type
    
    enum Operation: String {
        case Divide = "/"
        case Multiple = "*"
        case Subtract = "-"
        case Add = "+"
        case Equal = "="
        case Empty = "Empty"
    }
    
    @IBOutlet weak var outputLabel: UILabel!
    
    var btnSound: AVAudioPlayer!
    
    var runningNumber = ""
    var leftValStr = ""
    var rightValStr = ""
    var currentOperation: Operation = Operation.Empty

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Button press sound
        
        let path = NSBundle.mainBundle().pathForResource("btn", ofType: "wav")
        let soundUrl = NSURL(fileURLWithPath: path!)
        
        do {
            try btnSound = AVAudioPlayer(contentsOfURL: soundUrl)
            btnSound.prepareToPlay()
        } catch let err as NSError {
            print(err.debugDescription)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    
    @IBAction func numberPressed(btn: UIButton!) {
        btnSound.play()
        
        runningNumber += "\(btn.tag)"
    }
    
    // Button Pressed IBActions
    
    @IBAction func onDividePressed(sender: AnyObject) {
    }
    @IBAction func onMultiplyPressed(sender: AnyObject) {
    }
    @IBAction func onSubtractPressed(sender: AnyObject) {
    }
    @IBAction func onAddPressed(sender: AnyObject) {
    }
    @IBAction func onEqualPressed(sender: AnyObject) {
    }
    


}

