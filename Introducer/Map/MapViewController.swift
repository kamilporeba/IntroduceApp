//
//  MapViewController.swift
//  Introducer
//
//  Created by Kamil Poreba on 21.03.2016.
//  Copyright © 2016 Ready4s. All rights reserved.
//

import UIKit
import GoogleMaps

class MapViewController: UIViewController {

	// Outlets
	@IBOutlet weak var mapView: GMSMapView!

	override func viewDidLoad() {
		super.viewDidLoad()
		initializeMapView()
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	// Private mthods
	private func initializeMapView() {
		let camera = GMSCameraPosition.cameraWithLatitude(-33.86,
			longitude: 151.20, zoom: 6)
		self.mapView.camera = camera
		self.mapView.myLocationEnabled = true

		let marker = GMSMarker()
		marker.position = CLLocationCoordinate2DMake(-33.86, 151.20)
		marker.title = "Sydney"
		marker.snippet = "Australia"
		marker.map = mapView
	}
}
