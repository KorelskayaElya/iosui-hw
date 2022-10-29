//
//  PhotosTableViewCell.swift
//  Navigator
//
//  Created by Эля Корельская on 28.10.2022.
//

import UIKit

protocol ButtonDelegate {
    func didTapButton(sender: UIButton)
}
class PhotosTableViewCell: UITableViewCell {
    
    var delegate:ButtonDelegate?
    
    struct ViewModel {
        let title: String
        let image: UIImage?
    }
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    //кнопка перехода
    private lazy var button_photos: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "arrow.forward"), for: .normal)
        button.contentMode = .scaleAspectFill
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(self.didTapButton), for: .touchUpInside)
        button.tintColor = .black
        return button
    }()
    @objc private func didTapButton() {
        delegate?.didTapButton(sender: button_photos)
    }
    
    private lazy var stackWithPersons: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.clipsToBounds = true
        stackView.spacing = 8
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    private lazy var ImagePerson1: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 6
        return imageView
    }()
    private lazy var ImagePerson2: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 6
        return imageView
    }()
    private lazy var ImagePerson3: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 6
        return imageView
    }()
    private lazy var ImagePerson4: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 6
        return imageView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setupView()
    }
    func setup(with viewModel: ViewModel) {
        self.titleLabel.text = viewModel.title
        self.ImagePerson1.image = UIImage(named: "person1")
        self.ImagePerson2.image = UIImage(named: "person2")
        self.ImagePerson3.image = UIImage(named: "person3")
        self.ImagePerson4.image = UIImage(named: "person4")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        self.contentView.addSubview(self.stackWithPersons)
        self.addSubview(self.titleLabel)
        self.stackWithPersons.addArrangedSubview(self.ImagePerson1)
        self.stackWithPersons.addArrangedSubview(self.ImagePerson2)
        self.stackWithPersons.addArrangedSubview(self.ImagePerson3)
        self.stackWithPersons.addArrangedSubview(self.ImagePerson4)
        self.addSubview(self.button_photos)
        NSLayoutConstraint.activate([
            
            self.stackWithPersons.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor,constant: 12),
            self.stackWithPersons.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor,constant: 12),
            self.stackWithPersons.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -12),
            self.stackWithPersons.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -12),
            
            self.titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 12),
            self.titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 12),
            self.titleLabel.widthAnchor.constraint(equalToConstant: 80),
            self.titleLabel.heightAnchor.constraint(equalToConstant: 20),
            

            self.ImagePerson1.widthAnchor.constraint(equalToConstant: 90),
            self.ImagePerson1.heightAnchor.constraint(equalToConstant: 90),

            self.ImagePerson2.widthAnchor.constraint(equalToConstant: 90),
            self.ImagePerson2.heightAnchor.constraint(equalToConstant: 90),

            self.ImagePerson3.widthAnchor.constraint(equalToConstant: 90),
            self.ImagePerson3.heightAnchor.constraint(equalToConstant: 90),

            self.ImagePerson4.widthAnchor.constraint(equalToConstant: 90),
            self.ImagePerson4.heightAnchor.constraint(equalToConstant: 90),

            self.button_photos.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -12),
            self.button_photos.topAnchor.constraint(equalTo: self.topAnchor, constant: 12),
            self.button_photos.centerYAnchor.constraint(equalTo: self.stackWithPersons.centerYAnchor,constant: -70)
        ])
    }
}

