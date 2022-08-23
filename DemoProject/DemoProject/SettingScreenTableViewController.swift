//
//  SettingScreenTableViewController.swift
//  DemoProject
//
//  Created by Calibraint on 25/04/22.
//

import UIKit

class SettingScreenTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return profiles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! SettingScreenTableCellView
        let profile = profiles[indexPath.row]
        cell.avatarImg.image = UIImage(named: profile)
        cell.nameLbl.text = profile
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    // Get data from model
    let selectedCell = tableView.cellForRow(at: indexPath) as! SettingScreenTableCellView
    // Get data from cell
        let detailTextLabel = selectedCell.nameLbl.text

    
        print(detailTextLabel as Any)
}
    
    let profiles = ["person1", "person2", "person3", "person4", "person5", "person6"]
    
  
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
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
