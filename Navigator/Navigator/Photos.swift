//
//  Photos.swift
//  Navigator
//
//  Created by Эля Корельская on 28.10.2022.
//

import UIKit

struct ViewPhotoModel {
    var imageName: UIImage?
    static func addPhotos() -> [ViewPhotoModel] {
        var photos: [ViewPhotoModel] = []
        for index in 0..<11 {
            photos.append(ViewPhotoModel(imageName: UIImage(named: "person\(index + 1)")))
        }
        return photos
    }
}
