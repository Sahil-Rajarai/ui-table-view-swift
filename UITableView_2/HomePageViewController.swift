//
//  HomePageViewController.swift
//  UITableView_2
//
//  Created by Raja Rai Kedarnathsingh on 28/04/2022.
//

import UIKit
import SwiftUI

class HomePageViewController: UIViewController {
    
    @IBOutlet weak var verticalViewMyCities: UIButton!
    @IBOutlet weak var horizontalViewMyCities: UIButton!



    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onTapHorizontalViewMyCities() {
        print("on click")
        let hostingController = UIHostingController(rootView: MyCities())
        self.present(hostingController, animated: true, completion: nil)
    }
    
    @IBAction func onTapVerticalViewMyCities() {
        print("on click")
        let signinVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "verticalView") as! UINavigationController
//            self.show(<#T##vc: UIViewController##UIViewController#>, sender: <#T##Any?#>)
        self.present(signinVC, animated: true, completion: nil)
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
