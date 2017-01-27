//
//  ViewController.swift
//  i-invest stocks page
//
//  Created by Amir Siddique on 21/01/2017.
//  Copyright © 2017 Amir Siddique. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate{
    
    
    struct stocks {
        var stockSymbol: String
        var companyName: String
        var currentPrice: Double
        var volume: Int
        var high: Double
        var low: Double
        var LDCP: Double
        
    }
    var stockArray = [stocks]()
    var imageArray = [UIImage]()
    
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    
    @IBOutlet weak var sortByGainersBtn: UIButton!
    
    @IBOutlet weak var sortByLosersBtn: UIButton!
    
    @IBOutlet weak var sortByVolumeBtn: UIButton!
    
    @IBOutlet weak var sortBySymbolBtn: UIButton!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        for index in 1...100 {
            let tempImage: UIImage
            tempImage = UIImage(named: "\(index).png")!
            imageArray.append(tempImage)
        }
        
       
        
        stockArray.append(stocks(stockSymbol: "ABOT",companyName: "Abbott Lab.",currentPrice: 1060.23,volume: 222100,high: 1074.88,low: 1020.01,LDCP: 1023.7))
        stockArray.append(stocks(stockSymbol: "AICL",companyName: "Adamjee Ins.",currentPrice: 74.18,volume: 5154500,high: 75.98,low: 73.76,LDCP: 74.01))
        stockArray.append(stocks(stockSymbol: "ABL",companyName: "Allied Bank Ltd.",currentPrice: 116.22,volume: 292000,high: 117,low: 113,LDCP: 117))
        stockArray.append(stocks(stockSymbol: "ARM",companyName: "Allied Rent.XD",currentPrice: 29.45,volume: 5000,high: 29.45,low: 27.93,LDCP: 29.4))
        stockArray.append(stocks(stockSymbol: "AHCL",companyName: "Arif Habib Corp",currentPrice: 44.82,volume: 369500,high: 45.74,low: 44.65,LDCP: 44.86))
        stockArray.append(stocks(stockSymbol: "AKBL",companyName: "Askari Bank",currentPrice: 26.79,volume: 3170000,high: 28.03,low: 26.51,LDCP: 27.9))
        stockArray.append(stocks(stockSymbol: "ASRL",companyName: "Associated Serv",currentPrice: 99,volume: 0,high: 99,low: 99,LDCP: 99))
        stockArray.append(stocks(stockSymbol: "APL",companyName: "Attock Petroleum",currentPrice: 704.1,volume: 178050,high: 716,low: 696.5,LDCP: 691.63))
        stockArray.append(stocks(stockSymbol: "ATRL",companyName: "Attock Refinery",currentPrice: 461.6,volume: 1493900,high: 468.99,low: 460.5,LDCP: 460.39))
        stockArray.append(stocks(stockSymbol: "BOP",companyName: "B.O.Punjab",currentPrice: 17.68,volume: 11356000,high: 18.15,low: 17.61,LDCP: 17.91))
        stockArray.append(stocks(stockSymbol: "BAFL",companyName: "Bank Al-Falah",currentPrice: 40.79,volume: 575000,high: 41.25,low: 40,LDCP: 40.77))
        stockArray.append(stocks(stockSymbol: "BAHL",companyName: "Bank AL-Habib",currentPrice: 58.57,volume: 269500,high: 59.04,low: 58,LDCP: 58.65))
        stockArray.append(stocks(stockSymbol: "BNWM",companyName: "Bannu Woollen",currentPrice: 72.48,volume: 63500,high: 72.75,low: 70.25,LDCP: 70.19))
        stockArray.append(stocks(stockSymbol: "BATA",companyName: "Bata (Pak)",currentPrice: 4190.99,volume: 40,high: 4190.99,low: 3992.2,LDCP: 3992.2))
        stockArray.append(stocks(stockSymbol: "BWCL",companyName: "Bestway CementXD",currentPrice: 295.46,volume: 124900,high: 297.5,low: 290.75,LDCP: 293.06))
        stockArray.append(stocks(stockSymbol: "CHCC",companyName: "Cherat Cement",currentPrice: 192.22,volume: 1905400,high: 193.65,low: 187.5,LDCP: 184.43))
        stockArray.append(stocks(stockSymbol: "CPPL",companyName: "Cherat Pack",currentPrice: 372.31,volume: 88100,high: 375,low: 360,LDCP: 363.04))
        stockArray.append(stocks(stockSymbol: "COLG",companyName: "Colgate Palmolive",currentPrice: 1705,volume: 380,high: 1800,low: 1705,LDCP: 1750))
        stockArray.append(stocks(stockSymbol: "CSAP",companyName: "Crescent Steel",currentPrice: 182.97,volume: 587700,high: 189.83,low: 182,LDCP: 185.92))
        stockArray.append(stocks(stockSymbol: "DGKC",companyName: "D.G.K.Cement",currentPrice: 224.92,volume: 2285700,high: 227.24,low: 224.14,LDCP: 225.05))
        stockArray.append(stocks(stockSymbol: "DAWH",companyName: "Dawood Hercules",currentPrice: 149.65,volume: 164400,high: 151.5,low: 149,LDCP: 148.86))
        stockArray.append(stocks(stockSymbol: "DCR",companyName: "Dolmen City ReitXD",currentPrice: 10.99,volume: 79000,high: 10.99,low: 10.84,LDCP: 10.99))
        stockArray.append(stocks(stockSymbol: "EFUG",companyName: "EFU General",currentPrice: 154.19,volume: 218800,high: 154.49,low: 152,LDCP: 152))
        stockArray.append(stocks(stockSymbol: "ENGRO",companyName: "Engro Corp",currentPrice: 333.82,volume: 967100,high: 337,low: 333,LDCP: 334.87))
        stockArray.append(stocks(stockSymbol: "EFERT",companyName: "Engro Fert.",currentPrice: 70.38,volume: 13049500,high: 71,low: 69.05,LDCP: 69.17))
        stockArray.append(stocks(stockSymbol: "EFOODS",companyName: "Engro Foods Ltd.",currentPrice: 202.17,volume: 1166500,high: 203.8,low: 200.41,LDCP: 201.06))
        stockArray.append(stocks(stockSymbol: "FATIMA",companyName: "Fatima Fert.",currentPrice: 39.33,volume: 830000,high: 39.69,low: 38.9,LDCP: 38.99))
        stockArray.append(stocks(stockSymbol: "FCCL",companyName: "Fauji Cement",currentPrice: 46.41,volume: 2321500,high: 46.95,low: 46.1,LDCP: 46.32))
        stockArray.append(stocks(stockSymbol: "FFBL",companyName: "Fauji Fert Bin",currentPrice: 54.83,volume: 2016000,high: 55.89,low: 54.35,LDCP: 54.9))
        stockArray.append(stocks(stockSymbol: "FFC",companyName: "Fauji Fert.",currentPrice: 117.82,volume: 6210700,high: 119.65,low: 117.25,LDCP: 117.76))
        stockArray.append(stocks(stockSymbol: "FABL",companyName: "Faysal Bank",currentPrice: 27.11,volume: 29823000,high: 29.9,low: 27.06,LDCP: 28.48))
        stockArray.append(stocks(stockSymbol: "FML",companyName: "Feroze 1888",currentPrice: 185.91,volume: 7500,high: 191,low: 180,LDCP: 185.6))
        stockArray.append(stocks(stockSymbol: "FEROZ",companyName: "Ferozsons (Lab)",currentPrice: 711.74,volume: 606400,high: 733.7,low: 698,LDCP: 698.78))
        stockArray.append(stocks(stockSymbol: "GHGL",companyName: "Ghani Glass LtdXD",currentPrice: 141.79,volume: 280900,high: 144.99,low: 137,LDCP: 143.1))
        stockArray.append(stocks(stockSymbol: "GLAXO",companyName: "GlaxoSmithKline",currentPrice: 262.4,volume: 1363400,high: 265.4,low: 261,LDCP: 260.48))
        stockArray.append(stocks(stockSymbol: "HBL",companyName: "Habib Bank",currentPrice: 260.58,volume: 399700,high: 263.75,low: 259.1,LDCP: 260.24))
        stockArray.append(stocks(stockSymbol: "HMB",companyName: "Habib Metropol.",currentPrice: 37.66,volume: 118500,high: 38,low: 37.65,LDCP: 37.8))
        stockArray.append(stocks(stockSymbol: "HASCOL",companyName: "Hascol Petrol",currentPrice: 347.07,volume: 290300,high: 351,low: 346,LDCP: 346.27))
        stockArray.append(stocks(stockSymbol: "HCAR",companyName: "Honda Atlas Cars",currentPrice: 777.9,volume: 325250,high: 795,low: 775.01,LDCP: 772.74))
        stockArray.append(stocks(stockSymbol: "HUBC",companyName: "Hub Power Co.",currentPrice: 130.61,volume: 2083900,high: 131.49,low: 128.1,LDCP: 128.44))
        stockArray.append(stocks(stockSymbol: "HUMNL",companyName: "Hum Network",currentPrice: 13.99,volume: 314000,high: 14.2,low: 13.85,LDCP: 14))
        stockArray.append(stocks(stockSymbol: "IBFL",companyName: "Ibrahim Fibres",currentPrice: 70,volume: 11000,high: 73.36,low: 70,LDCP: 73.36))
        stockArray.append(stocks(stockSymbol: "ICI",companyName: "ICI Pakistan",currentPrice: 1160.26,volume: 70800,high: 1170,low: 1120,LDCP: 1132.07))
        stockArray.append(stocks(stockSymbol: "IGIIL",companyName: "IGI Insurance",currentPrice: 330.11,volume: 348500,high: 331.01,low: 318,LDCP: 315.25))
        stockArray.append(stocks(stockSymbol: "IDYM",companyName: "Indus Dyeing",currentPrice: 650,volume: 0,high: 650,low: 650,LDCP: 650))
        stockArray.append(stocks(stockSymbol: "INDU",companyName: "Indus Motor Co",currentPrice: 1787.24,volume: 27060,high: 1794.9,low: 1769,LDCP: 1753.55))
        stockArray.append(stocks(stockSymbol: "ISL",companyName: "Inter.Steel Ltd",currentPrice: 112.21,volume: 281500,high: 112.21,low: 112.21,LDCP: 106.87))
        stockArray.append(stocks(stockSymbol: "JDWS",companyName: "J.D.W.SugarXD",currentPrice: 585,volume: 2450,high: 589.5,low: 585,LDCP: 564.43))
        stockArray.append(stocks(stockSymbol: "JSCL",companyName: "Jah.Sidd. Co.",currentPrice: 26.21,volume: 1386500,high: 26.8,low: 26.1,LDCP: 26.48))
        stockArray.append(stocks(stockSymbol: "JLICL",companyName: "Jubile Life Ins",currentPrice: 564.99,volume: 150,high: 564.99,low: 550.06,LDCP: 567.89))
        stockArray.append(stocks(stockSymbol: "JGICL",companyName: "Jubilee Gen.Ins",currentPrice: 112.5,volume: 0,high: 0,low: 0,LDCP: 112.5))
        stockArray.append(stocks(stockSymbol: "KEL",companyName: "K-Electric Ltd.",currentPrice: 9.56,volume: 12878000,high: 9.6,low: 9.42,LDCP: 9.45))
        stockArray.append(stocks(stockSymbol: "KOHC",companyName: "Kohat Cement",currentPrice: 297.76,volume: 43300,high: 300.48,low: 291,LDCP: 293.59))
        stockArray.append(stocks(stockSymbol: "KTML",companyName: "Kohinoor Textile",currentPrice: 118.65,volume: 290000,high: 121,low: 118.6,LDCP: 117.85))
        stockArray.append(stocks(stockSymbol: "KAPCO",companyName: "Kot Addu Power",currentPrice: 83.09,volume: 1640000,high: 83.75,low: 82.5,LDCP: 82.33))
        stockArray.append(stocks(stockSymbol: "LUCK",companyName: "Lucky Cement",currentPrice: 872.51,volume: 280900,high: 879,low: 869.99,LDCP: 866.93))
        stockArray.append(stocks(stockSymbol: "MLCF",companyName: "MapleLeafCement",currentPrice: 133.61,volume: 636700,high: 134.5,low: 132.9,LDCP: 133.54))
        stockArray.append(stocks(stockSymbol: "MARI",companyName: "Mari Petroleum",currentPrice: 1488.13,volume: 68560,high: 1533.96,low: 1425,LDCP: 1460.92))
        stockArray.append(stocks(stockSymbol: "MCB",companyName: "MCB Bank Ltd",currentPrice: 243.52,volume: 485100,high: 246,low: 242.48,LDCP: 243.34))
        stockArray.append(stocks(stockSymbol: "MEBL",companyName: "Meezan Bank",currentPrice: 64.5,volume: 473000,high: 65.73,low: 64.25,LDCP: 64))
        stockArray.append(stocks(stockSymbol: "MTL",companyName: "Millat Tractors",currentPrice: 1131.39,volume: 216850,high: 1150,low: 1112,LDCP: 1108.99))
        stockArray.append(stocks(stockSymbol: "MUREB",companyName: "Murree Brewery",currentPrice: 918.35,volume: 2500,high: 924,low: 913.6,LDCP: 915.75))
        stockArray.append(stocks(stockSymbol: "NBP",companyName: "National Bank",currentPrice: 75.47,volume: 1626000,high: 76.65,low: 75.25,LDCP: 75.14))
        stockArray.append(stocks(stockSymbol: "NATF",companyName: "National Foods",currentPrice: 379.95,volume: 2600,high: 380,low: 372.01,LDCP: 373))
        stockArray.append(stocks(stockSymbol: "NRL",companyName: "National Refinery",currentPrice: 750.95,volume: 655750,high: 762.18,low: 728.1,LDCP: 725.89))
        stockArray.append(stocks(stockSymbol: "NESTLE",companyName: "Nestle Pakistan",currentPrice: 9300,volume: 0,high: 0,low: 0,LDCP: 9300))
        stockArray.append(stocks(stockSymbol: "NCL",companyName: "Nishat (Chun.)",currentPrice: 69.03,volume: 5790500,high: 71.2,low: 68.25,LDCP: 69.21))
        stockArray.append(stocks(stockSymbol: "NCPL",companyName: "Nishat ChunPowXD",currentPrice: 56.43,volume: 118500,high: 56.7,low: 56.1,LDCP: 56.27))
        stockArray.append(stocks(stockSymbol: "NML",companyName: "Nishat Mills Ltd",currentPrice: 168.87,volume: 8312000,high: 169.79,low: 161.99,LDCP: 161.71))
        stockArray.append(stocks(stockSymbol: "NPL",companyName: "Nishat Power",currentPrice: 67.5,volume: 518500,high: 67.75,low: 65,LDCP: 65.01))
        stockArray.append(stocks(stockSymbol: "OGDC",companyName: "Oil & Gas Dev.",currentPrice: 155.3,volume: 1948500,high: 156,low: 153.99,LDCP: 153.44))
        stockArray.append(stocks(stockSymbol: "OLPL",companyName: "Orix Leasing",currentPrice: 48.41,volume: 17000,high: 48.9,low: 48.35,LDCP: 48.4))
        stockArray.append(stocks(stockSymbol: "PSO",companyName: "P.S.O.",currentPrice: 435.7,volume: 355500,high: 442,low: 435,LDCP: 439.05))
        stockArray.append(stocks(stockSymbol: "PTC",companyName: "P.T.C.L.",currentPrice: 19.39,volume: 5967500,high: 19.46,low: 18.75,LDCP: 19))
        stockArray.append(stocks(stockSymbol: "PKGS",companyName: "Packages Ltd.",currentPrice: 926.31,volume: 456700,high: 926.31,low: 883,LDCP: 882.2))
        stockArray.append(stocks(stockSymbol: "PAEL",companyName: "Pak Elektron",currentPrice: 81.85,volume: 11234000,high: 83.48,low: 80.96,LDCP: 82.19))
        stockArray.append(stocks(stockSymbol: "PIBTL",companyName: "Pak Int.BulkXR",currentPrice: 30.64,volume: 1742000,high: 30.8,low: 30.52,LDCP: 30.59))
        stockArray.append(stocks(stockSymbol: "POL",companyName: "Pak Oilfields",currentPrice: 525.89,volume: 355400,high: 527.75,low: 523.01,LDCP: 525.62))
        stockArray.append(stocks(stockSymbol: "PPL",companyName: "Pak Petroleum",currentPrice: 177.05,volume: 237700,high: 178.75,low: 176.52,LDCP: 177.98))
        stockArray.append(stocks(stockSymbol: "PSEL",companyName: "Pak Services",currentPrice: 837.23,volume: 0,high: 837.23,low: 837.23,LDCP: 837.23))
        stockArray.append(stocks(stockSymbol: "PSMC",companyName: "Pak Suzuki",currentPrice: 689.48,volume: 362400,high: 705.82,low: 676,LDCP: 672.21))
        stockArray.append(stocks(stockSymbol: "PAKT",companyName: "Pak Tobacco",currentPrice: 1385,volume: 20,high: 1385,low: 1385,LDCP: 1325.85))
        stockArray.append(stocks(stockSymbol: "PICT",companyName: "Pak.Int.Cont.",currentPrice: 525,volume: 2000,high: 535,low: 523,LDCP: 549.99))
        stockArray.append(stocks(stockSymbol: "PMPK",companyName: "Philip Morris Pak.",currentPrice: 2660,volume: 0,high: 2660,low: 2660,LDCP: 2660))
        stockArray.append(stocks(stockSymbol: "PGF",companyName: "PICIC Growth",currentPrice: 30.9,volume: 1182500,high: 31.1,low: 30.87,LDCP: 30.87))
        stockArray.append(stocks(stockSymbol: "PIOC",companyName: "Pioneer Cement",currentPrice: 146.2,volume: 1053600,high: 148.99,low: 143.25,LDCP: 143.21))
        stockArray.append(stocks(stockSymbol: "POML",companyName: "Punjab Oil",currentPrice: 325,volume: 4600,high: 325,low: 320,LDCP: 316.57))
        stockArray.append(stocks(stockSymbol: "RMPL",companyName: "Rafhan Maize",currentPrice: 8000,volume: 240,high: 8000,low: 8000,LDCP: 8000))
        stockArray.append(stocks(stockSymbol: "SPWL",companyName: "Saif Power Ltd.",currentPrice: 34.81,volume: 22500,high: 35,low: 34.5,LDCP: 34.92))
        stockArray.append(stocks(stockSymbol: "SRVI",companyName: "Service Ind.Ltd",currentPrice: 1503.91,volume: 5820,high: 1529.9,low: 1480.05,LDCP: 1502.33))
        stockArray.append(stocks(stockSymbol: "SHEL",companyName: "Shell Pakistan",currentPrice: 549.97,volume: 71600,high: 561.9,low: 549,LDCP: 556.98))
        stockArray.append(stocks(stockSymbol: "SHFA",companyName: "Shifa Int.Hosp",currentPrice: 304.72,volume: 2800,high: 310,low: 304,LDCP: 305))
        stockArray.append(stocks(stockSymbol: "SNBL",companyName: "Soneri Bank Ltd",currentPrice: 18.46,volume: 143000,high: 18.5,low: 17.65,LDCP: 18.1))
        stockArray.append(stocks(stockSymbol: "SCBPL",companyName: "St.Chart.Bank",currentPrice: 24.94,volume: 49500,high: 25,low: 24.91,LDCP: 25))
        stockArray.append(stocks(stockSymbol: "SNGP",companyName: "Sui North Gas",currentPrice: 97.06,volume: 5442500,high: 99.75,low: 96.9,LDCP: 97.7))
        stockArray.append(stocks(stockSymbol: "SSGC",companyName: "Sui South Gas",currentPrice: 38.63,volume: 3653000,high: 39.6,low: 38.52,LDCP: 39.17))
        stockArray.append(stocks(stockSymbol: "THALL",companyName: "Thal Limited",currentPrice: 512.09,volume: 298900,high: 515.81,low: 494,LDCP: 491.25))
        stockArray.append(stocks(stockSymbol: "SEARL",companyName: "The Searle Co.",currentPrice: 722.14,volume: 349600,high: 735,low: 718.13,LDCP: 717.4))
        stockArray.append(stocks(stockSymbol: "TRG",companyName: "TRG Pak Ltd",currentPrice: 50.63,volume: 19036000,high: 51.7,low: 50.26,LDCP: 50.17))
        stockArray.append(stocks(stockSymbol: "UBL",companyName: "United Bank",currentPrice: 238.41,volume: 305100,high: 239.9,low: 235.97,LDCP: 235.56))
        

       myCollectionView.dataSource = self
       myCollectionView.delegate = self
        
    }
    
    @IBAction func sortByGainers(_ sender: UIButton) {
    
        stockArray = stockArray.sorted (by: { (s1 : stocks, s2 : stocks) -> Bool in
            return (s1.currentPrice / s1.LDCP) > (s2.currentPrice / s2.LDCP)
        })
        
        sortByGainersBtn.backgroundColor = UIColor.brown
        sortByLosersBtn.backgroundColor = UIColor.blue
        sortByVolumeBtn.backgroundColor = UIColor.blue
        sortBySymbolBtn.backgroundColor = UIColor.blue
        
        myCollectionView.reloadData()
    }
    
    @IBAction func sortByLosers(_ sender: Any) {
        stockArray = stockArray.sorted (by: { (s1 : stocks, s2 : stocks) -> Bool in
            return (s1.currentPrice / s1.LDCP) < (s2.currentPrice / s2.LDCP)
        })
        
        sortByGainersBtn.backgroundColor = UIColor.blue
        sortByLosersBtn.backgroundColor = UIColor.brown
        sortByVolumeBtn.backgroundColor = UIColor.blue
        sortBySymbolBtn.backgroundColor = UIColor.blue
        
        myCollectionView.reloadData()
    }
    
    @IBAction func sortByVolume(_ sender: Any) {
        
        stockArray = stockArray.sorted (by: { (s1 : stocks, s2 : stocks) -> Bool in
            return s1.volume > s2.volume
        })
        
        sortByGainersBtn.backgroundColor = UIColor.blue
        sortByLosersBtn.backgroundColor = UIColor.blue
        sortByVolumeBtn.backgroundColor = UIColor.brown
        sortBySymbolBtn.backgroundColor = UIColor.blue
        
        myCollectionView.reloadData()
    }
    
    @IBAction func sortBySymbol(_ sender: Any) {
        
        stockArray = stockArray.sorted (by: { (s1 : stocks, s2 : stocks) -> Bool in
            return s1.stockSymbol > s2.stockSymbol
        })
        
        sortByGainersBtn.backgroundColor = UIColor.blue
        sortByLosersBtn.backgroundColor = UIColor.blue
        sortByVolumeBtn.backgroundColor = UIColor.blue
        sortBySymbolBtn.backgroundColor = UIColor.brown
        
        myCollectionView.reloadData()
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return stockArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StockCell", for: indexPath) as! StocksCollectionViewCell
        
        
        cell.companyName.text = stockArray[indexPath.item].companyName
        cell.currentPrice.text = "\(stockArray[indexPath.item].currentPrice)"
        cell.dayHighPrice.text = "\(stockArray[indexPath.item].high)"
        cell.dayLowPrice.text = "\(stockArray[indexPath.item].low)"
        cell.LDCP.text = "\(stockArray[indexPath.item].LDCP)"
        let temp = ((stockArray[indexPath.item].currentPrice - stockArray[indexPath.item].LDCP) * 100) / stockArray[indexPath.item].LDCP
        var tempForPercentChange = ceil( temp * 100)
        tempForPercentChange = tempForPercentChange / 100
        cell.percentChange.text = "\(tempForPercentChange)%"
        
        
        
        cell.priceChange.text = "\(ceil((stockArray[indexPath.item].currentPrice - stockArray[indexPath.item].LDCP) * 100) / 100)"
        
        if Double(cell.priceChange.text!)! < 0 {
            cell.priceChange.textColor = UIColor.red
            cell.arrowImage.image = UIImage(named: "Arrow_red.png")
        } else {
            cell.priceChange.textColor = UIColor.green
            cell.arrowImage.image = UIImage(named: "Arrow_green.png")
        }
        
        if tempForPercentChange < 0 {
            cell.percentChange.textColor = UIColor.red
        } else {
            cell.percentChange.textColor = UIColor.green
        }
        
        cell.stockImage.image = imageArray[indexPath.item]
        cell.stockSymbol.text = stockArray[indexPath.item].stockSymbol
        cell.tradedVolume.text = "\(stockArray[indexPath.item].volume / 1000)k"
        
        
        
        
        
        return cell
    }

    

}

