//
//  InfoViewController.swift
//  Navigator
//
//  Created by Эля Корельская on 20/08/22.
//

import UIKit

class InfoViewController: UIViewController {
    
    private lazy var closeButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        button.setImage(UIImage(systemName: "trash"), for: .normal)
        button.addTarget(self, action: #selector(self.didTapCloseButton), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemOrange
        
        self.view.addSubview(self.closeButton)
        self.closeButton.center = self.view.center

        // Do any additional setup after loading the view.
    }
    
    @objc private func didTapButton() {
        let vc = InfoViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc private func didTapCloseButton() {
        
        let alertController = UIAlertController(title: "Необходимо выбрать", message: "", preferredStyle: .actionSheet)
        let firstAction = UIAlertAction(title: "Продолжить", style: .default) { _ in
            print("Продолжить")
        }
        let secondAction = UIAlertAction(title: "Удалить", style: .destructive) { _ in
            print("Удалить")
        }
        let thirdAction = UIAlertAction(title: "Отмена", style: .cancel) { _ in
            print("Отмена")
        }
        alertController.addAction(firstAction)
        alertController.addAction(secondAction)
        alertController.addAction(thirdAction)
        self.present(alertController, animated: true)
    }
    

}

