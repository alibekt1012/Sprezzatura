//
//  AddAccessoryViewController.swift
//  Sprezzaturra
//
//  Created by Almat Alibekov on 24.07.2023.
//

import UIKit

class AddAccessoryViewController: UIViewController {

    @IBOutlet var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func addAccessory(_ sender: Any) {
        
        let defaults = UserDefaults.standard
        let accessoryName = textField.text!
        var newAccessory = Accessory()
        newAccessory.title = accessoryName
        
        do {
            if let data = defaults.data(forKey: "accessoryArray") {
                var array = try JSONDecoder().decode([Accessory].self, from: data)
                array.append(newAccessory)
                
                let encodedData = try JSONEncoder().encode(array)
                defaults.set(encodedData, forKey: "accessoryArray")
            } else {
                let encodedData = try JSONEncoder().encode([newAccessory])
                defaults.set(encodedData, forKey: "accessoryArray")
            }
        }
        catch {
            print("unable to encode \(error)")
        }
        textField.text = ""
    }
    
}
