//
//  ProductViewController.swift
//  eCommerce-REST-API
//
//  Created by Dawei Hao on 2024/10/5.
//

import UIKit
import Kingfisher

class ProductViewController: UIViewController {

    let productCollectionView: UICollectionView = {
        let collectionView: UICollectionView = UICollectionView(frame: .zero)
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    } ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }

    func setupUI () {
        self.view.backgroundColor = Color.customBGColor
    }
    
    
}
