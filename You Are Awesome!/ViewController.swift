//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by John Gallaugher on 1/7/20.
//  Copyright © 2020 John Gallaugher. All rights reserved.
//


import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = -1
    var messageNumber = -1
    let totalNumberOfImages = 9
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["You Are Awesome!",
                        "You Are Great",
                        "You Are Fantastic!",
                        "When the Genius Bar Needs Help, They Call You!",
                        "Fabulous? That's You!",
                        "You've Got the Design Skills of Jony Ive."]
        
        var newMessageNumber: Int
        repeat {
            newMessageNumber = Int.random(in: 0...messages.count-1)
        } while messageNumber == newMessageNumber
        messageNumber = newMessageNumber
        messageLabel.text = messages[messageNumber]
        
        var newImageNumber: Int
        repeat {
            newImageNumber = Int.random(in: 0...totalNumberOfImages-1)
        } while imageNumber == newImageNumber
        imageNumber = newImageNumber
        imageView.image = UIImage(named: "image\(imageNumber)")
    }
    
}

