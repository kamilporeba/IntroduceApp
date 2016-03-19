//
//  SignInViewController.swift
//  Introducer
//
//  Created by Kamil Poreba on 19.03.2016.
//  Copyright © 2016 Ready4s. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    
    //Outlets
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    
    //Properties
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Actions
    @IBAction func signIn(sender: AnyObject) {
    }

}
