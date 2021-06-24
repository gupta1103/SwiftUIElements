//
//  ViewController.swift
//  Sample Label
//
//  Created by Akanksha on 22/06/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var customButton: UIButton!
    @IBOutlet weak var customLabel: UILabel!
    
    @IBOutlet weak var customSegmentedControl: UISegmentedControl!
    @IBOutlet weak var customLabel1: UILabel!
    
    
    @IBOutlet weak var customTextfield: UITextField!
    @IBAction func customTextfieldAction(_ sender: UITextField) {
    }
    
    @IBAction func segmentChanged(_ sender: UISegmentedControl) {
        
        switch customSegmentedControl.selectedSegmentIndex
        {
        case 0:
            customLabel1.text = "First Segment Selected."
        case 1:
            customLabel1.text = "Second Segment Selected."
        default:
            break
        }
    }
    
    
    
    @IBAction func customButtonAction(_ sender: Any) {
        print("Hello World!")
    }
    @IBOutlet weak var customSwitch: UISwitch!
    @IBAction func customSwitchChanged(_ sender: UISwitch!) {
        if (sender.isOn == true){
         print("Switch is ON")
        }
        else{
            print("Switch is OFF.")
        }
    }
    
    @IBOutlet weak var customStepper: UIStepper!
    
    @IBOutlet weak var customLabel2: UILabel!
    
    @IBAction func customStepperChanged(_ sender: UIStepper) {
        customLabel2.text = String(sender.value)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        customLabel.frame = CGRect(x: 60, y: 80, width: 200, height: 100)
        customLabel.text = "Self-Sufficient"
        customLabel.textColor = .black
        customLabel.textAlignment = .center
        customLabel.backgroundColor = .systemRed
        customLabel.font = UIFont(name: "Arial", size: 25)
        
        customButton.frame = CGRect(x: 60, y: 200, width: 200, height: 40)
        customButton.setTitle("Click Me!", for: .normal)
        customButton.backgroundColor = .systemBrown
        
        customSegmentedControl.frame = CGRect(x: 60, y: 260, width: 200, height: 40)
        customSegmentedControl.backgroundColor = .systemRed
        customLabel1.frame = CGRect(x: 60, y: 280, width: 250, height: 90)
        customLabel1.numberOfLines = 1
        
        customTextfield.frame = CGRect(x: 60, y: 350, width: 200, height: 50)
        customTextfield.backgroundColor = .systemPink
        customTextfield.textColor = .black
        customTextfield.font = UIFont(name: "Arial", size: 25)
        customTextfield.placeholder = "Enter your Name:"
        customTextfield.borderStyle = .roundedRect
        
        customSwitch.frame = CGRect(x: 120, y: 420, width: 200, height: 50)
        
        customStepper.frame = CGRect(x: 60, y: 500, width: 200, height: 40)
        customStepper.minimumValue = 0
        customStepper.maximumValue = 100
        customStepper.backgroundColor = .systemGray
        customStepper.autorepeat = true
        customStepper.isContinuous = true
        customLabel2.frame = CGRect(x: 180, y: 470, width: 200, height: 100)

        
    }
    

}

