//
//  HourlyCollectionViewCell.swift
//  Weather
//
//  Created by 김지민 on 2022/05/10.
//

import UIKit

class HourlyCollectionViewCell: UICollectionViewCell {
    static let identifier = "HourlyCollectionViewCell"

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var weatherImage: UIImageView!
    
    @IBOutlet weak var temperatureLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setData(_ hourlyData:HourlyDataModel){
        timeLabel.text = "\(hourlyData.hourlyTimeLabel)PM"
        weatherImage.image = UIImage(systemName: hourlyData.hourlyImageName)?.withTintColor(.white, renderingMode: .alwaysOriginal)
        temperatureLabel.text = "\(hourlyData.hourlyTemperatureLabel)°"
    }
    
    
    

}
