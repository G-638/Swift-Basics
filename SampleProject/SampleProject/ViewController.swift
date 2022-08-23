//
//  ViewController.swift
//  SampleProject
//
//  Created by Calibraint on 21/04/22.
//

import UIKit

class ViewController: UIViewController {
    let sb = UIStoryboard(name: "Main", bundle: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showSecondVC(_ sender: Any) {
        let navigation = sb.instantiateViewController(identifier: "SecondVC") as! SecondVC
        navigation.myData = "Data that you want to pass"
        self.navigationController?.pushViewController(navigation, animated: true)
//        present(navigation, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
    if segue.destination is TerinaryVC {
    let vc = segue.destination as? TerinaryVC
    vc?.text = "Demo segue"
    }
    }
    
    func onUserAction(data: String)
    {
    print("Data received: \(data)")
    }
    
}

