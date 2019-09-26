//
//  TableViewController.swift
//  Custom_cell
//
//  Created by COE-009 on 25/09/19.
//  Copyright © 2019 COE-009. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
   var arr = [
                [
                    "Image" : #imageLiteral(resourceName: "image2"),
                    "Name": "Priya",
                    "EmailID":"quri@123",
                    "Mobile":"8767436327",
                ],
                [
                    "Image" : #imageLiteral(resourceName: "image1"),
                    "Name": "Darvin",
                    "EmailID":"quri@123",
                    "Mobile":"8767436327",
                    ],
                [
                    "Image" : #imageLiteral(resourceName: "image3"),
                    "Name": "Dhyan",
                    "EmailID":"quri@123",
                    "Mobile":"8767436327",
                    ],
            ]
    
          override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arr.count
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCustomCell", for: indexPath) as! TableViewCell
            cell.imgview.image = arr[indexPath.row]["Image"] as? UIImage
            cell.lblname.text = arr[indexPath.row]["Name"] as? String
            cell.lblmobile.text = arr[indexPath.row]["Mobile"] as? String
            cell.lblemailid.text = arr[indexPath.row]["EmailID"] as? String
        
        
        // Configure the cell...

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
