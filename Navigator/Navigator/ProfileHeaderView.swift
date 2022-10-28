//
//  ProfileHeaderView.swift
//  Navigator
//
//  Created by Эля Корельская on 20/08/22.
//

import UIKit


class ProfileHeaderView: UIView {
    
    private lazy var avatarIimageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "cat_image")
        imageView.layer.borderWidth = 3
        imageView.layer.borderColor = UIColor.black.cgColor
        imageView.layer.cornerRadius = 55
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    private lazy var button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.setTitle("Show status", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont(name: "Courier New", size: 24)
        button.clipsToBounds = true
        button.addTarget(self, action: #selector(self.buttonPressed), for: .touchUpInside)
        button.layer.opacity = 1
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 4
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowRadius = 4
        button.layer.shadowOpacity = 0.7
        button.layer.masksToBounds = false
        return button
    }()
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private lazy var textField: UITextField = {
        let textField = UITextField()
        textField.layer.cornerRadius = 12
        textField.backgroundColor = .white
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.black.cgColor
        textField.font = UIFont(name: "Courier New", size: 15)
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.addTarget(self, action: #selector(self.statusTextChanged(_:)), for:.editingChanged)
        
        return textField
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupView()
        self.contraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setup(with profile: Profile)  {
        self.avatarIimageView.image = UIImage(named: "cat_image")
        self.nameLabel.text = profile.name
        self.nameLabel.font = UIFont(name: "Courier New", size: 18)
        self.nameLabel.font = UIFont.boldSystemFont(ofSize: 18)
        self.descriptionLabel.text = profile.description
        self.descriptionLabel.textColor = .darkGray
        self.descriptionLabel.font = UIFont(name: "Courier New", size: 14)
    }
    
    private func setupView() {
        self.addSubview(self.avatarIimageView)
        self.addSubview(self.button)
        self.addSubview(self.nameLabel)
        self.addSubview(self.descriptionLabel)
        self.addSubview(self.textField)

    }
    private func contraints() {
        NSLayoutConstraint.activate([
        //картинка
        avatarIimageView.topAnchor.constraint(equalTo: self.topAnchor,constant: 16),
        avatarIimageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
        avatarIimageView.widthAnchor.constraint(equalToConstant: 110),
        avatarIimageView.heightAnchor.constraint(equalToConstant: 110),
        //кнопка
        button.topAnchor.constraint(equalTo: self.avatarIimageView.bottomAnchor,constant: 35),
        button.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
        button.heightAnchor.constraint(equalToConstant: 50),
        button.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -16),
        //лейбл hipster cat
        nameLabel.topAnchor.constraint(equalTo: self.topAnchor,constant: 27),
        nameLabel.leadingAnchor.constraint(equalTo: self.avatarIimageView.leadingAnchor, constant: 140),
        nameLabel.widthAnchor.constraint(equalToConstant: 217),
        nameLabel.heightAnchor.constraint(equalToConstant: 20),
        //лейбл со статусом
        descriptionLabel.topAnchor.constraint(equalTo: self.topAnchor,constant: 70),
        descriptionLabel.leadingAnchor.constraint(equalTo: self.avatarIimageView.leadingAnchor, constant: 140),
        descriptionLabel.heightAnchor.constraint(equalToConstant: 20),
        //поле для ввода статуса
        textField.topAnchor.constraint(equalTo: self.topAnchor,constant: 110),
        textField.leadingAnchor.constraint(equalTo: self.avatarIimageView.leadingAnchor, constant: 140),
        textField.heightAnchor.constraint(equalToConstant: 40),
        textField.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -16)
        ])
    }

    @objc func buttonPressed() {
        let status : String? = self.descriptionLabel.text
        print(status ?? "hi")
        descriptionLabel.text = self.statusText
        
    }
    private var statusText : String = ""
    @objc func statusTextChanged(_ textField: UITextField) {
        statusText = self.textField.text ?? "nil"
        print(statusText)
        
        
    }
    
}

