//
//  LogInViewController.swift
//  peazyPayiOS
//
//  Created by Elden Li on 4/20/19.
//  Copyright © 2019 Elden Li. All rights reserved.
//

import UIKit
import FirebaseUI

class LogInViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logInButtonPressed(_ sender: UIButton) {
        let authUI = FUIAuth.defaultAuthUI()
        
        guard authUI != nil else {
            // Log the error
            return
        }
        
        authUI?.delegate = self
        
        let authViewController = authUI!.authViewController()
        
        present(authViewController, animated: true, completion: nil)
    }
}

extension LogInViewController: FUIAuthDelegate {
    func authUI(_ authUI: FUIAuth, didSignInWith authDataResult: AuthDataResult?, error: Error?) {
        if error != nil {
            return
        }
        
        // authDataResult?.user.uid
        
        performSegue(withIdentifier: "loginToDummy", sender: self)
    }
}
