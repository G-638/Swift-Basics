//
//  TerinaryVC.swift
//  SampleProject
//
//  Created by Calibraint on 26/04/22.
//

import UIKit

class TerinaryVC: UIViewController {

    @IBOutlet weak var demoLbl: UILabel!
    
    var text:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        demoLbl?.text = text
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
