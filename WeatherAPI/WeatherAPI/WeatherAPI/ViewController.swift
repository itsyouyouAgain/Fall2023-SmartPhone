//
//  ViewController.swift
//  WeatherAPI
//
//  Created by Youying Qing on 12/9/23.
//

import UIKit
import Alamofire
import SwiftyJSON
import SwiftSpinner

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var weatherInfo: [weatherClass] = [weatherClass]()

    @IBOutlet weak var tblView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func getWeatherInformation(_ sender: Any) {
        var citys = ""

        let citysStr = citys.dropLast()
        print(citysStr )
        let url = "\(baseURL)"
        print(url)
        
        AF.request(url).responseJSON{ response in
            if response.error != nil{
                print(response.error?.localizedDescription)
                return
            }
            guard let rawData = response.data else {return}
            guard let jsonArray = JSON(rawData).array else {return}
            
            for cityJSON in jsonArray{
                print("City : \(cityJSON)")
                
                let city = cityJSON["city"].stringValue
                let temperature = cityJSON["temperature"].intValue
                let conditions = cityJSON["conditions"].stringValue
                
                let weatherClass = weatherClass()
               
                weatherClass.city = city
                weatherClass.temperature = temperature
                weatherClass.conditions = conditions
                self.weatherInfo.append(weatherClass)
            }
            self.tblView.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        weatherInfo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let city = weatherInfo[indexPath.row].city
        let temperature = weatherInfo[indexPath.row].temperature
        let conditions = weatherInfo[indexPath.row].conditions
        cell.textLabel?.text = "City: \(city) Temperature: \(temperature) Conditions: \(conditions)"
        return cell
    }
}

