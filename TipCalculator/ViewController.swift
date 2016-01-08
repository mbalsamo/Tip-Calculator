//
//  ViewController.swift
//  TipCalculator
//
//  Created by Student on 9/30/152.
//  Copyright © 2015 MBalsamo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var calculate25Selected: UIImageView!
    @IBOutlet weak var calculate20Selected: UIImageView!
    @IBOutlet weak var calculate15Selected: UIImageView!
    @IBOutlet weak var calculate10Selected: UIImageView!
    @IBOutlet weak var calculate10: UIButton!
    @IBOutlet weak var calculate15: UIButton!
    @IBOutlet weak var calculate25: UIButton!
    @IBOutlet weak var answerLabelOther: UILabel!
    @IBOutlet weak var calculate20: UIButton!
    @IBOutlet var answerLabel: UIView!
    @IBOutlet weak var tipTextField: UITextField!
    @IBOutlet weak var peopleLabel: UILabel!
    var people = 1.00
    override func viewDidLoad()
    {

        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "purple_bg")!)
        tipTextField.keyboardType = UIKeyboardType.NumberPad
        answerLabelOther.text = " "
        peopleLabel.text = "1 person"
        tipTextField.resignFirstResponder()
        
        
        
            }

    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    @IBAction func dismissKeyboard(sender: AnyObject) {
    
    view.endEditing(true)
    
    
    
    }
    
    
    @IBAction func upArrow(sender: AnyObject)
    {
        
        ++people
        print(people)
        
        if people == 1
        {
            peopleLabel.text = "1 person"
        }
        else
        {
            peopleLabel.text = "\(people) people"
        }
        
        
        
    }
    @IBAction func downArrow(sender: AnyObject)
    {
        --people
        
        if people == 1
        {

            
            peopleLabel.text = "1 person"
        }
        else
        {
            
            peopleLabel.text = "\(people) people"
        }

        
    }

    @IBAction func calculateOnTap(sender: AnyObject)
    {
   tipTextField.text = " "
    }
    
    @IBAction func calcuate10Percent(sender: AnyObject)
    {
        let textString = tipTextField.text
        let textNSString = NSString(string: textString!)
        let textValue = textNSString.doubleValue


        
        
        if people == 1
        {
            var answer = (textValue * 0.1)
            var total = (textValue + answer)
            let anwser = NSNumberFormatter()
            anwser.maximumFractionDigits = 2
            anwser.minimumFractionDigits = 2
            let output = anwser.stringFromNumber(answer)!
            answerLabelOther.text = "A 10% tip on \(textValue) for 1 person is $\(output) \nIt would total at $\(total)"
            
        }
            
        else
        {
            
            
            var answer = (textValue * 0.1) / people
            var total = (textValue + answer)

            let anwser = NSNumberFormatter()
            anwser.maximumFractionDigits = 2
            anwser.minimumFractionDigits = 2
            let output = anwser.stringFromNumber(answer)!
            answerLabelOther.text = "A 10% tip on \(textValue) split up for \(people) people is $\(output) \nIt would total at $\(total)"
    }
    }
    @IBAction func percent2(sender: AnyObject)
    {
        let textString = tipTextField.text
        let textNSString = NSString(string: textString!)
        let textValue = textNSString.doubleValue
        
        
        if people == 1
        {
            var answer = (textValue * 0.15)
            let anwser = NSNumberFormatter()
            anwser.maximumFractionDigits = 2
            anwser.minimumFractionDigits = 2
            let output = anwser.stringFromNumber(answer)!
            var total = (textValue + answer)

            answerLabelOther.text = "A 15% tip on \(textValue) for 1 person is $\(output)\nIt would total at $\(total)"
            
        }
            
        else
        {
            
            
            var answer = (textValue * 0.15) / people
            let anwser = NSNumberFormatter()
            anwser.maximumFractionDigits = 2
            anwser.minimumFractionDigits = 2
            let output = anwser.stringFromNumber(answer)!
            var total = (textValue + answer)

            answerLabelOther.text = "A 15% tip on \(textValue) split up for \(people) people is $\(output) \nIt would total at $\(total)"
        }
    }
    @IBAction func percent3(sender: AnyObject)
    {
        let textString = tipTextField.text
        let textNSString = NSString(string: textString!)
        let textValue = textNSString.doubleValue
        
        
        if people == 1
        {
            var answer = (textValue * 0.2)
            let anwser = NSNumberFormatter()
            anwser.maximumFractionDigits = 2
            anwser.minimumFractionDigits = 2
            let output = anwser.stringFromNumber(answer)!
            var total = (textValue + answer)

            
            answerLabelOther.text = "A 20% tip on \(textValue) for 1 person is $\(output)\nIt would total at $\(total)"
            
        }
            
        else
        {
            
            
            var answer = (textValue * 0.2) / people
            let anwser = NSNumberFormatter()
            anwser.maximumFractionDigits = 2
            anwser.minimumFractionDigits = 2
            let output = anwser.stringFromNumber(answer)!
            var total = (textValue + answer)

            answerLabelOther.text = "A 20% tip on \(textValue) split up for \(people) people is $\(output)\nIt would total at $\(total)"

        }
    }
    
    @IBAction func percent4(sender: AnyObject)
    {
        let textString = tipTextField.text
        let textNSString = NSString(string: textString!)
        let textValue = textNSString.doubleValue
        

        if people == 1
        {
        var answer = (textValue * 0.25)
            
            let anwser = NSNumberFormatter()
            anwser.maximumFractionDigits = 2
            anwser.minimumFractionDigits = 2
            let output = anwser.stringFromNumber(answer)!
            var total = (textValue + answer)

            
            answerLabelOther.text = "A 25% tip on \(textValue) for 1 person is $\(output)\nIt would total at $\(total)"

        }
            
        else
        {

            
        var answer = (textValue * 0.25) / people
            let anwser = NSNumberFormatter()
            anwser.maximumFractionDigits = 2
            anwser.minimumFractionDigits = 2
            let output = anwser.stringFromNumber(answer)!
            var total = (textValue + answer)

            answerLabelOther.text = "A 25% tip on \(textValue) split up for \(people) people is $\(output)\nIt would total at $\(total)"

        }

    }
    
    @IBAction func calculate18(sender: AnyObject)
    {
        let textString = tipTextField.text
        let textNSString = NSString(string: textString!)
        let textValue = textNSString.doubleValue
        
        
        if people == 1
        {
            var answer = (textValue * 0.18)
            
            let anwser = NSNumberFormatter()
            anwser.maximumFractionDigits = 2
            anwser.minimumFractionDigits = 2
            let output = anwser.stringFromNumber(answer)!
            var total = (textValue + answer)

            answerLabelOther.text = "An 18% tip on $\(textValue) for 1 person is $\(output)\nIt would total at $\(total)"
            
        }
            
        else
        {
            
            
            var answer = (textValue * 0.18) / people
            let anwser = NSNumberFormatter()
            anwser.maximumFractionDigits = 2
            anwser.minimumFractionDigits = 2
            let output = anwser.stringFromNumber(answer)!
            var total = (textValue + answer)

            answerLabelOther.text = "An 18% tip on $\(textValue) split up for \(people) people is $\(output)\nIt would total at $\(total)"
            
        }

    }
    
    
    
}


