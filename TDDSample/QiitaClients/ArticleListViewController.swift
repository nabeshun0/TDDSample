//
//  ArticleListViewController.swift
//  TDDSample
//
//  Created by Shunta Nabezawa on 2021/05/28.
//

import UIKit

class ArticleListViewController: UIViewController {

    let titleLabel = UILabel()
    let client: ArticleListAPIClientProtocol

    init(client: ArticleListAPIClientProtocol = ArticleListAPIClient()) {
        self.client = client

        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(titleLabel)
        titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16).isActive = true
        titleLabel.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16).isActive = true

        // タイトル表示(仮実装) - Green
        //  titleLabel.text = "記事タイトル"

        client.fetch { [weak self] articleList in
            guard let articleList = articleList,
                  0 < articleList.count else { return }
            self?.titleLabel.text = articleList[0].title
        }


    }
}
