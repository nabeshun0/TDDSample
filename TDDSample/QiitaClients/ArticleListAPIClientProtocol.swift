//
//  ArticleListAPIClientProtocol.swift
//  TDDSample
//
//  Created by Shunta Nabezawa on 2021/05/29.
//

import Foundation

protocol ArticleListAPIClientProtocol {
    func fetch(completion: @escaping (([Article]?) -> Void))
}

