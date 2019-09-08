//
//  MockCell.swift
//  SnapLayout
//
//  Created by Vinicius Mangueira on 08/09/19.
//  Copyright © 2019 Vinicius Mangueira. All rights reserved.
//

import UIKit

class MockCell: UICollectionViewCell {
    
    
    let imageMock: UIImageView = {
        let image = UIImageView(image: UIImage(named: "numock"))
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = UIView.ContentMode.scaleAspectFill
        return image
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        buildViewHierarchy()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func buildViewHierarchy() {
        addSubview(imageMock)
        
    }
    
    fileprivate func setupConstraints() {
        NSLayoutConstraint.activate([
            imageMock.topAnchor.constraint(equalTo: self.topAnchor),
            imageMock.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            imageMock.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            imageMock.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        
        ])
    }
    
}
