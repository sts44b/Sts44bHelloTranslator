//
//  TranslatorViewController.swift
//  Sts44bHelloTranslator
//
//  Created by Seanmichael Stanley on 9/22/15.
//  Copyright © 2015 Seanmichael Stanley. All rights reserved.
//

import UIKit

class TranslatorViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let nationalities = ["Bosnian", "Catalan", "Croatian", "Danish", "English", "French", "German", "Haitian", "Italian", "Latvian", "Spanish", "Turkish", "Welsh"]
    
    let greetings = ["Zdravo", "Hola", "Bok", "Hej", "Hello", "Bonjor", "Hallo", "Alo", "Ciao", "Sveiki", "Hola", "Merhaba", "Helo"]
    

    @IBOutlet weak var transLabel: UILabel!
    
    @IBOutlet weak var transPicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        transPicker.selectRow(4, inComponent: 0, animated: false)
        transLabel.text = greetings[transPicker.selectedRowInComponent(0)]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return nationalities.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return nationalities[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        transLabel.text = greetings[row]
    }

}
