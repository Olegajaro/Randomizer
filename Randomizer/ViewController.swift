//
//  ViewController.swift
//  Randomizer
//
//  Created by Олег Федоров on 24.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var minimumValueLabel: UILabel!
    @IBOutlet var maximumLabelValue: UILabel!
    @IBOutlet var randomValueLabel: UILabel!
    
    
    @IBOutlet var getRandomNumberButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getRandomNumberButton.layer.cornerRadius = 10
    }

    
    @IBAction func getRandomNumberButtonTapped() {
        let minimumNumber = Int(minimumValueLabel.text ?? "") ?? 0
        let maximumNumber = Int(maximumLabelValue.text ?? "") ?? 100
        
        randomValueLabel.text = String(Int.random(in: minimumNumber...maximumNumber))
    }
    
    
}

