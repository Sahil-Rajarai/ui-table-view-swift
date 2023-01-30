//
//  MyCollectionViewController.swift
//  UITableView_2
//
//  Created by Raja Rai Kedarnathsingh on 04/05/2022.
//

import UIKit

class MyCollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    struct City {
        let title: String
        let imageName: String
    }
    
    let data: [City] = [
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

        // Do any additional setup after loading the view.
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return  self.data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCollectionCell
        
        cell.myCityImage.image = UIImage(named: data[indexPath.row].imageName)
        cell.myCityImage.layer.cornerRadius = 50.0
        
        return cell
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
