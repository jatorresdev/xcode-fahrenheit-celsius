//
//  ViewController.swift
//  FahrenheitCelsius
//
//  Created by Angel Torres on 25/07/16.
//  Copyright © 2016 Angel Torres. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    @IBAction func convertirCelsius(sender: AnyObject) {
        let result = convertFahrenheitCelsius(textField.text!)
        
        label.text = "Celsius: \(result)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func convertFahrenheitCelsius(fahrenheit: NSString) -> Double {
        let fahrenheitValue = (fahrenheit).doubleValue
        
        return (fahrenheitValue - 32.00) / 1.800
        
    }


}

