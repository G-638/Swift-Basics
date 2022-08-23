//
//  ProfileViewController.swift
//  DemoProject
//
//  Created by Calibraint on 23/04/22.
//

import UIKit

class ProfileViewController: UIViewController {

//    @IBOutlet weak var ProfileScreenTableView: UITableView!
    
//
//    @IBOutlet weak var avatarImg: UIImageView!
//    @IBOutlet weak var nameLbl: UILabel!
    
//    let dataSrc = ["ram", "ramu", "ramesh", "suresh", "rajesh", "rockey"]
//
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return dataSrc.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//        let cell = ProfileScreenTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        cell.textLabel?.text = dataSrc[indexPath.row]
//        return cell
//    }
//
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ProfileScreenTableView.delegate = self
        ProfileScreenTableView.dataSource = self

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
