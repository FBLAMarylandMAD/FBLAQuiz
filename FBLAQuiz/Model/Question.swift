//
//  Question.swift
//  FBLAQuiz
//
//  Created by Brett Lauer on 2/21/19.
//  Copyright © 2019 FBLA. All rights reserved.
//

import Foundation

class Question {
    let question: String
    let answerA: String
    let answerB: String
    let answerC: String
    let answerD: String
    let correctAnswer: Int
    
    init(questionText: String, optionA: String, optionB: String, optionC: String, optionD: String, answer: Int) {
        question = questionText
        answerA = optionA
        answerB = optionB
        answerC = optionC
        answerD = optionD
        correctAnswer = answer
    }
}
