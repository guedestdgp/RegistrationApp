//
//  ViewController.swift
//  RegistrationApp
//
//  Created by MacStudent on 2019-11-06.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lbCollection: [UITextField]!
    @IBOutlet weak var lbUsername: UITextField!
    @IBOutlet weak var lbPassword: UITextField!
    @IBOutlet weak var btLogin: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lbCollection[0].isHidden = true
        lbCollection[1].isHidden = true
        lbCollection[2].isHidden = true
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(endEditing))
        view.addGestureRecognizer(tap)
    }
    
    @objc func endEditing(){
        self.view.endEditing(true)
    }

    @IBAction func scAction(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            lbCollection[0].isHidden = true
            lbCollection[1].isHidden = true
            lbCollection[2].isHidden = true
            btLogin.setTitle("Login", for: .normal)
            
        } else {
            lbCollection[0].isHidden = false
            lbCollection[1].isHidden = false
            lbCollection[2].isHidden = false
            btLogin.setTitle("Register", for: .normal)
        }
    }
    @IBAction func btLogin(_ sender: UIButton) {
        lbCollection[0].text = nil
        lbCollection[1].text = nil
        lbCollection[2].text = nil
        lbUsername.text = nil
        lbPassword.text = nil
    }
    @IBAction func demissKeyboard(_ sender: UITextField) {
        sender.resignFirstResponder()
    }
}

