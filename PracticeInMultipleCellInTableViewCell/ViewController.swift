//
//  ViewController.swift
//  PracticeInMultipleCellInTableViewCell
//
//  Created by Sakshi Yelmame on 29/03/23.
//

import UIKit

class ViewController: UIViewController {
    var nameArray = ["sakshi", "shivani", "akshay", "samarth", "sachin", "ved"]
    var imageArray = ["clear", "cloud", "rain"]
    var imageArray1 = ["clear", "cloud", "rain"]

    @IBOutlet weak var nameTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    nameTableView.register(FirstTableViewCell.nib(), forCellReuseIdentifier: FirstTableViewCell.identifire)
    nameTableView.register(SecondTableViewCell.nib(), forCellReuseIdentifier: SecondTableViewCell.identifire)
    nameTableView.register(ThirdTableViewCell.nib(), forCellReuseIdentifier: ThirdTableViewCell.identifire)

    }

  
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        3
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return nameArray.count
        } else{
            return imageArray.count
        }
        return imageArray1.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = nameTableView.dequeueReusableCell(withIdentifier: "FirstTableViewCell", for: indexPath) as! FirstTableViewCell
            //cell.nameUILabel.text = nameArray[indexPath.row]
            cell.configure(names: nameArray[indexPath.row])
            
            return cell
        } else {
            let cell = nameTableView.dequeueReusableCell(withIdentifier: "SecondTableViewCell", for: indexPath) as! SecondTableViewCell
            cell.configure(images: imageArray[indexPath.row])
            // cell.imageUIImageView.image = UIImage(named: imageArray[indexPath.row])
            
            return cell
        }
        
            let cell = nameTableView.dequeueReusableCell(withIdentifier: "SecondTableViewCell", for: indexPath) as! SecondTableViewCell
            cell.configure(images: imageArray[indexPath.row])
           return cell
        
    }
}
