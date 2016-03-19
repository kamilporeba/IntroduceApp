//
//  Global.swift
//  Introducer
//
//  Created by Kamil Poreba on 19.03.2016.
//  Copyright © 2016 Ready4s. All rights reserved.
//

import Foundation

struct Regex {
	static let name = "^[[:alpha:] ,.'-]{2,20}$"
	static let email = "^.+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2}[A-Za-z]*$"
	static let password = "^[[:alpha:] ,.'-]{5,20}$"
}