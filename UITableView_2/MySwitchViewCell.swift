//
//  MySwitchViewCell.swift
//  UITableView_2
//
//  Created by Raja Rai Kedarnathsingh on 05/05/2022.
//

import UIKit

class MySwitchViewCell: UITableViewCell {

    @IBOutlet weak var showFavorites: UISwitch!
    
    @IBAction func showFavoritesValueChanged(_ sender: Any) {

        if showFavorites.isOn {
            print("ON")
        }
        else {
            print ("OFF")
        }
    }
}
