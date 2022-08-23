//
//  SecondVC.swift
//  SampleProject
//
//  Created by Calibraint on 26/04/22.
//

import UIKit

class SecondVC: UIViewController {

    @IBOutlet weak var introLabel: UILabel!
    
    var myData: String!
    
    var mainViewController:ViewController?

    @IBAction func onButtonTap()
    {
        mainViewController?.onUserAction(data: "The quick brown fox jumps over the lazy dog")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        introLabel?.text = myData
        
        
//        if let vc = self.topViewController as? ViewController{
//                    vc.data = self.myData
//        }

        // Do any additional setup after loading the view.
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
