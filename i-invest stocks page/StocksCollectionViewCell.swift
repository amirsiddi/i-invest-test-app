//
//  StocksCollectionViewCell.swift
//  i-invest stocks page
//
//  Created by Amir Siddique on 21/01/2017.
//  Copyright © 2017 Amir Siddique. All rights reserved.
//

import UIKit

class StocksCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var stockImage: UIImageView!

    
    @IBOutlet weak var stockSymbol: UILabel!
    
    @IBOutlet weak var tradedVolume: UILabel!
    
    @IBOutlet weak var dayHighPrice: UILabel!
    
    
    @IBOutlet weak var arrowImage: UIImageView!
    @IBOutlet weak var dayLowPrice: UILabel!
    
    @IBOutlet weak var LDCP: UILabel!
    
    @IBOutlet weak var currentPrice: UILabel!
    
    @IBOutlet weak var priceChange: UILabel!
    @IBOutlet weak var percentChange: UILabel!
    @IBOutlet weak var companyName: UILabel!
    
    
    
    
    
    
}
