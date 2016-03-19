//
//  RegisterViewController.swift
//  Introducer
//
//  Created by Kamil Poreba on 19.03.2016.
//  Copyright © 2016 Ready4s. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

	// Outlets
	@IBOutlet var textFields: [UITextField]!

	// Properties

	override func viewDidLoad() {
		super.viewDidLoad()

		// Do any additional setup after loading the view.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
}

extension RegisterViewController: UITextFieldDelegate {

	func textFieldShouldReturn(textField: UITextField) -> Bool
	{
		textField.resignFirstResponder()
		if let index = textFields.indexOf(textField) {
			if index < textFields.count - 1 {
				let nextTextField = textFields[index + 1]
				nextTextField.becomeFirstResponder()
			}
		}
		return true
	}
}
