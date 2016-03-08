//
//  ViewController.swift
//  tapper-extreme
//
//  Created by Mohammed Kemal on 2/28/16.
//  Copyright © 2016 Mohammed Kemal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //These are my properties(variables)
    var maxTaps = 0
    var currentTaps = 0
    
    //These are my outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTapsTXT: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var TapBtn: UIButton!
    @IBOutlet weak var tapLbl: UILabel!

    @IBAction func onCoinTapped(sender: UIButton){
        currentTaps++
        updateTapLbl()
        
        if isGameOver(){
            restartGame()
        }
    }
    
    @IBAction func onPlayBtnPressed(sender:UIButton!){

        if howManyTapsTXT.text != nil && howManyTapsTXT.text != ""{
            
            logoImg.hidden = true
            playBtn.hidden = true
            howManyTapsTXT.hidden = true
            
            TapBtn.hidden = false
            tapLbl.hidden = false
            
            maxTaps = Int(howManyTapsTXT.text!)!
            currentTaps = 0
            
            updateTapLbl()
        }
    }
    
    func restartGame() {
        maxTaps = 0
        howManyTapsTXT.text = ""
        
        logoImg.hidden = false
        playBtn.hidden = false
        howManyTapsTXT.hidden = false
        
        TapBtn.hidden = true
        tapLbl.hidden = true
    }
    func isGameOver() -> Bool {
        if currentTaps >= maxTaps{
            return true
        }else{
            return false
        }
    }
    
    func updateTapLbl(){
        tapLbl.text = "\(currentTaps) Taps"
    }
}

