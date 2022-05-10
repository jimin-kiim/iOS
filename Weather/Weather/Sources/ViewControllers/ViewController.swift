//
//  ViewController.swift
//  Weather
//
//  Created by 김지민 on 2022/05/10.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var hourlyCollectionView: UICollectionView!
    @IBOutlet weak var loacationLabel: UILabel!
    @IBOutlet weak var currentTempLabel: UILabel!
    @IBOutlet weak var summaryLabel: UILabel!
    @IBOutlet weak var dailyHighestTempLabel: UILabel!
    @IBOutlet weak var dailyLowestTempLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: HourlyCollectionViewCell.identifier, bundle: nil)
        hourlyCollectionView.register(nib, forCellWithReuseIdentifier: HourlyCollectionViewCell.identifier)
        
        hourlyCollectionView.delegate=self
        hourlyCollectionView.dataSource=self
    }
    
    
}

extension ViewController : UICollectionViewDelegateFlowLayout {
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    let width = UIScreen.main.bounds.width
    
    let cellWidth = width * (60/375)
    let cellHeight = cellWidth * (80/60)
    
    return CGSize(width: cellWidth, height: cellHeight)
  }
  
}

extension ViewController : UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return HourlyDataModel.sampleData.count
  }
    
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HourlyCollectionViewCell.identifier, for: indexPath) as?  HourlyCollectionViewCell else {
      return UICollectionViewCell()
    }
      
      cell.setData(HourlyDataModel.sampleData[indexPath.row])
    return cell
  }
}
