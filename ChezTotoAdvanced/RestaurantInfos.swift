//
//  RestaurantInfos.swift
//  ChezTotoAdvanced
//
//  Created by Keyhan Mortezaeifar on 21/11/2023.
//

import Foundation
import UIKit

class RestaurantInfoViewController: UIViewController {

    // Assuming you have outlets for UI elements
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var hoursTableView: UITableView!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var websiteLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!

    var restaurant: Restaurant!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set up UI with restaurant data
        nameLabel.text = restaurant.name
        addressLabel.text = restaurant.address
        websiteLabel.text = restaurant.website
        phoneLabel.text = restaurant.phoneNumber
        imageView.image = UIImage(named: restaurant.image)
        
        // Set up table view
        hoursTableView.delegate = self
        hoursTableView.dataSource = self
    }

    @IBAction func menuButtonTapped(_ sender: UIButton) {
        // Navigate to the second view (Menu Screen)
        performSegue(withIdentifier: "showMenuSegue", sender: self)
    }

    // Add any additional setup or functions as needed

}

extension RestaurantInfoViewController: UITableViewDataSource, UITableViewDelegate {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurant.openingHours.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OpeningHourCell", for: indexPath)
        
        let openingHour = restaurant.openingHours[indexPath.row]
        cell.textLabel?.text = "\(openingHour.day): \(openingHour.openTime) - \(openingHour.closeTime)"
        
        return cell
    }

    // Add any additional table view delegate/datasource methods as needed

}
