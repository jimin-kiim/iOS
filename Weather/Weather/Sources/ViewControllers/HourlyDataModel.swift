//
//  HourlyDataModel.swift
//  Weather
//
//  Created by 김지민 on 2022/05/10.
//

import Foundation

struct HourlyDataModel{
    let hourlyImageName:String
    let hourlyTimeLabel:String
    let hourlyTemperatureLabel:String
    
}

extension HourlyDataModel{
    static let sampleData:[HourlyDataModel]=[
        HourlyDataModel(hourlyImageName:"cloud.fill",hourlyTimeLabel:"3",hourlyTemperatureLabel:"24"),
        HourlyDataModel(hourlyImageName:"cloud.heavyrain.fill",hourlyTimeLabel:"4",hourlyTemperatureLabel:"23"),
        HourlyDataModel(hourlyImageName:"cloud.snow.fill",hourlyTimeLabel:"5",hourlyTemperatureLabel:"23"),
        HourlyDataModel(hourlyImageName:"cloud.bolt.fill",hourlyTimeLabel:"6",hourlyTemperatureLabel:"22"),
        HourlyDataModel(hourlyImageName:"sunset.fill",hourlyTimeLabel:"7",hourlyTemperatureLabel:"21"),
        HourlyDataModel(hourlyImageName:"cloud.fill",hourlyTimeLabel:"8",hourlyTemperatureLabel:"20"),
        HourlyDataModel(hourlyImageName:"cloud.fill",hourlyTimeLabel:"9",hourlyTemperatureLabel:"18"),
        HourlyDataModel(hourlyImageName:"cloud.drizzle.fill",hourlyTimeLabel:"10",hourlyTemperatureLabel:"17"),
        HourlyDataModel(hourlyImageName:"cloud.drizzle.fill",hourlyTimeLabel:"11",hourlyTemperatureLabel:"16")
        
    ]
}
