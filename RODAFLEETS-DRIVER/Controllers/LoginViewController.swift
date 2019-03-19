//
//  LoginViewController.swift
//  RODAFLEETS-DRIVER
//
//  Created by Developer on 14/02/19.
//  Copyright © 2019 Neuweg Technologies. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var btnSubmit: UIButton!
    @IBOutlet weak var btnContactSupport: UIButton!
    @IBOutlet weak var txtfieldMobile : CustomTextfield!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
   txtfieldMobile.delegate = self

        btnSubmit.clipsToBounds = true
        btnSubmit.layer.cornerRadius = 15.0
        
        btnContactSupport.clipsToBounds = true
        btnContactSupport.layer.cornerRadius = 15.0
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        self.navigationController?.navigationBar.isHidden = false
        self.navigationController?.navigationBar.shadowImage = UIImage();
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
        self.navigationController?.navigationBar.isHidden = true
        self.navigationController?.navigationBar.shadowImage = UIImage();
    }
    
    @IBAction func btn_back_action(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        
        let maxLength = 10
        let currentString: NSString = txtfieldMobile.text! as! NSString
        let newString: NSString =
            currentString.replacingCharacters(in: range, with: string) as NSString
        return newString.length <= maxLength
    }
    
    
    
    
    @IBAction func btn_submit_action(_ sender: Any) {
        let status = validate()
        if status == true {
        let storyboard = UIStoryboard(name: "Main", bundle: nil);
        let viewName:NSString = "OTPViewController"
        let vc = storyboard.instantiateViewController(withIdentifier: viewName as String) as! OTPViewController
        self.navigationController?.show(vc, sender: self);
        }
    }
    
    func validate() -> Bool {
        
        var valid : Bool = true
        
        if (txtfieldMobile.text?.isEmpty)! || ((txtfieldMobile.text?.count)! < 10)  {
            txtfieldMobile.attributedPlaceholder = NSAttributedString(string: "Please enter Mobile no.", attributes : [NSAttributedString.Key.foregroundColor : UIColor.red])
            
            valid = false
        }
        
       
        return valid
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
