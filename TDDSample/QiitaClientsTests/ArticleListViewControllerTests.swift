//
//  ArticleListViewControllerTests.swift
//  TDDSampleTests
//
//  Created by Shunta Nabezawa on 2021/05/28.
//

import XCTest
@testable import TDDSample

class ArticleListViewControllerTests: XCTestCase {

    func test_タイトルが表示されていること() {
        // タイトル表示(仮実装) - GREEN
        let article = Article(title: "記事タイトル")
        let client = FakeArticleListAPIClient(fakeResponse: [article])
        let vc = ArticleListViewController(client: client)
        let window = UIWindow()
        window.rootViewController = vc
        window.makeKeyAndVisible()
        XCTAssertEqual(vc.titleLabel.text, "記事タイトル")

        // タイトル表示(仮実装) - RED
        // let vc = ArticleListViewController()
        // VCで宣言されていないため、コンパイルエラーになる。
        // XCTAssertEqual(vc.titleLabel.text, "記事タイトル")
    }

    func test_タイトル2が表示されていること() {
        let article = Article(title: "記事タイトル2")
        let client = FakeArticleListAPIClient(fakeResponse: [article])
        let vc = ArticleListViewController(client: client)
        let window = UIWindow()
        window.rootViewController = vc
        window.makeKeyAndVisible()

        XCTAssertEqual(vc.titleLabel.text, "記事タイトル2")
    }
}


class FakeArticleListAPIClient: ArticleListAPIClientProtocol {

    let fakeResponse: [Article]

    init(fakeResponse: [Article]) {
        self.fakeResponse = fakeResponse
    }

    func fetch(completion: @escaping ([Article]?) -> Void) {
        completion(fakeResponse)
    }
}
