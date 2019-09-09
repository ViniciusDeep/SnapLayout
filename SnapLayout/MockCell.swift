//
//  MockCell.swift
//  SnapLayout
//
//  Created by Vinicius Mangueira on 08/09/19.
//  Copyright © 2019 Vinicius Mangueira. All rights reserved.
//

import UIKit

class MockCell: UICollectionViewCell {
    // THE IDEA THIS CODE, IT'S MAKE A BAD CODE, BUT IF YOU SEE THE BEST VERSION FROM EVERITHING WHEN YOU MAKE CONSTRAINT AND BUILD YOUR VIEWS?
    // CBUILDER IS YOUR ANSWER, TO MAKE THIS CODE BETTER YOU CAN CREATE SOME CONVINIENCE INIT, OR USE THEN(DEVXOUL) TO MAKE MORE SWIFTY
   
    let mockImage: UIImageView = {
        let image = UIImageView(image: UIImage(named: "numock"))
        image.contentMode = .scaleAspectFit
        image.heightAnchor.constraint(equalToConstant: 30).isActive = true
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    
    let mockTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Cartão em processamento"
        label.font = UIFont.boldSystemFont(ofSize: 22)
        return label
    }()
    
    let mockPrevision: UILabel = {
          let label = UILabel()
          label.translatesAutoresizingMaskIntoConstraints = false
          label.text = "Previsão: "
        label.font = UIFont.init(name: "Arial", size: 18)
          return label
      }()
    
    let effectPrevision: UILabel = {
             let label = UILabel()
             label.translatesAutoresizingMaskIntoConstraints = false
             label.text = "15 JUN"
             label.font = UIFont.boldSystemFont(ofSize: 22)
             return label
         }()
    
    let street: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Rua Euclides Miragaia, 641"
        label.font = UIFont.init(name: "Arial", size: 14)
        label.textColor = .lightGray
        return label
    }()
    
    let place: UILabel = {
          let label = UILabel()
          label.translatesAutoresizingMaskIntoConstraints = false
          label.text = "Centro - São José dos Campos/SP"
          label.font = UIFont.init(name: "Arial", size: 14)
          label.textColor = .lightGray
          return label
      }()
    
    let zipCode: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "CEP: 12245943"
        label.font = UIFont.init(name: "Arial", size: 14)
        label.textColor = .lightGray
        return label
    }()
    
    let nuButton = NuButton(frame: .zero)
    
    let receive: UILabel = {
          let label = UILabel()
          label.translatesAutoresizingMaskIntoConstraints = false
          label.text = "RECEBI O CARTAO"
          label.font = .boldSystemFont(ofSize: 16)
          label.textColor = #colorLiteral(red: 0.4941176471, green: 0.1411764706, blue: 0.6117647059, alpha: 1)
          return label
      }()
    
    let feedmock: UIImageView = {
        let image = UIImageView(image: UIImage(named: "feedmock"))
              image.contentMode = .scaleAspectFit
              //image.heightAnchor.constraint(equalToConstant: 30).isActive = true
              image.translatesAutoresizingMaskIntoConstraints = false
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
        addSubview(nuButton)
        addSubview(mockTitle)
        addSubview(mockPrevision)
        addSubview(effectPrevision)
        addSubview(street)
        addSubview(place)
        addSubview(zipCode)
        addSubview(mockImage)
        addSubview(receive)
        addSubview(feedmock)
    }
    
    fileprivate func setupConstraints() {
        NSLayoutConstraint.activate([
            mockImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 30),
            mockImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: -50),
            mockTitle.topAnchor.constraint(equalTo: self.mockImage.bottomAnchor, constant: 30),
            mockTitle.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            mockPrevision.leadingAnchor.constraint(equalTo: mockTitle.leadingAnchor),
            mockPrevision.topAnchor.constraint(equalTo: mockTitle.bottomAnchor, constant: 10),
            effectPrevision.leadingAnchor.constraint(equalTo: mockPrevision.trailingAnchor, constant: 5),
            effectPrevision.topAnchor.constraint(equalTo: mockPrevision.topAnchor, constant: -5),
            street.topAnchor.constraint(equalTo: effectPrevision.bottomAnchor, constant: 20),
            street.leadingAnchor.constraint(equalTo: mockPrevision.leadingAnchor),
            place.leadingAnchor.constraint(equalTo: street.leadingAnchor),
            place.topAnchor.constraint(equalTo: street.bottomAnchor, constant: 10),
            zipCode.leadingAnchor.constraint(equalTo: place.leadingAnchor),
            zipCode.topAnchor.constraint(equalTo: place.bottomAnchor, constant: 10),
            nuButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            nuButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            nuButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            receive.centerXAnchor.constraint(equalTo: nuButton.centerXAnchor, constant: 0),
            receive.centerYAnchor.constraint(equalTo: nuButton.centerYAnchor, constant: 0),
            
            feedmock.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
            feedmock.bottomAnchor.constraint(equalTo: nuButton.topAnchor, constant: 50),
            feedmock.topAnchor.constraint(equalTo: mockImage.topAnchor, constant: -120),
            feedmock.widthAnchor.constraint(equalToConstant: 20)
            
        ])
        
    }
    
}

class NuButton: UIButton  {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
   
    override func didMoveToWindow() {
        super.didMoveToWindow()
              self.heightAnchor.constraint(equalToConstant: 50).isActive = true
              self.layer.cornerRadius = 2
              self.layer.borderColor = #colorLiteral(red: 0.4941176471, green: 0.1411764706, blue: 0.6117647059, alpha: 1)
              self.layer.borderWidth = 1
    }
    
}
