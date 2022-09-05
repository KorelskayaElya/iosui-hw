//
//  PostTableViewCell.swift
//  Navigator
//
//  Created by Эля Корельская on 05.09.2022.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    //картинка
    private lazy var myImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    //заголовок
    private lazy var titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.contentMode = .scaleAspectFit
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        return titleLabel
    }()
    //описание под изображением
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
    
  //лайки
    private lazy var labelLikes: UILabel = {
        let label = UILabel()
        label.contentMode = .scaleAspectFit
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    //просмотры
    private lazy var labelViews: UILabel = {
        let label = UILabel()
        label.contentMode = .scaleAspectFit
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setupView()
        self.contraints()
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
    }
        
    private func contraints() {
        NSLayoutConstraint.activate([
            //картинка
            myImageView.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor, constant: 10),
            myImageView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
            myImageView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),
            myImageView.widthAnchor.constraint(equalToConstant: 420),
            myImageView.heightAnchor.constraint(equalToConstant:450),

            //заголовок
            titleLabel.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 16),
            titleLabel.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 16),
            //описание
            decriptionLabel.topAnchor.constraint(equalTo: self.myImageView.bottomAnchor,constant: 8),
            decriptionLabel.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 16),
            decriptionLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -16),
           //лайки
            labelLikes.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor,constant: -16),
            labelLikes.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 16),
            labelLikes.heightAnchor.constraint(equalToConstant: 18),
            labelLikes.widthAnchor.constraint(equalToConstant: 100),
            //просмотры
            labelViews.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor,constant:-16),
            labelViews.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -16),
            labelViews.heightAnchor.constraint(equalToConstant: 18),
            labelViews.widthAnchor.constraint(equalToConstant: 90),
        ])
    }
    

}

