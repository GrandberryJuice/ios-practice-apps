//
//  ViewController.swift
//  Balloon App
//
//  Created by KENNETH GRANDBERRY on 11/9/15.
//  Copyright © 2015 KENNETH GRANDBERRY. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redballoon: UIImageView!
    
    @IBOutlet var blueballoon: UIImageView!
    
    @IBOutlet var hideRed: UIButton!
    @IBOutlet var hideBlue: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func HideRedFunc(sender: AnyObject) {
        redballoon.hidden = true
    }

    @IBAction func HideBlueFunc(sender: AnyObject) {
        blueballoon.hidden = true
    }
}

