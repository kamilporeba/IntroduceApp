//
//  RegisterValidationHelper.swift
//  Introducer
//
//  Created by Kamil Poreba on 19.03.2016.
//  Copyright © 2016 Ready4s. All rights reserved.
//

import Foundation

class RegisterValidationHelper {

	static func validateUsername(username: String) -> (isSucess: Bool, message: String) {
		if username.validate(Regex.name) {
			return (true, "All is correct")
		}
		return (false, "Incorrect username")
	}

	static func validatePassword(password: String) -> (isSucess: Bool, message: String) {
		if password.validate(Regex.password) {
			return (true, "All is correct")
		}
		return (false, "Incorrect password")
	}

	static func validateEmail(email: String) -> (isSucess: Bool, message: String) {
		if email.validate(Regex.email) {
			return (true, "All is correct")
		}
		return (false, "Incorrect email address")
	}

    static func validateConformPassword(password: String, confirmPassword: String) -> (isSucess: Bool, message: String) {
		if password == confirmPassword {
			return (true, "All is correct")
		}
		return (false, "Password and password confirmation not match")
	}
}