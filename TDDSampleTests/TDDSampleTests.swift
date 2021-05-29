////
////  TDDSampleTests.swift
////  TDDSampleTests
////
////  Created by Shunta Nabezawa on 2021/05/28.
////
//
//import XCTest
//@testable import TDDSample
//
//class TDDSampleTests: XCTestCase {
//
//    /// 初期状態
////    override func setUpWithError() throws {
////        // Put setup code here. This method is called before the invocation of each test method in the class.
////    }
////
////    override func tearDownWithError() throws {
////        // Put teardown code here. This method is called after the invocation of each test method in the class.
////    }
////
////    func testExample() throws {
////        // This is an example of a functional test case.
////        // Use XCTAssert and related functions to verify your tests produce the correct results.
////    }
////
////    func testPerformanceExample() throws {
////        // This is an example of a performance test case.
////        self.measure {
////            // Put the code you want to measure the time of here.
////        }
////    }
//
//    /// XCTAssertEqual
//    /// X,Yを比較して結果が等しいことをチェック。
//    func test_XCTAssertEqual_成功() {
//        XCTAssertEqual(5, 5)
//    }
//
//    func test_XCTAssertEqual_失敗() {
//        XCTAssertEqual(5, 4)
//    }
//
//    /// XCTAssertTrue, XCTAssertFalse
//    /// XがYES, XがNOであることをチェック
//    func test_XCTAssertTrue_成功() {
//        XCTAssertTrue(true)
//    }
//
//    func test_XCTAssertFalse_成功() {
//        XCTAssertFalse(false)
//    }
//
//    /// XCTAssertNil, XCTAssertNotNil
//    /// XCTAssertNilはXがnilであることをチェック
//    /// XCTAssertNotNilはXがnilでないことをチェック
//    func test_XCTAssertNil_成功() {
//        let vc: UIViewController? = nil
//        XCTAssertNil(vc)
//    }
//
//    func test_XCTAssertNotNil_成功() {
//        var vc: UIViewController?
//        vc = UIViewController()
//        XCTAssertNotNil(vc)
//    }
//
//    /// XCTestExpectation
//    /// APIリクエストなどの非同期処理で使用する。
//    /// waitメソッドで指定したtimeout以内にfulfillが呼ばれると成功
//    func test_asynchronous_成功() {
//        let exp = XCTestExpectation(description: "Test Success")
//
//        DispatchQueue.global(qos: .default).async {
//            exp.fulfill()
//        }
//
//        wait(for: [exp], timeout: 5)
//    }
//
//    func test_asynchronous_失敗() {
//        let exp = XCTestExpectation(description: "Test Success")
//
//        DispatchQueue.global(qos: .default).async {
//            // exp.fulfill()
//        }
//
//        wait(for: [exp], timeout: 5)
//    }
//
//    /// XCTAssertThrowsError, XCTAssertNoThrow
//    /// XCTAssertThrowsErrorは例外が発生することをチェック。
//    /// XCTAssertNoThrowは例外が発生しないことをチェック。
//    func log(text: String) throws {
//        if text.isEmpty {
//            throw NSError(domain: "error", code: -1, userInfo: nil)
//        }
//        print(text)
//    }
//
//    func test_XCTAssertThrows_成功() {
//        XCTAssertThrowsError(try log(text: ""))
//    }
//
//    func test_XCTAssertThrows_失敗() {
//        XCTAssertThrowsError(try log(text: "例外処理を投げない"))
//    }
//
//    func test_XCTAssertNoThrow_成功() {
//        XCTAssertNoThrow(try log(text: "例外処理を投げない"))
//    }
//
//    func test_XCTAssertNoThrow_失敗() {
//        XCTAssertNoThrow(try log(text: ""))
//    }
//}
//
///// テストライフサイクル
//class SetUpAndTearDownExampleTestCase: XCTestCase {
//
//    // クラスメソッドのsetUpメソッドは最初のテストメソッドの前に呼ばれる
//    override class func setUp() {
//        super.setUp()
//    }
//
//    // インスタンスメソッドのsetUpメソッドは各々のテストメソッドのまえに呼ばれる
//    override func setUp() {
//        super.setUp()
//    }
//
//    func testMethod1() {
//        addTeardownBlock {
//            // testMethod1が呼ばれた後に呼ばれる
//        }
//    }
//
//    func testMethod2() {
//
//        addTeardownBlock {
//            // testMethod2 メソッドが呼ばれた後に呼ばれる
//        }
//
//        addTeardownBlock {
//            // addTeardownBlockはいくつも追加することができる
//        }
//    }
//
//    // インスタンスメソッドのtearDownメソッドは各々のテストメソッドの後に呼ばれる
//    override func tearDown() {
//        super.tearDown()
//    }
//
//    // クラスメソッドのtearDownメソッドは全てのテストメソッドが完了した後に呼ばれる
//    override class func tearDown() {
//        super.tearDown()
//    }
//}
