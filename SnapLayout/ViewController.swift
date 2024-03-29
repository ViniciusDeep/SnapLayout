//
//  ViewController.swift
//  SnapLayout
//
//  Created by Vinicius Mangueira on 08/09/19.
//  Copyright © 2019 Vinicius Mangueira. All rights reserved.
//

import UIKit
import SnapLayoutPackage

class ViewController: SnapLayout {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollection()
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    
    fileprivate func setupCollection() {
        self.collectionView.backgroundColor = #colorLiteral(red: 0.4941176471, green: 0.1411764706, blue: 0.6117647059, alpha: 1)
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.register(MockCell.self, forCellWithReuseIdentifier: "cellId")
        collectionView.contentInset = .init(top: 0, left: 8, bottom: 0, right: 16)
    }
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as! MockCell
        cell.backgroundColor = .white
        cell.layer.cornerRadius = 8
        cell.layer.shadowPath = UIBezierPath(rect: cell.bounds).cgPath
        cell.layer.shouldRasterize = true
        cell.layer.rasterizationScale = UIScreen.main.scale
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: self.view.frame.width - 14, height: self.view.frame.height/2 + 100)
    }
}

