//
//  DummyViewController.swift
//  peazyPayiOS
//
//  Created by Elden Li on 4/20/19.
//  Copyright © 2019 Elden Li. All rights reserved.
//

import UIKit
import FirebaseUI

class DummyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signout(_ sender: Any) {
        performSegue(withIdentifier: "signout", sender: self)
    }
}
