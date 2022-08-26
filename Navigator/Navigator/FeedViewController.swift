//
//  FeedViewController.swift
//  Navigator
//
//  Created by Эля Корельская on 25.08.2022.
//

import UIKit

class FeedViewController: UIViewController {
   // var post = Post(title: "Мой пост")
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .brown
        //self.view.addSubview(self.button)
        //self.button.center = self.view.center
        //setupButton()
        
        // Do any additional setup after loading the view.
    }
}
//    private lazy var button: UIButton = {
//        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 210, height: 210))
//        button.layer.cornerRadius = 50
//        button.backgroundColor = .green
//        button.setTitle(" Добро пожаловать", for: .normal)
//        button.setTitleColor(.black, for: .normal)
//        button.titleLabel?.font = UIFont(name: "GillSans-Italic", size: 18)
//        //button.addTarget(self, action: #selector(self.didTapButton), for: .touchUpInside)
//        let cgPath = UIBezierPath(roundedRect: button.bounds,byRoundingCorners: [.allCorners], cornerRadii: CGSize(width: 4.0, height: 4.0)).cgPath
//        button.layer.shadowOffset = CGSize(width: 4.0, height: 4.0)
//        button.layer.shadowRadius = 4.0
//        button.layer.opacity = 0.7
//        button.layer.shadowColor = UIColor.red.cgColor
//        button.layer.shadowPath = cgPath
//
//        return button
//    }()
//
//    @objc private func buttonAction() {
        
       // let postViewController = PostViewController()
       // self.navigationController?.pushViewController(postViewController, animated: true)
       // postViewController.titlePost = post.title
    
    //кнопка перехода
//    private lazy var button_post: UIButton = {
//
//        let button = UIButton()
//        button.backgroundColor = .blue
//        button.layer.cornerRadius = 6
//        button.setTitle("Show post", for: .normal)
//        button.setTitleColor(.lightGray, for: .normal)
//        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 24)
//        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
//        button.translatesAutoresizingMaskIntoConstraints = false
//
//        return button
//    }()
//    private func setupButton() {
//
//        self.view.addSubview(self.button_post)
//        self.button_post.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant:-750).isActive = true
//        self.button_post.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 50).isActive = true
//        self.button_post.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -50).isActive = true
//        self.button_post.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 40).isActive = true
//        self.view.addSubview(self.button_post)
//
//    }
    //@objc private func didTapButton() {
        //let vc = InfoViewController()
        //vc.modalPresentationStyle = .fullScreen
       // self.present(vc, animated: true)
    //}
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemIndigo
    }
}

