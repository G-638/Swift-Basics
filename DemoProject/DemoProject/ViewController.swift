//
//  ViewController.swift
//  DemoProject
//
//  Created by Calibraint on 17/04/22.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate, UITextFieldDelegate {
    
    @IBOutlet weak var textLb1: UILabel!
    var didTap = true

    @IBOutlet weak var nameTextField: UITextField!

    @IBOutlet weak var phoneNoTextField: UITextField!

    @IBOutlet weak var addressTextView: UITextView!

    @IBOutlet weak var notificationLabel: UILabel!

    @IBOutlet weak var notificationToggle: UISwitch!

    @IBOutlet weak var submitButton: UIButton!

    @IBAction func notificationEnableDisable(_ sender: Any) {
        if(notificationToggle.isOn){
            notificationLabel.text = "Notification Enable"
        }
        else{
            notificationLabel.text = "Notification Disable"

        }
    }

    @IBAction func buttonAction(_ sender: Any) {
        if(nameTextField.text?.isEmpty ?? false || phoneNoTextField.text?.isEmpty ?? false || addressTextView.text?.isEmpty ?? false){
            print("submit")
        }
        else{
            print("Your name \(String(describing: nameTextField.text!))")
            print("Your mobile no \(String(describing: phoneNoTextField.text!))")
            print("Your Address is \(String(describing: addressTextView.text!))")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tapGesture = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing))
         view.addGestureRecognizer(tapGesture)

        setInitViews()
        textLb1.font = .italicSystemFont(ofSize: 30)
        textLb1.textAlignment = .center


        addressTextView.layer.borderWidth = 1;
        let borderColor : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)

        nameTextField.layer.borderColor = borderColor.cgColor

        phoneNoTextField.layer.borderColor = borderColor.cgColor

        addressTextView.layer.borderColor = borderColor.cgColor
        
//        let tap = UITapGestureRecognizer(target: self, action: #selector(sbmtBtnTapped(sender:)));       submitButton.addGestureRecognizer(tap)
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        let borderColor : UIColor = UIColor(red: 0, green: 0.85, blue: 0, alpha: 1.0)
        if(textField.accessibilityIdentifier == nameTextField.accessibilityIdentifier) {
            nameTextField.layer.borderColor = borderColor.cgColor
        }
        else{
            phoneNoTextField.layer.borderColor = borderColor.cgColor
        }
        print("begin")
        return true
    }
        
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("did end")
        let borderColor : UIColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        nameTextField.layer.borderColor = borderColor.cgColor
        phoneNoTextField.layer.borderColor = borderColor.cgColor
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        let borderColor : UIColor = UIColor(red: 0, green: 0.85, blue: 0, alpha: 1.0)
        addressTextView.layer.borderColor = borderColor.cgColor
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        let borderColor : UIColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        addressTextView.layer.borderColor = borderColor.cgColor
    }
    
    func setInitViews(){
        phoneNoTextField.delegate = self
        nameTextField.delegate = self
        addressTextView.delegate = self
       }
    

    @objc func sbmtBtnTapped(sender: UITapGestureRecognizer){
        print("call")
        if(didTap){
            print("success")
        }
        else{
            textLb1.backgroundColor = UIColor.black
            didTap = true
        }
    }
}

