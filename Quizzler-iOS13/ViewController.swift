//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var trueButton: UIButton!
    
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz = [
        ["Four + Two is equal to Six", "True"],
        ["Five - Three is greater than One","True"],
        ["Three + Eight is less than Ten", "False"]
    ]
    
    var questionNumer: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        
        var userAnswer = sender.currentTitle
        let actualAnswer = quiz[questionNumer][1]
        
        
        if userAnswer == actualAnswer {
            print("Right!")
        } else {
            print("Wrong!")
        }
        print("this is count \(quiz.count)")
        if questionNumer + 1 < quiz.count {
            questionNumer += 1
        } else if questionNumer + 1 == 3 {
            questionNumer = 0
        }
        
        updateUI()
    }
    
    func updateUI() {
        print(questionNumer)
        questionLabel.text = quiz[questionNumer][0]
    }
}

