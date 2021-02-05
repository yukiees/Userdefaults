//
//  ViewController.swift
//  Userdefaults
//
//  Created by 松島優希 on 2021/02/05.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    var text = String()
    var loadText = String()
    
    var saveData: UserDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func preserve(_ sender: Any) {
        text = textField.text!
        saveData.set(text,forKey: "string")
    }
    
    @IBAction func load(_ sender: Any) {
        loadText = saveData.object(forKey: "string") as! String
        Label.text = loadText
    }
    
    
}

