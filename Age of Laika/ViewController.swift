//
//  ViewController.swift
//  Age of Laika
//
//  Created by Chris Shaughnessy on 11/14/14.
//  Copyright (c) 2014 Webified Design. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dogYearsLabel: UILabel!
    @IBOutlet weak var enterHumanYearsTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        let stringFromTextField = enterHumanYearsTextField.text.toInt()!
        let dogYears = 7
        
        let humanToDogYearsInteger = stringFromTextField * dogYears
        dogYearsLabel.hidden = false
        dogYearsLabel.text = "\(humanToDogYearsInteger)" + " years old"

        enterHumanYearsTextField.resignFirstResponder()
    }
    @IBAction func realDogYearsButtonPressed(sender: UIButton) {
        let stringFromTextField = enterHumanYearsTextField.text
        let doubleFromTextField = Double((stringFromTextField as NSString).doubleValue)
        
        var realDogYears:Double
        
        if doubleFromTextField > 2 {
            realDogYears = (10.5 * 2) + (doubleFromTextField - 2) * 4
        } else {
            realDogYears = doubleFromTextField * 10.5
        }
        
        dogYearsLabel.hidden = false
        dogYearsLabel.text = "\(realDogYears) Real Human Years"
        enterHumanYearsTextField.resignFirstResponder()
    }

}

