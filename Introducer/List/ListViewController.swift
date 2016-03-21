//
//  ListViewController.swift
//  Introducer
//
//  Created by Kamil Poreba on 21.03.2016.
//  Copyright © 2016 Ready4s. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {

	// Outlets
	@IBOutlet weak var tableView: UITableView!

	// Properties
	var cityEntity = CityEntity()

	override func viewDidLoad() {
		super.viewDidLoad()
		getCityList()
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	// API
	private func getCityList() {
		GetCitiesList.getList { (cities, isSuccess) -> () in
			if isSuccess {
				self.cityEntity = cities!
				self.tableView.reloadData()
			} else {
				UIAlertView(title: "Error", message: "Problem with fetch cities", delegate: nil, cancelButtonTitle: "OK").show()
			}
		}
	}
}

extension ListViewController: UITableViewDataSource, UITableViewDelegate {

	func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return cityEntity.cityNames.count
	}

	func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		var cell: UITableViewCell?
		if let cellDequed = tableView.dequeueReusableCellWithIdentifier("tableCell") {
			cell = cellDequed
		} else {
			cell = UITableViewCell(style: .Default, reuseIdentifier: "tableCell")
		}

		cell?.textLabel?.text = cityEntity.cityNames[indexPath.row]

		return cell!
	}
}
