//
//  LogInViewController.swift
//  peazyPayiOS
//
//  Created by Elden Li on 4/20/19.
//  Copyright © 2019 Elden Li. All rights reserved.
//

import UIKit
import FirebaseAuth

class LogInViewController: UIViewController {
    
    @IBOutlet weak var emailFieldTap: UIButton!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if Auth.auth().currentUser != nil {
            self.performSegue(withIdentifier: "loginToHome", sender: nil)
        }
        loginButton.layer.cornerRadius = loginButton.frame.height / 2
        loginButton.addTarget(self, action: #selector(pulseButton(_:)), for: .touchDown)
        // Do any additional setup after loading the view.
    }
    
    @objc func pulseButton(_ sender:UIButton) {
        sender.pulse()
    }
    
    
    @IBAction func logInButtonPressed(_ sender: UIButton) {
        Auth.auth().signIn(withEmail: emailField.text!, password: passwordField.text!) { (user, error) in
            if error == nil {
                self.performSegue(withIdentifier: "loginToHome", sender: self)
            }
            else {
                let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                
                alertController.addAction(defaultAction)
                self.present(alertController, animated: true, completion: nil)
            }
        }

    }

    @IBAction func createNewAccount(_ sender: Any) {
        performSegue(withIdentifier: "loginToSignup", sender: self)
    }
}
