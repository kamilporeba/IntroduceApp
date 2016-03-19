//
//  String+Validation.swift
//  Introducer
//
//  Created by Kamil Poreba on 19.03.2016.
//  Copyright © 2016 Ready4s. All rights reserved.
//

import Foundation

extension String {
	func validate(regex: String) -> Bool {
		let test = NSPredicate(format: "SELF MATCHES %@", regex)
		return test.evaluateWithObject(self)
	}
}