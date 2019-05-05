//
//  profileViewController.swift
//  peazyPayiOS
//
//  Created by Arman Vaziri on 4/25/19.
//  Copyright © 2019 Elden Li. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseAuth

class ProfileViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var changeEmailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTextField.text = Auth.auth().currentUser?.email
        // Do any additional setup after loading the view.
    
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldReturn")
        emailTextField.resignFirstResponder()
        return true
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "profileToHome", sender: self)
    }
    
    
}


