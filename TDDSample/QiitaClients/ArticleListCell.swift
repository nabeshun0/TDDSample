//
//  ArticleListCell.swift
//  TDDSample
//
//  Created by Shunta Nabezawa on 2021/05/29.
//

import UIKit

class ArticleListCell: UITableViewCell {

    let titleLabel = UILabel()

    override func layoutSubviews() {
        super.layoutSubviews()

        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(titleLabel)
        titleLabel.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        titleLabel.leftAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leftAnchor, constant: 8).isActive = true
    }

    func configure(title: String) {
        titleLabel.text = title
    }
}
