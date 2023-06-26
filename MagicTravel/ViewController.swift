//
//  ViewController.swift
//  MagicTravel
//
//  Created by Telles Ivan on 6/23/23.
//

import UIKit

// MVC: This is the CONTROLLER
class ViewController: UIViewController {

    // !You gurantee there will be a value
    // MVC: This is the VIEW
    @IBOutlet var countriesTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


// Extension: Addition to your class, ViewController extends(confirms) to UITableViewDataSource.
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
//    Rows
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        return tableViewCell
            
    }
    
    
}
