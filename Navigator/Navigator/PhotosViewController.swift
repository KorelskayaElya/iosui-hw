//
//  PhotosViewController.swift
//  Navigator
//
//  Created by Эля Корельская on 28.10.2022.
//

import UIKit

class PhotosViewController: UIViewController {
    
    var viewPhotoModel = ViewPhotoModel.addPhotos()
    
    private lazy var flowLayout : UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: (self.view.frame.size.width - 40) / 3, height: (self.view.frame.size.width - 40) / 3)
        layout.scrollDirection = .vertical
        layout.minimumInteritemSpacing = 8
        layout.minimumLineSpacing = 8
        layout.sectionInset = UIEdgeInsets(top: 8, left: 8, bottom: -8, right: -8)
        return layout
    }()
    private lazy var collection: UICollectionView = {
        let myCollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: flowLayout)
        myCollectionView.backgroundColor = UIColor.white
        myCollectionView.translatesAutoresizingMaskIntoConstraints = false
        myCollectionView.dataSource = self
        myCollectionView.delegate = self
        myCollectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "DefaultCell")
        myCollectionView.register(PhotosCollectionViewCell.self, forCellWithReuseIdentifier: "PhotosCollectionViewCell")
        return myCollectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupView()
        self.setupNavigationBar()
        }
    
    private func setupView() {
        self.view.backgroundColor = .systemBackground
        self.view.addSubview(self.collection)
    
        NSLayoutConstraint.activate([
            self.collection.topAnchor.constraint(equalTo: self.view.topAnchor),
            self.collection.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            self.collection.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            self.collection.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
            ])
    }
    
    private func setupNavigationBar() {
        self.navigationItem.title = "Photo Gallery"
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        self.collection.collectionViewLayout.invalidateLayout()
    }

}
extension PhotosViewController: UICollectionViewDataSource,  UICollectionViewDelegate {
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewPhotoModel.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let myCell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotosCollectionViewCell", for: indexPath) as? PhotosCollectionViewCell else {
            let mycell = collectionView.dequeueReusableCell(withReuseIdentifier: "DefaultCell", for: indexPath)
            return mycell
        }
        myCell.setupCell(with: viewPhotoModel[indexPath.row])
        return myCell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("User tapped on item \(indexPath.row)")
    }
}

