//
//  ViewController.swift
//  SeattleImages
//
//  Created by Youying Qing on 12/9/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let images = ["Seattle1", "Seattle2", "Seattle3", "Seattle4", "Seattle5", "Seattle6", "Seattle7", "Seattle8", "Seattle9", "Seattle10"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("SeattleImagesTableViewCell", owner: self)?.first as! SeattleImagesTableViewCell
        cell.imgView?.image = UIImage(named: "Seattle\(indexPath.row+1)")
        cell.lblSeattle.text = images[indexPath.row]
        return cell
    }
}
