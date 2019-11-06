//
//  ViewController.swift
//  RegistrationApp
//
//  Created by MacStudent on 2019-11-06.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var lbCollection: [UITextField]!
    @IBOutlet weak var lbUsername: UITextField!
    @IBOutlet weak var lbPassword: UITextField!
    @IBOutlet weak var btLogin: UIButton!
    @IBOutlet weak var btRegister: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lbCollection[0].isHidden = true
        lbCollection[1].isHidden = true
        lbCollection[2].isHidden = true
        btRegister.isHidden = true
        self.view.addSubview(lbUsername)
        self.view.addSubview(lbPassword)
        self.view.addSubview(lbCollection[0])
        self.view.addSubview(lbCollection[1])
        self.view.addSubview(lbCollection[2])
        self.lbUsername.delegate = self
        self.lbPassword.delegate = self
        self.lbCollection[0].delegate = self
        self.lbCollection[1].delegate = self
        self.lbCollection[2].delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func scAction(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            lbCollection[0].isHidden = true
            lbCollection[1].isHidden = true
            lbCollection[2].isHidden = true
            btRegister.isHidden = true
            btLogin.isHidden = false
            
        } else {
            lbCollection[0].isHidden = false
            lbCollection[1].isHidden = false
            lbCollection[2].isHidden = false
            btLogin.isHidden = true
            btRegister.isHidden = false
        }
    }
    @IBAction func btLogin(_ sender: UIButton) {
        lbUsername.text = nil
        lbPassword.text = nil
    }
    
    @IBAction func btRegister(_ sender: UIButton) {
        
        if lbCollection[0].text == nil {
            let alert = UIAlertController(title: "Check", message: "Please provide your first name", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
        }
        if lbCollection[1].text == nil {
            let alert = UIAlertController(title: "Check", message: "Please provide your last name", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
        }
        if lbCollection[2].text == nil {
            let alert = UIAlertController(title: "Check", message: "Please provide your e-mail", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
        }
        if lbUsername.text == nil {
            let alert = UIAlertController(title: "Check", message: "Please provide your username", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
        }
        if lbPassword.text == nil {
            let alert = UIAlertController(title: "Check", message: "Please provide your password", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
        }
        if lbCollection[0].text != nil && lbCollection[1].text == nil && lbCollection[2].text == nil && lbUsername.text == nil && lbPassword.text == nil {
            lbCollection[0].text = nil
            lbCollection[1].text = nil
            lbCollection[2].text = nil
            lbUsername.text = nil
            lbPassword.text = nil
        }
    }
}

