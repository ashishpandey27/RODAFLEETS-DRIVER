//
//  SelectLanguageViewController.swift
//  RODAFLEETS-DRIVER
//
//  Created by Developer on 14/02/19.
//  Copyright © 2019 Neuweg Technologies. All rights reserved.
//

import UIKit

class SelectLanguageViewController: UIViewController {

    @IBOutlet weak var btnHindi: UIButton!
    @IBOutlet weak var btnEnglish: UIButton!
    @IBOutlet weak var btnForward: UIButton!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        btnHindi.clipsToBounds = true
        btnHindi.layer.cornerRadius = 15.0
        
        btnEnglish.clipsToBounds = true
        btnEnglish.layer.cornerRadius = 15.0
        btnEnglish.isSelected = true
        btnForward.layer.cornerRadius = btnForward.frame.height/2
        
        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        
        self.navigationController?.navigationBar.isHidden = true
        self.navigationController?.navigationBar.shadowImage = UIImage()
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
        self.navigationController?.navigationBar.isHidden = true
        self.navigationController?.navigationBar.shadowImage = UIImage();
    }
    
    
    @IBAction func btn_language_action(_ sender: Any) {
        
        btnHindi.isSelected = !btnHindi.isSelected
        btnEnglish.isSelected = !btnEnglish.isSelected
        
        if (btnHindi.isSelected)
        {
            btnHindi.backgroundColor = UIColor(displayP3Red: 252/255, green: 154/255, blue: 2/255, alpha: 1.0)
            btnEnglish.backgroundColor = UIColor(displayP3Red: 241/255, green: 241/255, blue: 241/255, alpha: 1.0)
            btnHindi.isSelected = true
            btnEnglish.isSelected = false
        }
       
        if (btnEnglish.isSelected)
        {
            btnEnglish.backgroundColor = UIColor(displayP3Red: 252/255, green: 154/255, blue: 2/255, alpha: 1.0)
             btnHindi.backgroundColor = UIColor(displayP3Red: 241/255, green: 241/255, blue: 241/255, alpha: 1.0)
            btnHindi.isSelected = false
            btnEnglish.isSelected = true
        }
   
    }
  
  
    
    @IBAction func btn_forward_action(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil);
        let viewName:NSString = "LoginViewController"
        let vc = storyboard.instantiateViewController(withIdentifier: viewName as String) as! LoginViewController
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
