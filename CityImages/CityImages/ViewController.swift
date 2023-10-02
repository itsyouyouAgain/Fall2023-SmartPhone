//
//  ViewController.swift
//  CityImages
//
//  Created by Youying Qing on 9/17/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: "map_usa")
    }

    @IBAction func seattleImage(_ sender: Any) {
        imageView.image = UIImage(named: "SpaceNeedle")
    }
    
    @IBAction func newYorkImage(_ sender: Any) {
        imageView.image = UIImage(named: "NewYork")
    }
    
    
    @IBAction func LAImage(_ sender: Any) {
        imageView.image = UIImage(named: "LA")
    }
    
    
    @IBAction func LVimage(_ sender: Any) {
        imageView.image = UIImage(named: "LV")
    }
    
    
    @IBAction func AustinImage(_ sender: Any) {
        imageView.image = UIImage(named: "Austin")
    }
}

