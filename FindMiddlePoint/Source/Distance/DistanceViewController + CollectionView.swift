//
//  DistanceViewController + CollectionView.swift
//  FindMiddlePoint
//
//  Created by 김민석 on 2022/05/10.
//

import UIKit

extension DistanceViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return DistanceManager.shared.distances.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TopBarCollectionView", for: indexPath) as? TopBarCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.updateUI(title: DistanceManager.shared.distances[indexPath.row].name, isSelected: indexPath.row == page)
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        page = indexPath.row
    }
    
}

extension DistanceViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.width / CGFloat(min(DistanceManager.shared.distances.count, 4))
        return CGSize(width: width, height: collectionView.frame.height)
    }
}
