//
//  PostTableViewCell.swift
//  Navigator
//
//  Created by Эля Корельская on 28.10.2022.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    
    
    private lazy var myImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.contentMode = .scaleAspectFit
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        return titleLabel
    }()
    
    private lazy var decriptionLabel: UILabel = {
        let decriptionLabel = UILabel()
        decriptionLabel.lineBreakMode = .byWordWrapping
        decriptionLabel.numberOfLines = 0
        decriptionLabel.textAlignment = .justified
        //decriptionLabel.clipsToBounds = true
        decriptionLabel.contentMode = .scaleAspectFit
        decriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        return decriptionLabel
    }()
    
    
    
    private lazy var labelLikes: UILabel = {
        let label = UILabel()
        label.contentMode = .scaleAspectFit
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private lazy var labelViews: UILabel = {
        let label = UILabel()
        label.contentMode = .scaleAspectFit
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup(with post: Post) {
        self.titleLabel.text = post.author
        self.decriptionLabel.text = post.description
        self.labelLikes.text = String("Likes: \(post.likes)")
        self.labelViews.text = String("Views:\(post.views)")
        self.decriptionLabel.textColor = .darkGray
        self.myImageView.image = UIImage(named:"\(post.image)")
        self.titleLabel.font = UIFont.boldSystemFont(ofSize: 18)
    }
    
    
    
    private func setupView() {
        self.contentView.addSubview(self.myImageView)
        self.contentView.addSubview(self.titleLabel)
        self.contentView.addSubview(self.labelLikes)
        self.contentView.addSubview(self.labelViews)
        self.contentView.addSubview(self.decriptionLabel)
        
        NSLayoutConstraint.activate([
            self.myImageView.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor, constant: 10),
            self.myImageView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
            self.myImageView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),
            self.myImageView.widthAnchor.constraint(equalToConstant: 420),
            self.myImageView.heightAnchor.constraint(equalToConstant:450),
            
            
            self.titleLabel.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 16),
            self.titleLabel.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 16),
            
            self.decriptionLabel.topAnchor.constraint(equalTo: self.myImageView.bottomAnchor,constant: 8),
            self.decriptionLabel.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 16),
            self.decriptionLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -16),
            
            self.labelLikes.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor,constant: -16),
            self.labelLikes.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 16),
            self.labelLikes.heightAnchor.constraint(equalToConstant: 18),
            self.labelLikes.widthAnchor.constraint(equalToConstant: 100),
            
            self.labelViews.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor,constant:-16),
            self.labelViews.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -16),
            self.labelViews.heightAnchor.constraint(equalToConstant: 18),
            self.labelViews.widthAnchor.constraint(equalToConstant: 90),
        ])
    }
}
