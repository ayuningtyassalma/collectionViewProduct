//
//  ViewController.swift
//  learnColllectionView
//
//  Created by Phincon on 24/02/23.
//

import UIKit

class CollectionViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var product : [CardCollectionStruct] = [CardCollectionStruct(productImage: "jamtangan", productTittle: "Jam Tangan Wanita", productSubtittle: "Lorem ipsum"),
        CardCollectionStruct(productImage: "jamtangan", productTittle: "Jam Tangan Pria", productSubtittle: "Lorem Ipsum"),
        CardCollectionStruct(productImage: "jamtangan", productTittle: "Jam Tangan anak", productSubtittle: "Lorem Ipsum"),
        CardCollectionStruct(productImage: "jamtangan", productTittle: "Jam Tangan Remaja", productSubtittle: "Lorem Ipsum"),
        CardCollectionStruct(productImage: "jamtangan", productTittle: "Jam Tangan Remaja", productSubtittle: "Lorem Ipsum"),
        CardCollectionStruct(productImage: "jamtangan", productTittle: "Jam Tangan Remaja", productSubtittle: "Lorem Ipsum")
                                        
    
    ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //inisialisasi
        let layout = UICollectionViewFlowLayout()
//        layout.accessibilityScroll(.left)
        layout.scrollDirection = .vertical
        
        self.collectionView.collectionViewLayout = layout
        

        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        let collectionNib = UINib(nibName: "CardCollectionViewCell", bundle: nil)
        collectionView.register(collectionNib, forCellWithReuseIdentifier: CardCollectionViewCell.identifier)
//        self.collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        // Do any additional setup after loading the view.
    }


}; extension CollectionViewController : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    //!! UICollectionViewFlowLayout,sizeForItemAt only be called if we already decrlare UICollectionViewDelegateFlowLayout in the our extension/class
    
    //set up padding
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top:   8, left: 8, bottom: 8 , right: 8)
        
    }
 
    
    //set up width and height for collection view
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.collectionView.frame.size.width/1.5, height: self.collectionView.frame.size.height/2.5)
    }
    
    //set up how manny data will be shown on the collection view
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return product.count }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: CardCollectionViewCell.identifier, for: indexPath)as? CardCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        cell.productView.image = UIImage(named: product [indexPath.item].productImage!)
        cell.tittleCard.text = product[indexPath.item].productTittle
        cell.subtittleCard.text = product[indexPath.item].productSubtittle

        return cell
//        cell.backgroundColor = .purple
        
    }
    
    
}

