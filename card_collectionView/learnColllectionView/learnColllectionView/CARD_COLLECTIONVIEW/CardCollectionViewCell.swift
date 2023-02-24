//
//  CardCollectionViewCell.swift
//  learnColllectionView
//
//  Created by Phincon on 24/02/23.
//

import UIKit

class CardCollectionViewCell: UICollectionViewCell {
    
    static let identifier  = "cardCollectionCell"
    @IBOutlet weak var productView: UIImageView!{
        didSet{
            productView.image = UIImage(named: "jamtangan")
        }
    }
    
    
    @IBOutlet weak var tittleCard: UILabel!{
        didSet{
            tittleCard.text = "Tittle Card"
        }
    }
    
    
    @IBOutlet weak var subtittleCard: UILabel!{
        didSet{
            subtittleCard.text = "Subtittle Card"
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
