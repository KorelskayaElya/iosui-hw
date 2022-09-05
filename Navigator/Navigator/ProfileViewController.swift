//
//  ProfileViewController.swift
//  Navigator
//
//  Created by Эля Корельская on 20/08/22.
//
import UIKit

class ProfileViewController: UIViewController {
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 44
        tableView.register(ProfileTableHederView.self, forHeaderFooterViewReuseIdentifier: "HederView")
        tableView.register(PostTableViewCell.self, forCellReuseIdentifier: "CustomCell")
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "DefaultCell")
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    private var post: [Post] = [Post(author: "netflix.com", description: "С 2013 года Netflix производит собственные фильмы и сериалы, в том числе и анимационные, а также телепрограммы. В 2016 году компания выпустила 126 оригинальных сериалов и фильмов — больше, чем любой другой сетевой или кабельный канал.", image: "image1", likes: 13, views: 13),
                                Post(author: "kinopoisk.ru", description: "Дом Gucci (2021) Бесцеремонная простолюдинка переворачивает модную империю вверх дном. Скандальная драма Ридли Скотта.", image: "image2", likes: 1345, views: 190),
                                Post(author: "Fresco by Michelangelo.com", description: "«Сотворение Адама» (Сикстинская капелла, Ватикан, Рим, 1508–1512) – четвертая из девяти центральных композиций цикла фресок на тему сотворения мира, заказанных Микеланджело Буонарроти для украшения потолка Сикстинской капеллы папой Юлием II.", image: "image3", likes: 25, views: 19),
                                Post(author: "sunset.com", description: "Невероятно красивое зрелище – закат солнца. Когда солнце, такое близкое, большое, багряно-красное, фантастически красивое, прощаясь с летним днем, ласково дарит последние теплые лучи. И это самое романтичное время суток, которое рождает легенды, обладающие притягивающим волшебством.", image: "image4", likes: 130, views: 109)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupView()
        self.contraints()
    }

    private func setupView() {
        self.view.addSubview(self.tableView)
    }
    private func contraints() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: self.view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
        ])}
}


extension ProfileViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 0 {
            guard let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "HederView") as? ProfileTableHederView
            else { return nil }

            let viewModel = ProfileTableHederView.ViewModel(name: "Hipster Cat", description: "Waiting for smth...", image: nil)
            headerView.setup(with: viewModel)
            return headerView
        }

        return nil
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 720
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 240
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.post.count
    }


    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as? PostTableViewCell else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "DefaultCell", for: indexPath)
            return cell
        }
        cell.setup(with: post[indexPath.row])
        return cell
       
    }
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {

        }
}






    
    


