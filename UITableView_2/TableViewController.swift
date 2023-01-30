//
//  TableViewController.swift
//  UITableView_2
//
//  Created by Raja Rai Kedarnathsingh on 09/02/2022.
//

import Foundation
import UIKit

class MyTableView : UITableView {
    
}

extension MyTableView : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "Test"
        return cell
    }
    
    
}
