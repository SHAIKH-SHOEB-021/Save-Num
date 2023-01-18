//
//  ViewController.swift
//  Save Num
//
//  Created by shoeb on 17/01/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var contactTF: UITextField!
    @IBOutlet weak var relationTF: UITextField!
    @IBOutlet weak var nameLBL: UILabel!
    @IBOutlet weak var contactLBL: UILabel!
    @IBOutlet weak var relationLBL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let storeName = UserDefaults.standard.object(forKey: "nameKey")
        let storeContact = UserDefaults.standard.object(forKey: "contactKey")
        let storeRelation = UserDefaults.standard.object(forKey: "relationKey")
        //both same method
        if storeName != nil{
            nameLBL.text = "\(storeName!)"
        }
        if let newContact = storeContact as? String{
            contactLBL.text = newContact
        }
        if let newRelation = storeRelation as? String{
            relationLBL.text = newRelation
        }
    }
    // Save Data Function UserDefault
    @IBAction func saveBTN(_ sender: Any) {
        UserDefaults.standard.set(nameTF.text, forKey: "nameKey")
        UserDefaults.standard.set(contactTF.text, forKey: "contactKey")
        UserDefaults.standard.set(relationTF.text, forKey: "relationKey")
        nameLBL.text = nameTF.text
        contactLBL.text = contactTF.text
        relationLBL.text = relationTF.text
    }
    // Delete Data Function UserDefault
    @IBAction func deleteBTN(_ sender: Any) {
        let storeName = UserDefaults.standard.object(forKey: "nameKey")
        let storeContact = UserDefaults.standard.object(forKey: "contactKey")
        let storeRelation = UserDefaults.standard.object(forKey: "relationKey")
        
        if storeName != nil{
            UserDefaults.standard.removeObject(forKey: "nameKey")
            nameLBL.text = "#####N#####"
        }
        if storeContact != nil{
            UserDefaults.standard.removeObject(forKey: "contactKey")
            contactLBL.text = "#####C#####"
        }
        if storeRelation != nil{
            UserDefaults.standard.removeObject(forKey: "relationKey")
            relationLBL.text = "#####R#####"
        }
        
    }
}

