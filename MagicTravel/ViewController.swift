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
    
//    declare initial countries (var --> will be modified)
    var countries: Array<String> = ["USA", "BRASIL", "MEXICO", "AFRICA", "England", "China", "Korea", "Japan"]

    
//     struct, another way of declaring data
    struct Constants {
//        static means that you dont need to create an instance
        static let cellIdentifier = "MagicCountryCell"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        countriesTableView.register(UITableViewCell.self, forCellReuseIdentifier: Constants.cellIdentifier)
    }


}


// Extension: Addition to your class, ViewController extends(confirms) to UITableViewDataSource.
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        the countries.count will depend how many times rows will be rendered
        return countries.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
//    Rows
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableViewCell = tableView.dequeueReusableCell(withIdentifier: Constants.cellIdentifier, for: indexPath)
        
        var tableViewCellContentConfig = tableViewCell.defaultContentConfiguration()
        tableViewCellContentConfig.text = countries[indexPath.row]
        
        tableViewCell.contentConfiguration = tableViewCellContentConfig
        
        
        return tableViewCell
    }
    
    
}
