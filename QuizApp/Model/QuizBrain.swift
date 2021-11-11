//
//  QuizBrain.swift
//  QuizApp
//
//  Created by Lily on 11/10/21.
//

import Foundation

struct QuizBrain {
    
    var questionBank = [
        Questions(text: "1+1=1", answer: "False"), // this is a custom struc
        Questions(text: "1-1=1", answer: "False"),
        Questions(text: "1+1=2", answer: "True"),
        Questions(text: "2-1=2", answer: "False")
    ]
    
    var questionNumner = 0
    
    // create a function for displaying a question
    // steps to make a function
    // 1.define 2.number of parameters 3.return type -> String 4.return  5.calling
    func getQuestion() -> String {
        
        return questionBank[questionNumner].text 
        
    }
    
    func checkAnswer(_ userInput: String) -> Bool { // a boolen
        
        if userInput == questionBank[questionNumner].answer {
            return true
        }else {
            return false
        }
    }
    
    mutating func nextQuestion() {
        
        if  questionNumner + 1 < questionBank.count {
            questionNumner += 1
        }else{
            questionNumner = 0
        }
        
    }
    
}
