//
//  HomeDataSource.swift
//  MarvelComicApp
//
//  Created by VITOR ANDRADE LOPES on 30/06/25.
//

import UIKit

class HomeDataSource: NSObject, UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "heroCell", for: indexPath)
        return cell
    }
    
}
