//
//  PhotosCollectionViewCell.swift
//  Navigator
//
//  Created by Эля Корельская on 28.10.2022.
//

import UIKit

class PhotosCollectionViewCell: UICollectionViewCell {

    private var photosItems: UIImageView {
        let images = UIImageView()
        images.contentMode = .scaleAspectFill
        images.clipsToBounds = true
        images.translatesAutoresizingMaskIntoConstraints = false
        return images
    }
    
    func setupCell(with viewPhotoModel: ViewPhotoModel){
        self.photosItems.image = viewPhotoModel.imageName
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupView()
       }
    required init? (coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func setupView() {
        self.contentView.addSubview(self.photosItems)
        
        NSLayoutConstraint.activate([
            self.photosItems.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 8),
            self.photosItems.leftAnchor.constraint(equalTo: self.contentView.leftAnchor, constant: 8),
            self.photosItems.rightAnchor.constraint(equalTo: self.contentView.rightAnchor, constant: -8),
            self.photosItems.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -8)
        ])
    }
    
}

