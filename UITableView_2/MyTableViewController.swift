//
//  MyTableViewController.swift
//  UITableView_2
//
//  Created by Raja Rai Kedarnathsingh on 09/02/2022.
//

import UIKit

class MyTableViewController: UITableViewController {
    
    struct City {
        let title: String
        let imageName: String
        var isFavourite: Bool = false
    }
//    var data: [City]?
    var data: [City] = [
        City(title: "London", imageName: "london"),
        City(title: "Paris", imageName: "paris"),
        City(title: "Glasgow", imageName: "glasgow"),
        City(title: "Mauritius", imageName: "mu"),
        City(title: "Budapest", imageName: "budapest"),
        City(title: "Cape Town", imageName: "ca"),
        City(title: "Dubai", imageName: "dubai"),
        City(title: "Rio", imageName: "rio"),
        City(title: "Brastislava", imageName: "bratislava"),
        City(title: "Berlin", imageName: "berlin"),
        City(title: "London", imageName: "london"),
        City(title: "Paris", imageName: "paris"),
        City(title: "Glasgow", imageName: "glasgow"),

    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "MyCustomCell", bundle: nil), forCellReuseIdentifier: "MyCustomCell")
        tableView.register(UINib(nibName: "MySwitchViewCell", bundle: nil), forCellReuseIdentifier: "MySwitchViewCell")
        tableView.dataSource = self
        tableView.delegate = self
        
//        data?.append(City(title: "Mau", imageName: "mu"))

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return data.count + 1
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let mySwitchViewCell = tableView.dequeueReusableCell(withIdentifier: "MySwitchViewCell") as! MySwitchViewCell
        
        let switchView = UISwitch(frame: .zero)
        switchView.setOn(false, animated: true)
        switchView.tag = indexPath.row
        switchView.addTarget(self, action: #selector(didTapAdvertise), for:UIControl.Event.valueChanged)
        
        // constraint constant

        mySwitchViewCell.accessoryView = switchView
        
        if indexPath.row == 0 {
            return mySwitchViewCell
        }
        
        let city = data[indexPath.row - 1]
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCustomCell", for: indexPath) as! MyCustomCell

        cell.label.text = city.title
        cell.iconImageView.image = UIImage(named: city.imageName ?? "")
        cell.favourite.isHidden = true
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView,
                            didSelectRowAt indexPath: IndexPath) {

        var city = data[indexPath.row - 1]
        city.isFavourite = true
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCustomCell", for: indexPath) as! MyCustomCell
        
        cell.label.text = city.title
        cell.iconImageView.image = UIImage(named: city.imageName ?? "")
        cell.favourite.isHidden = false
        
        print(city)
    }
    
    @objc func didTapAdvertise(mySwitch: UISwitch) {
        let value = mySwitch.isOn
        // Do something
        print("switch value changed \(value)")
        print(data[0])
        
//        for city:City in data {
//            if city.isFavourite == true {
//                print(city)
//            }
//        }

    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
