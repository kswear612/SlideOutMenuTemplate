//
//  BackTableVC.swift
//  SlideOutMenuTemplate
//
//  Created by Kyle Swearingen on 12/10/17.
//  Copyright © 2017 Kyle Swearingen. All rights reserved.
//

import Foundation

class BackTableVC: UITableViewController {
    
    //MARK: Variables
    var tableArray = [String]()
    
    //MARK: Functions
    override func viewDidLoad() {
        tableArray = ["Home", "Screen1", "Screen2", "Screen3"]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: tableArray[indexPath.row], for: indexPath) as UITableViewCell
        
        cell.textLabel?.text = tableArray[indexPath.row]
        
        return cell
    }
    
    
}
