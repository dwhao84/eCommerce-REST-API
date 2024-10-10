//
//  ProductCollectionViewCell.swift
//  eCommerce-REST-API
//
//  Created by Dawei Hao on 2024/10/10.
//

import UIKit

class ProductCollectionViewCell: UICollectionViewCell {
    
    private let productImageView: UIImageView = {
        let imageView = UIImageView(image: Images.defaultImage)
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 5
        return imageView
    } ()
    
    private let productLabel: UILabel = {
        let label: UILabel = UILabel()
        label.text = "Product"
        label.textColor = Color.productTitleColor
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    } ()
    
    private let priceLabel: UILabel = {
        let label: UILabel = UILabel()
        label.text = "Price"
        label.textColor = Color.productTitleColor
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    } ()
    
    private let stackView: UIStackView = {
        let stackView: UIStackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.spacing = 5
        stackView.distribution = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    } ()
    
    override init(frame: CGRect) {
         super.init(frame: frame)
        setupUI()
     }

     required init?(coder aDecoder: NSCoder) {
         fatalError("init(coder:) has not been implemented")
     }
    
    private func setupUI() {
        contentView.addSubview(productImageView)
        contentView.addSubview(productLabel)
        contentView.addSubview(priceLabel)
        
        NSLayoutConstraint.activate([
            productImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            productImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            productImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            productImageView.heightAnchor.constraint(equalTo: productImageView.widthAnchor, multiplier: 1)
        ])
    }
    
}
#Preview(traits: .fixedLayout(width: 200, height: 250), body: {
    let cell = ProductCollectionViewCell()
    return cell
    }
)
