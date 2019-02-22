//
//  AllQuestions.swift
//  FBLAQuiz
//
//  Created by Brett Lauer on 2/21/19.
//  Copyright © 2019 FBLA. All rights reserved.
//

import Foundation

class AllQuestions {
    var list = [Question]()
    
    init() {
        list.append(Question(questionText: "Which of the following competitive events is NOT an objective test?", optionA: "Business Law", optionB: "Mobile App Development", optionC: "Economics", optionD: "Securities and Investments", answer: 2))
        list.append(Question(questionText: "Which is not one of the three ways a competitor can compete in a competitive event?", optionA: "Individual", optionB: "Team", optionC: "Class", optionD: "Chapter", answer: 3))
        list.append(Question(questionText: "Which of the following competitive events is limited to 9th and 10th grade participants?", optionA: "Introduction to Financial Math", optionB: "Journalism", optionC: "Mobile App Development", optionD: "Social Media Campaign", answer: 1))
        list.append(Question(questionText: "Who is the founder of Future Business Leaders of America?", optionA: "Hamden L. Forkner", optionB: "Conrad N. Hilton", optionC: "Edward D. Miller", optionD: "Jean Buckley", answer: 1))
        list.append(Question(questionText: "In what year did the FBLA-PBL National Center open?", optionA: "1937", optionB: "1985", optionC: "1991", optionD: "2010", answer: 3))
        list.append(Question(questionText: "Which state was the first to become a FBLA state chapter?", optionA: "Indiana", optionB: "Maryland", optionC: "Ohio", optionD: "Iowa", answer: 4))
        list.append(Question(questionText: "Who is the current President and CEO of FBLA?", optionA: "Conrad N. Hilton", optionB: "Edward D. Miller", optionC: "Jean M. Buckley", optionD: "Dayo Togun", answer: 3))
        list.append(Question(questionText: "Which of the following is NOT a sponsor of FBLA?", optionA: "Amazon", optionB: "Arizona State University", optionC: "Verizon", optionD: "Apple", answer: 4))
        list.append(Question(questionText: "Where is one of the 2019 FBLA National Fall Leadership Conferences being held?", optionA: "Los Angeles, CA", optionB: "Washington, D.C.", optionC: "Miami, FL", optionD: "Boston, MA", answer: 2))
        list.append(Question(questionText: "Who is the FBLA National President?", optionA: "Eu Ro Wang", optionB: "Keerti Soundappan", optionC: "Garret Koch", optionD: "Michael Zaoh", answer: 1))
        list.append(Question(questionText: "Which of the following FBLA regions is the states of Maryland, New Jersey, and New York in?", optionA: "Eastern Region", optionB: "Western Region", optionC: "Southern Region", optionD: "North Central Region", answer: 1))
        list.append(Question(questionText: "Where is the 2019 National Leadership Conference for FBLA being held?", optionA: "Baltimore, MD", optionB: "Chicago, IL", optionC: "San Antonio, TX", optionD: "Phoenix, AZ", answer: 3))
    }
}
