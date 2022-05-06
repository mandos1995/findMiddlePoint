//
//  WeatherViewController.swift
//  FindMiddlePoint
//
//  Created by 김민석 on 2022/05/02.
//

import UIKit

class WeatherViewController: UIViewController {
    private lazy var dataManager: WeatherDelegate = WeahterDataManager()
    @IBOutlet weak var addressLabel: UILabel! {
        didSet {
            addressLabel.text = DistanceManager.shared.middleAddress ?? ""
        }
    }
    @IBOutlet weak var weatherTypeImageView: UIImageView!
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var windSpeedLabel: UILabel!
    
    var temp = ""
    var weatherType: WeatherMainType?
    override func viewDidLoad() {
        super.viewDidLoad()
        let y = Double(DistanceManager.shared.middleY ?? "") ?? 0
        let x = Double(DistanceManager.shared.middleX ?? "") ?? 0
        dataManager.getWeatherResponse(y: y, x: x, delegate: self)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
