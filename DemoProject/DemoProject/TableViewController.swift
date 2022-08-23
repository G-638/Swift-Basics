//
//  TableViewController.swift
//  DemoProject
//
//  Created by Calibraint on 22/04/22.
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSrc.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
        let cell = tableViewName.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = dataSrc[indexPath.row]
        cell.textLabel?.textAlignment = .center
        return cell
    }
    
    
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Get data from model
        let selectedCell = tableView.cellForRow(at: indexPath)
        // Get data from cell
            let detailTextLabel = selectedCell?.textLabel?.text
        let message = "You selected (\(detailTextLabel ?? "no details"))"
        
        let alert = UIAlertController(title: "Information",
                                           message: message,
                                           preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Close",
                                         style: .default,
                                         handler: nil)

        alert.addAction(cancelAction)
        self.present(alert, animated: true)
        
//        tableView.deselectRow(at: indexPath, animated: true)
    }

    @IBOutlet weak var tableViewName: UITableView!
    var dataSrc : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        tableViewName.delegate = self
        tableViewName.dataSource = self
        dataSrc = ["Python","JavaScript","Java","Swift","GoLang","C#","C++","Scala","Ruby","SQL","Postgresql", "mysql","nosql","rust"]

        
    }
    

    /*
    // MARK: - x

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
