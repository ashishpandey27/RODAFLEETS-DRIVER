//
//  ConfirmDeliveryViewController.swift
//  RODAFLEETS-DRIVER
//
//  Created by Developer on 15/02/19.
//  Copyright © 2019 Neuweg Technologies. All rights reserved.
//

import UIKit
import SwiftSignatureView

class ConfirmDeliveryViewController: UIViewController {
    @IBOutlet weak var btnSubmit: UIButton!
    
    @IBOutlet weak var signatureView: SwiftSignatureView!
    @IBOutlet weak var btn_addSignature: UIButton!
    
    var image123 : UIImage? = nil
   
    override func viewDidLoad() {
        super.viewDidLoad()

        self.signatureView.delegate = self as? SwiftSignatureViewDelegate
        
        btn_addSignature.clipsToBounds = true
        btn_addSignature.layer.cornerRadius = 15.0
        
        btnSubmit.clipsToBounds = true
        btnSubmit.layer.cornerRadius = 15.0
        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        
        self.navigationController?.navigationBar.isHidden = false
        self.navigationController?.navigationBar.shadowImage = UIImage();
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
        self.navigationController?.navigationBar.isHidden = false
        self.navigationController?.navigationBar.shadowImage = nil;
    }
    
    @IBAction func btn_back_action(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    
    
    //MARK: Delegate
    
    
    public func swiftSignatureViewDidTapInside(_ view: SwiftSignatureView) {
        print("Did tap inside")
    }
    
    public func swiftSignatureViewDidPanInside(_ view: SwiftSignatureView) {
        print("Did pan inside")
    }
  
    @IBAction func didTapClear() {
        
        self.image123 = signatureView.signature!
    
        let imageData: NSData = self.image123!.pngData()! as NSData
        print(imageData)
    }
    
   
   
    
    
    
    
    
    
    
    
    
    
    
//    public static func storeImageToDocumentDirectory(image: UIImage, fileName: String) -> URL? {
//        guard let data = image.pngData() else {
//            return nil
//        }
//        let fileURL = self.fileURLInDocumentDirectory(fileName)
//        do {
//            try data.write(to: fileURL)
//            return fileURL
//        } catch {
//            return nil
//        }
//    }
//
//
//    public static var documentsDirectoryURL: URL {
//        return FileManager.default.urls(for:.documentDirectory, in: .userDomainMask)[0]
//    }
//    public static func fileURLInDocumentDirectory(_ fileName: String) -> URL {
//        return self.documentsDirectoryURL.appendingPathComponent(fileName)
//
//    }
//
    @IBAction func btnSubmit_action(_ sender: Any) {
        
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
