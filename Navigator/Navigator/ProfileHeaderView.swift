//
//  ProfileHeaderView.swift
//  Navigator
//
//  Created by Эля Корельская on 20/08/22.
//
import UIKit


class ProfileHeaderView: UIView {
    
    private lazy var avatarIimageView: UIImageView = {
        let imageView = UIImageView(frame: CGRect(x: 16, y: 16, width: 110, height: 110))
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "cat_image")
        imageView.layer.borderWidth = 3
        imageView.layer.borderColor = UIColor.black.cgColor
        imageView.layer.cornerRadius = imageView.frame.height/2
        imageView.clipsToBounds = true
        return imageView
    }()
    
    override func draw(_ rect: CGRect){
        let aPath = UIBezierPath()
        aPath.move(to: CGPoint(x:0, y: 0))
        aPath.addLine(to: CGPoint(x: 414, y: 0))
        aPath.close()
        UIColor.darkGray.set()
        aPath.lineWidth = 2
        aPath.stroke()
        
    }
    
    private lazy var button: UIButton = {
        let button = UIButton(frame: CGRect(x: 16, y: 142, width: 382, height: 50))
        button.backgroundColor = .systemBlue
        button.setTitle("Show status", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont(name: "Courier New", size: 24)
        button.clipsToBounds = true
        button.addTarget(self, action: #selector(self.buttonPressed), for: .touchUpInside)
        button.layer.opacity = 1
        button.layer.cornerRadius = 4
        return button
    }()
    private lazy var shadowView: UIView = {
        let view = UIView(frame: CGRect(x: 16, y: 142, width: 382, height: 50))
        view.backgroundColor = UIColor(white:1,alpha: 0.5)
        view.setRadiusWithShadow()
        return view
    }()


    private lazy var nameLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 217.5, height: 20.5))
        return label
    }()
    private lazy var descriptionLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 150, y: 87.5, width: 217.5, height: 20.5))
        return label
    }()
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(frame: CGRect(x: 150, y: 27, width: 217.5, height: 57.5))
        stackView.axis = .vertical
        //stackView.backgroundColor = .systemYellow
        stackView.distribution = .fillEqually
        stackView.spacing = 8
        return stackView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupView()
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
        self.addSubview(self.shadowView)
        self.addSubview(self.button)
        self.addSubview(self.stackView)
        self.addSubview(self.descriptionLabel)
        self.stackView.addArrangedSubview(self.nameLabel)
    }

    @objc func buttonPressed(){
        //print("Pressed")
        let status : String? = self.descriptionLabel.text
        print(status ?? "hi")
    }
}

extension UIView {
    func setRadiusWithShadow() {
        self.layer.cornerRadius = 4
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 4, height: 4)
        self.layer.shadowRadius = 4
        self.layer.shadowOpacity = 0.7
        self.layer.masksToBounds = false
    }

}
