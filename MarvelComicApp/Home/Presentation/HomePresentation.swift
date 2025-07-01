//
//  HomePresentation.swift
//  MarvelComicApp
//
//  Created by VITOR ANDRADE LOPES on 30/06/25.
//

import UIKit

class HomePresentation {
    weak var controller: ViewController?
    var dataSource = HomeDataSource()
    
    var collectionView: UICollectionView = {
        let flow = UICollectionViewFlowLayout()
        let mainScreen = UIScreen.main.bounds

        flow.minimumLineSpacing = K.Size.small
        flow.scrollDirection = .vertical
        flow.itemSize = CGSize(width: mainScreen.width, height: mainScreen.width)
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: flow)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .white
        return collectionView
    }()
    
    func displayLayout() {
        guard let controller = controller else { return }
        
        controller.view.addSubview(collectionView)
        collectionView.leadingAnchor.constraint(equalTo: controller.view.leadingAnchor).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: controller.view.trailingAnchor).isActive = true
        collectionView.topAnchor.constraint(equalTo: controller.view.topAnchor).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: controller.view.bottomAnchor).isActive = true
        
        collectionView.register(HeroCollectionViewCell.self, forCellWithReuseIdentifier: "heroCell")
        collectionView.dataSource = dataSource
    }
}
