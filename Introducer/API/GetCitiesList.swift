//
//  GetCitiesList.swift
//  Introducer
//
//  Created by Kamil Poreba on 21.03.2016.
//  Copyright © 2016 Ready4s. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class GetCitiesList
{
	static func getList(completion: (cities: CityEntity?, isSuccess: Bool) -> ()) {

		Alamofire.request(.GET, API.APIAddress, encoding: .URL)
			.responseJSON { (response) -> Void in
				print(response.response?.statusCode)
				guard response.result.isSuccess else {
					completion(cities: nil, isSuccess: false)
					return
				}

				guard response.response?.statusCode == 200 else {
					if (response.response?.statusCode == 405) {
						print("Access denied")
					}
					return
				}
				let cities = CityEntity(data: JSON(response.result.value!))

				completion(cities: cities, isSuccess: true)
		}
	}
}
