//
//  OTPViewController.swift
//  RODAFLEETS-DRIVER
//
//  Created by Developer on 15/02/19.
//  Copyright © 2019 Neuweg Technologies. All rights reserved.
//

import UIKit

class OTPViewController: UIViewController{

    @IBOutlet weak var viewTextfields: UIView!
    @IBOutlet weak var imageImage: UIImageView!
    @IBOutlet weak var btnVerify: UIButton!
    
    @IBOutlet weak var txtfieldOne: UITextField!
    @IBOutlet weak var txtfieldTwo: UITextField!
    @IBOutlet weak var txtfieldThree: UITextField!
    @IBOutlet weak var txtfieldFour: UITextField!
    @IBOutlet weak var txtfieldFive: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        btnVerify.clipsToBounds = true
        btnVerify.layer.cornerRadius = 15.0
        
        imageImage.clipsToBounds = true
        imageImage.layer.cornerRadius = imageImage.frame.height/2
        imageImage.layer.borderColor = UIColor.black.cgColor
        imageImage.layer.borderWidth = 0.5
        
        viewTextfields.layer.cornerRadius = 8.0
        viewTextfields.clipsToBounds = true
        viewTextfields.layer.borderWidth = 0.5
        viewTextfields.layer.borderColor = UIColor.lightGray.cgColor
        
        
        txtfieldOne.delegate = self
        txtfieldTwo.delegate = self
        txtfieldThree.delegate = self
        txtfieldFour.delegate = self
        txtfieldFive.delegate = self
        
       
        
        txtfieldOne.addTarget(self, action: #selector(textFieldDidChange(textField:)), for: UIControl.Event.editingChanged)
        txtfieldTwo.addTarget(self, action: #selector(textFieldDidChange(textField:)), for: UIControl.Event.editingChanged)
        txtfieldThree.addTarget(self, action: #selector(textFieldDidChange(textField:)), for: UIControl.Event.editingChanged)
        txtfieldFour.addTarget(self, action: #selector(textFieldDidChange(textField:)), for: UIControl.Event.editingChanged)
        txtfieldFive.addTarget(self, action: #selector(textFieldDidChange(textField:)), for: UIControl.Event.editingChanged)
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        self.navigationController?.navigationBar.isHidden = false
        self.navigationController?.navigationBar.shadowImage = UIImage();
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
        self.navigationController?.navigationBar.isHidden = false
        self.navigationController?.navigationBar.shadowImage = UIImage();
    }
    
    
    // textfield delegate methods..
    
   @objc func textFieldDidChange(textField: UITextField){
        
        let text = textField.text
        
        if (text?.utf16.count)! >= 1{
            switch textField{
            case txtfieldOne:
                txtfieldTwo.becomeFirstResponder()
            case txtfieldTwo:
                txtfieldThree.becomeFirstResponder()
            case txtfieldThree:
                txtfieldFour.becomeFirstResponder()
            case txtfieldFour:
                txtfieldFive.becomeFirstResponder()
            case txtfieldFive:
                txtfieldFive.resignFirstResponder()
            default:
                break
            }
        }else{
            txtfieldOne.becomeFirstResponder()
        }

    }
    
    
    
    @IBAction func btn_back_action(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    
    @IBAction func btn_verify_action(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil);
        let viewName:NSString = "AssignmentDetailViewController"
        let vc = storyboard.instantiateViewController(withIdentifier: viewName as String) as! AssignmentDetailViewController
        self.navigationController?.show(vc, sender: self);
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

    extension OTPViewController: UITextFieldDelegate{
        func textFieldDidBeginEditing(_ textField: UITextField) {
            textField.text = ""
        }
        
        
      
        
}
