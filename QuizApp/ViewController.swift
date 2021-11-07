//
//  ViewController.swift
//  QuizApp
//
//  Created by Lily on 11/7/21.
//

import UIKit

class ViewController: UIViewController {

    //IBOutlets are variables
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var questions: UILabel!
    
    //2D array, an array within an array
    var questionBank = [["1+1=1","False"],
                        ["1-1=1","False"],
                        ["1+1=2","True"],
                        ["2-1=2","False"]]
    
    var questionNumner = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI() // calling a function updateUI
    }
    
    //update the screen info to clear it
    @objc func updateUI(){
        questions.text = questionBank[questionNumner][0]
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
    }
    
    //Actions are functions
    @IBAction func buttonPressed(_ sender: UIButton) {
       
        //userInput is a constant
        // gets the user input from the button titles
        let userInput = sender.currentTitle!
        
        //Check if user answer is correct
        if userInput == questionBank[questionNumner][1]{
            sender.backgroundColor = UIColor.green
        }else{
            sender.backgroundColor = UIColor.red
        }
        
        if  questionNumner + 1 < questionBank.count {
            questionNumner += 1
        }else{
            questionNumner = 0
        }
        
        Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(updateUI), userInfo: nil, repeats: true)
    }
}

