//
//  ProfileViewController.swift
//  Navigator
//
//  Created by Эля Корельская on 20/08/22.
//
import UIKit

class ProfileViewController: UIViewController {
    
    private lazy var profileView: ProfileHeaderView = {
        let view = ProfileHeaderView()
        view.backgroundColor = .lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private lazy var newButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemGreen
        button.setTitle("Button", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont(name: "Courier New", size: 24)
        button.clipsToBounds = true
        button.layer.opacity = 1
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 4
        button.layer.shadowColor = UIColor.purple.cgColor
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowRadius = 4
        button.layer.shadowOpacity = 0.7
        button.layer.masksToBounds = false
        return button
    }()


    private let profile = Profile(name: "Hipster Cat",description: "Waiting for smth...", image: nil)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Profile"
        self.view.backgroundColor = .systemBackground
        self.view.addSubview(self.profileView)
        self.view.addSubview(self.newButton)
        let profileViewContraints = self.profileViewContraints()
        NSLayoutConstraint.activate(profileViewContraints)
        self.profileView.setup(with: self.profile)
    }
    
    private func profileViewContraints() -> [NSLayoutConstraint] {
        let topContraintProfileView = NSLayoutConstraint(item: self.profileView, attribute: .top, relatedBy: .equal, toItem: self.view.safeAreaLayoutGuide, attribute: .top, multiplier: 1, constant: 0)
        let leftContraintProfileView = self.profileView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor)
        let rightContraintProfileView = self.profileView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor)
        let heightAnchorProfileView = self.profileView.heightAnchor.constraint(equalToConstant: 220)
        let leadingConstraintButton = self.newButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0)
        let heightAnchorButton = self.newButton.heightAnchor.constraint(equalToConstant: 50)
        let trailingConstraintButton = self.newButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor,constant: 0)
        let bottomConstraintButton = NSLayoutConstraint(item: self.newButton, attribute: .bottom, relatedBy: .equal, toItem: self.view.safeAreaLayoutGuide, attribute: .bottom, multiplier: 1, constant: 0)
        return [
            topContraintProfileView,leftContraintProfileView,heightAnchorProfileView,rightContraintProfileView, leadingConstraintButton, heightAnchorButton, trailingConstraintButton,bottomConstraintButton
        ]
    }
 
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
    }
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
    }
}
