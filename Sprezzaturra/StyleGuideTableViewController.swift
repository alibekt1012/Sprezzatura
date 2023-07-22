//
//  StyleGuideTableViewController.swift
//  Sprezzaturra
//
//  Created by Almat Alibekov on 22.07.2023.
//

import UIKit

class StyleGuideTableViewController: UITableViewController {

    var styleArray = [Styleguide(title: "Rule # 1", subTitle: "Keep It Low-Key", description: "The hallmark of sprezzatura is restraint. Over the top, garish adornments don’t convey an air of low-key coolness.", image: "Lowkey"), Styleguide(title: "Rule # 2", subTitle: "Unstructured Materials & Styles", description: "Breathable, lightweight fabrics such as linen and cotton provide a look of ease without appearing messy. ", image: "Material"), Styleguide(title: "Rule # 3", subTitle: "Loose & Unbuttoned", description: "The ‘less is more’ approach to this style of dress begs for unbuttoned blazers and loosely fastened buckles. The point is not to appear stately and solemn. ", image: "Loose"), Styleguide(title: "Rule # 4", subTitle: "Mix Casual & Formal", description: "I personally love this tip. I encourage the integration of tailored pieces into your everyday wardrobe, but without the correct styling, it can look like you’re en route to a christening or job interview.", image: "Mix")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return styleArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StyleCell", for: indexPath)

        // Configure the cell...
        let title = cell.viewWithTag(1000) as! UILabel
        title.text = styleArray[indexPath.row].title
        
        let subTitle = cell.viewWithTag(1001) as! UILabel
        subTitle.text = styleArray[indexPath.row].subTitle
        
        let image = cell.viewWithTag(1002) as! UIImageView
        image.image = UIImage(named: styleArray[indexPath.row].image)
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 8

        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = storyboard?.instantiateViewController(withIdentifier: "detailViewController") as! ViewController
        
        detailVC.styleGuide = styleArray[indexPath.row]
        navigationController?.show(detailVC, sender: self)
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
