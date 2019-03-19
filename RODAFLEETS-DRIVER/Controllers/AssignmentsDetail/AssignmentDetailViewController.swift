//
//  AssignmentDetailViewController.swift
//  RODAFLEETS-DRIVER
//
//  Created by Developer on 15/02/19.
//  Copyright © 2019 Neuweg Technologies. All rights reserved.
//

import UIKit

class AssignmentDetailViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
  
    @IBOutlet weak var tblviewOBJ: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tblviewOBJ.dataSource = self
        tblviewOBJ.delegate = self
        
        tblviewOBJ.separatorStyle = .none
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        self.navigationController?.navigationBar.isHidden = false
        self.navigationController?.navigationBar.shadowImage = nil;
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
        self.navigationController?.navigationBar.isHidden = false
        self.navigationController?.navigationBar.shadowImage = UIImage();
    }
    
    
    @IBAction func btn_back_action(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "BOOKING FOR THE DAY"
        }
        else {
            return "UPCOMING BOOKINGS"
        }
    }
    
   
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 0 {
            
            let header = tblviewOBJ.dequeueReusableCell(withIdentifier: "cellHeaderToday") as! HeaderTodayTableViewCell
           // header.isUserInteractionEnabled = false
            return header
        } else {
            
            let header1 = tblviewOBJ.dequeueReusableCell(withIdentifier: "cellHeaderFuture") as! HeaderFutureTableViewCell
           // header1.isUserInteractionEnabled = false
            return header1
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return 7
        }
        else {
            return 6
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = self.tblviewOBJ.dequeueReusableCell(withIdentifier: "cellBookingToday", for: indexPath) as! TodayBookingTableViewCell
           
            
            return cell
        }
        else {
            let cell = self.tblviewOBJ.dequeueReusableCell(withIdentifier: "cellBookingFuture", for: indexPath) as! UpcomingBookingsTableViewCell
            
            return cell
        }
        
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("section: \(indexPath.section)")
        print("row: \(indexPath.row)")
        
        switch indexPath.section {

        case 0 :
            let storyboard = UIStoryboard(name: "Main", bundle: nil);
            let viewName:NSString = "OrderDetailsViewController"
            let vc = storyboard.instantiateViewController(withIdentifier: viewName as String) as! OrderDetailsViewController
            self.navigationController?.show(vc, sender: self)

        case 1 :
            let storyboard = UIStoryboard(name: "Main", bundle: nil);
            let viewName:NSString = "ConfirmDeliveryViewController"
            let vc = storyboard.instantiateViewController(withIdentifier: viewName as String) as! ConfirmDeliveryViewController
            self.navigationController?.show(vc, sender: self)

        default :

          print("no item selected")
        }
  
        
        
        
//        if indexPath.row == 0 {
//
//            let storyboard = UIStoryboard(name: "Main", bundle: nil);
//            let viewName:NSString = "OrderDetailsViewController"
//            let vc = storyboard.instantiateViewController(withIdentifier: viewName as String) as! OrderDetailsViewController
//            self.navigationController?.show(vc, sender: self)
//
//        }
       
        
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
