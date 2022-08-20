//
//  ProfileViewController.swift
//  Navigator
//
//  Created by Эля Корельская on 20/08/22.
//
import UIKit

class ProfileViewController: UIViewController {
    
    private lazy var profileView: ProfileHeaderView = {
        let view = ProfileHeaderView(frame: .zero)
        view.backgroundColor = .lightGray
        return view
    }()
    private lazy var whiteView: UIView = {
        let view = UIView(frame: CGRect(x: 0,
                                        y: 0,
                                        width: 414,
                                        height: 90))
        view.backgroundColor = .white
        return view
    }()

    private lazy var greyLine: UIView = {
        let view = UIView(frame: CGRect(x: 0,
                                        y: 812,
                                        width: 414,
                                        height: 1))
        view.backgroundColor = .darkGray
        return view
    }()
    
    private let profile = Profile(name: "Hipster Cat",description: "Waiting for smth...", image: nil)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Profile"
        self.view.backgroundColor = .lightGray
        self.view.addSubview(self.whiteView)
        self.view.addSubview(self.greyLine)
        self.view.addSubview(self.profileView)
        self.profileView.setup(with: self.profile)
    }
    //фрейм корневого view
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        self.profileView.frame = CGRect(x: 0,
                                        y: 90,
                                        width: 414,
                                        height: 246)
    }
}





    
    


