//
//  ViewController.swift
//  RunningMultiples
//
//  Created by KENNETH GRANDBERRY on 11/11/15.
//  Copyright © 2015 KENNETH GRANDBERRY. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //global variable
    var counter:Int = 0
    var number:Int! = 0
    //outlets
    @IBOutlet weak var multiplesLabel: UILabel!
    @IBOutlet weak var multiplesTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var multipleTitle: UIImageView!
    @IBOutlet weak var addBtn: UIButton!
 
    
    func multipleOver() -> Bool{
        if counter  >= number{
            return true
        } else {
            return false
            
        }
    }
    
    
    @IBAction func PlayBtnClick(sender: AnyObject) {
        
        if (multiplesTxt.text != nil && multiplesTxt.text != "") {
            //hidden items
            multipleTitle.hidden = true
            multiplesTxt.hidden = true
            playBtn.hidden = true
            
            //unhide labels & buttons
            multiplesLabel.hidden = false
            addBtn.hidden = false
            counter = 0
        }
    }
    
    @IBAction func addMultiples(sender: AnyObject) {
         counter++
        number = Int(multiplesTxt.text!)
        var numHolder = counter * number
        multiplesLabel.text = String("\(number!) + \(counter) = \(numHolder)")
       
        //multipleOver has to be before addMultiples
        if multipleOver() {
            restartApp()
        }
    }
    
    
    func restartApp() {
        //hidden items
        multipleTitle.hidden = false
        multiplesTxt.hidden = false
        playBtn.hidden = false
        
        //unhide labels & buttons
        multiplesLabel.hidden = true
        addBtn.hidden = true
        
    }
}




