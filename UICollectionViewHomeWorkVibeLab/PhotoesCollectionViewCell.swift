//
//  PhotoesCollectionViewCell.swift
//  UICollectionViewHomeWorkVibeLab
//
//  Created by Арсений on 12/21/23.
//

import UIKit

class PhotoesCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "PhotoesCollectionViewCell"
    static var shared = PhotoesCollectionViewCell()
    
    var images = [
        UIImage(resource: .image1),
        UIImage(resource: .image2),
        UIImage(resource: .image3),
        UIImage(resource: .image4),
        UIImage(resource: .image5),
        UIImage(resource: .image6),
    ].compactMap { $0 }
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(imageView)
        imageView.image = UIImage(resource: .chellenger)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        imageView.frame = contentView.bounds
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
    }
}
