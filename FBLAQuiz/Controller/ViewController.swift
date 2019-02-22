//
//  ViewController.swift
//  FBLAQuiz
//
//  Created by Brett Lauer on 2/21/19.
//  Copyright © 2019 FBLA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fblaLogo: UIImageView!
    @IBOutlet weak var startQuizBtn: UIButton!
    @IBOutlet weak var quizWelcome: UIView!
    @IBOutlet weak var questionCounter: UILabel!
    @IBOutlet weak var scoreCounter: UILabel!
    @IBOutlet weak var questionLbl: UILabel!
    
    // Answer buttons outlet
    @IBOutlet weak var answerA: UIButton!
    @IBOutlet weak var answerB: UIButton!
    @IBOutlet weak var answerC: UIButton!
    @IBOutlet weak var answerD: UIButton!
    
    let questionBank = AllQuestions()
    var questionNumber: Int = 0
    var score: Int = 0
    var selectedAnswer: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuestion()
        updateUI()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    // Start button fuction
    @IBAction func startBtnPressed(_ sender: Any) {
        fblaLogo.isHidden = true
        startQuizBtn.isHidden = true
        quizWelcome.isHidden = false
    }
    
    // Answer button function
    @IBAction func answerPressed(_ sender: UIButton) {
        if sender.tag == selectedAnswer{
            print("correct")
            score += 1
        } else {
            print("incorrect")
        }
        
        questionNumber += 1
        updateQuestion()
    }
    
    func updateQuestion() {
        
        if questionNumber <= questionBank.list.count - 1{
            questionLbl.text = questionBank.list[questionNumber].question
            answerA.setTitle(questionBank.list[questionNumber].answerA, for: UIControl.State.normal)
            answerB.setTitle(questionBank.list[questionNumber].answerB, for: UIControl.State.normal)
            answerC.setTitle(questionBank.list[questionNumber].answerC, for: UIControl.State.normal)
            answerD.setTitle(questionBank.list[questionNumber].answerD, for: UIControl.State.normal)
            selectedAnswer = questionBank.list[questionNumber].correctAnswer
                updateUI()
        } else {
            let alert = UIAlertController(title: "Good Job!", message: "This is the end of the FBLA quiz. You got a \(score)/12! Would you like to restart?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: {action in self.restartQuiz()})
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
    }
    
    func updateUI() {
        scoreCounter.text = "Score: \(score)"
        questionCounter.text = "\(questionNumber + 1)/\(questionBank.list.count)"
    }
    
    func restartQuiz() {
        score = 0
        questionNumber = 0
        updateQuestion()
        fblaLogo.isHidden = false
        startQuizBtn.isHidden = false
        quizWelcome.isHidden = true
    }
}

