//
//  ViewController.swift
//  Conversion Calculator UI
//
//  Created by Akrum Mahmud on 10/26/18.
//  Copyright © 2018 Akrum Mahmud. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var outputDisplay: UITextField!
    @IBOutlet weak var inputDisplay: UITextField!
    
    struct Converters {
        var label: String
        var inputUnit: String
        var outputUnit: String
    }
    
    var converter1: [Converters] = [Converters(label: "fahrenheight to celcius", inputUnit: "°F", outputUnit: "°C")]
    var converter2: [Converters] = [Converters(label: "celcius to fahrenheight", inputUnit: "°C", outputUnit: "°F")]
    var converter3: [Converters] = [Converters(label: "miles to kilometers", inputUnit: "mi", outputUnit: "km")]
    var converter4: [Converters] = [Converters(label: "kilometers to miles", inputUnit: "km", outputUnit: "mi")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func converterButton(_ sender: Any) {
        
        let alert = UIAlertController(title: "Converter", message: "Choose Converter", preferredStyle: .actionSheet)
        
        let button1 = UIAlertAction(title: "fahrenheight to celcius", style: .default, handler: nil)
        alert.addAction(button1)
        
        let button2 = UIAlertAction(title: "celcius to fahrenheignt", style: .default, handler: nil)
        alert.addAction(button2)
        
        let button3 = UIAlertAction(title: "miles to kilometer", style: .default, handler: nil)
        alert.addAction(button3)
        
        let button4 = UIAlertAction(title: "kilometer to miles", style: .default, handler: nil)
        alert.addAction(button4)
        
        present(alert, animated: true, completion: nil)
    }
    
}

