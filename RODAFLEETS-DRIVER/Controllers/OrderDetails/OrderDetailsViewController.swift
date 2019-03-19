//
//  OrderDetailsViewController.swift
//  RODAFLEETS-DRIVER
//
//  Created by Developer on 15/02/19.
//  Copyright © 2019 Neuweg Technologies. All rights reserved.
//

import UIKit

class OrderDetailsViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {

      @IBOutlet weak var tbleviewOBJ: UITableView!
    let busPhone : Int = 1234567890
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.isHidden = false
        
        tbleviewOBJ.dataSource = self
        tbleviewOBJ.delegate = self

         setUpNavigationBarItem()
       
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        self.navigationController?.navigationBar.isHidden = false
        self.navigationController?.navigationBar.shadowImage = nil;
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
        self.navigationController?.navigationBar.isHidden = false
        self.navigationController?.navigationBar.shadowImage = nil;
    }
    
    override func viewDidAppear(_ animated: Bool) {
       
    }
    
    @IBAction func btn_back_action(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    // tableview methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.row == 0 {
            
            return UITableView.automaticDimension
        }
        else if indexPath.row == 1 {
            
                return UITableView.automaticDimension
        }
        else  {
           
            return 220
         }
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tbleviewOBJ.dequeueReusableCell(withIdentifier: "cellDistance", for: indexPath) as! DistanceTableViewCell
              
                return cell
            }
                
            else if indexPath.row == 1 {
                let cell1 = tbleviewOBJ.dequeueReusableCell(withIdentifier: "cellShipment", for: indexPath) as! ShipmentTableViewCell
                
                if cell1.isSelected {
                    cell1.backgroundColor = UIColor.clear
                }
                
                
                return cell1
            }
                
            else  {
                let cell2 = tbleviewOBJ.dequeueReusableCell(withIdentifier: "cellTracking", for: indexPath) as! TrackingTableViewCell
                
                if cell2.isSelected {
                    cell2.backgroundColor = UIColor.clear
                }
                
                return cell2
            }
        }
    
    
    func setUpNavigationBarItem() {

           let firstFrame = CGRect(x: 0, y: 12, width: 100, height: 20)

            let firstLabel = UILabel(frame: firstFrame)
            firstLabel.font = UIFont(name:"bahnschrift" , size: 14.0)
            firstLabel.text = "ORDER NUMBER: CRN0377287"
            firstLabel.textAlignment = .center
        
            navigationItem.titleView = firstLabel

    }
    
    
    @IBAction func btn_confirm_delivery_action(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil);
        let viewName:NSString = "ConfirmDeliveryViewController"
        let vc = storyboard.instantiateViewController(withIdentifier: viewName as String) as! ConfirmDeliveryViewController
        self.navigationController?.show(vc, sender: self)
    
    }
    
    @IBAction func call_Roda_admin_action(_ sender: Any) {
        
        if let phoneCallURL = URL(string: "tel://\(busPhone)") {
            
            let application:UIApplication = UIApplication.shared
            if (application.canOpenURL(phoneCallURL)) {
                application.open(phoneCallURL, options: [:], completionHandler: nil)
            }
        }
    }
    
    @IBAction func call_cutomer(_ sender: Any) {
        
        if let phoneCallURLCustomer = URL(string: "tel://\(busPhone)") {
            
            let application:UIApplication = UIApplication.shared
            if (application.canOpenURL(phoneCallURLCustomer)) {
                application.open(phoneCallURLCustomer
                    , options: [:], completionHandler: nil)
            }
        }
    }
}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


