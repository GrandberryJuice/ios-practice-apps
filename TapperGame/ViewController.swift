//
//  ViewController.swift
//  TapperGame
//
//  Created by KENNETH GRANDBERRY on 11/11/15.
//  Copyright © 2015 KENNETH GRANDBERRY. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Properties
    var maxTaps:Int = 0
    var currentTaps:Int = 0
    
    //Outlets
    @IBOutlet weak var logoImag: UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var tapBtn: UIButton!
    @IBOutlet weak var tapsLbl: UILabel!
    
    @IBAction func coinTap(sender:UIButton!) {
        currentTaps++
        updateTaplbl()
        
        if isGameOver() {
            restartGame()
        }
        
    }
    
    @IBAction func onPlayBtnPressed(sender:UIButton!) {
    
        if howManyTapsTxt.text != nil  && howManyTapsTxt != ""{
            logoImag.hidden = true
            playBtn.hidden = true
            howManyTapsTxt.hidden = true
            
            tapBtn.hidden = false
            tapsLbl.hidden = false
            
            maxTaps = Int(howManyTapsTxt.text!)!
            currentTaps = 0
            updateTaplbl()
        
        }
    }
    
    @IBAction func updateTaplbl() {
         tapsLbl.text = "\(currentTaps) Taps"
    }
    

    func isGameOver() -> Bool {
        if currentTaps >= maxTaps {
            return true
        } else {
            return false
        }
    }
    
    func restartGame() {
        maxTaps = 0
        howManyTapsTxt.text = ""
        
        logoImag.hidden = false
        playBtn.hidden = false
        howManyTapsTxt.hidden = false
        
        tapBtn.hidden = true
        tapsLbl.hidden = true
        
    
    }
    
    
}

