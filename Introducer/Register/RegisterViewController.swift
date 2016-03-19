//
//  RegisterViewController.swift
//  Introducer
//
//  Created by Kamil Poreba on 19.03.2016.
//  Copyright © 2016 Ready4s. All rights reserved.
//

enum RegisterTextfields: Int {
	case Username
	case Email
	case Password
	case PasswordConfirmation
	case Description
}

import UIKit

class RegisterViewController: UIViewController {

	// Outlets
	@IBOutlet var textFields: [UITextField]!
	@IBOutlet var validationMessage: [UILabel]!

	// Properties
	var isValid = true

	override func viewDidLoad() {
		super.viewDidLoad()

		// Do any additional setup after loading the view.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	@IBAction func validate(sender: AnyObject) {
		let textField = sender as! UITextField
		validateTextField(textField)
	}

	// Validation
	private func validateTextField(textField: UITextField) {
		var result = (isSucess: true, message: "")
		switch textField {
		case textFields[RegisterTextfields.Username.rawValue]:
			result = RegisterValidationHelper.validateUsername(textField.text!)
			break
		case textFields[RegisterTextfields.Email.rawValue]:
			result = RegisterValidationHelper.validateEmail(textField.text!)
			break
		case textFields[RegisterTextfields.Password.rawValue]:
			result = RegisterValidationHelper.validatePassword(textField.text!)
			break
		case textFields[RegisterTextfields.PasswordConfirmation.rawValue]:
			result = RegisterValidationHelper.validateConformPassword(textFields[RegisterTextfields.Password.rawValue].text!, confirmPassword: textField.text!)
			break
		default:
			break
		}

		if result.isSucess {
			validationMessage[textField.tag].hidden = true
		} else {
			validationMessage[textField.tag].hidden = false
			validationMessage[textField.tag].text = result.message
		}

		isValid = isValid && result.isSucess
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
