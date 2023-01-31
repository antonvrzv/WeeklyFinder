//
//  ViewController.swift
//  FirstApp
//
//  Created by Anton Vorozhischev on 21.01.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var dateTextField: UITextField!
    @IBOutlet weak var monthTextField: UITextField!
    @IBOutlet weak var yearTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!

    @IBAction func buttonTapped(_ sender: UIButton) {
        let calendar = Calendar.current
        
        guard let day = dateTextField.text, let month = monthTextField.text, let year = yearTextField.text else { return }
        
        //Create an empty instance of the class DateComponents
        var dateComponents = DateComponents()
        dateComponents.day = Int(day)
        dateComponents.month = Int(month)
        dateComponents.year = Int(year)
        
        //Create an instance of the class Date by components of date
        guard let date = calendar.date(from: dateComponents) else { return }
        //Create an empty instance of the class DateFormatter
        let dateFormatter = DateFormatter()
        //Setting the format of date
        dateFormatter.dateFormat = "EEEE"
        //Convert date to string value
        let weekDay = dateFormatter.string(from: date)
        //Setting string value of date to text field of UILabel
        resultLabel.text = weekDay.capitalized
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}
