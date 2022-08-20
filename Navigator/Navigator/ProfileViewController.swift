//
//  ProfileViewController.swift
//  Navigator
//
//  Created by Эля Корельская on 20/08/22.
//
import UIKit

class ProfileViewController: UIViewController {
// профиль пользователя
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
    self.view.addSubview(self.button)
    self.button.center = self.view.center
    }
    private lazy var button: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 300, height: 75))
        button.backgroundColor = .systemRed
        button.setTitle("HELLO", for: .normal)
        button.setTitleColor(.black, for: .normal)
        //button.titleLabel?.font = UIFont(name: "GillSans-Italic", size: 34)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 56)
        button.addTarget(self, action: #selector(self.didTapButton), for: .touchUpInside)
        return button
    }()
    
    //Bar button Item модельное открытие
    @objc private func didTapButton() {
        let vc = InfoViewController()
        vc.modalPresentationStyle = .fullScreen
       self.present(vc, animated: true)
       print("привет")
        
    }
}
