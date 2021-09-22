//
//  ViewController.swift
//  CustomTableView
//
//  Created by fan on 9/21/21.
//  Copyright © 2021 edu.northeastern.fya. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    var imageArr:[String] = ["apple", "banana", "orange", "peach", "strawberry", "watermelon"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return imageArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell =  tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.imgView.image = UIImage(named: imageArr[indexPath.row])
        cell.lblImage.text = imageArr[indexPath.row]
        return cell
    }
    

    @IBOutlet weak var tblView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tblView.delegate = self
        tblView.dataSource = self
    }


}

