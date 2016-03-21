//
//  CityEntity.swift
//  Introducer
//
//  Created by Kamil Poreba on 21.03.2016.
//  Copyright © 2016 Ready4s. All rights reserved.
//

import Foundation
import SwiftyJSON

class CityEntity {
	var cityNames = Array<String>()

	init() {
	}

	required init(data: JSON) {

		if let results = data["results"].array {
			for city in results {
				if let address = city["address_components"].array {
					self.cityNames.append(address.first!["long_name"].string!)
				}
			}
		}
	}
}