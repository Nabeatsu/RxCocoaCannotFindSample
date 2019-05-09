//
//  RxSwiftSampleTests.swift
//  RxSwiftSampleTests
//
//  Created by 田辺信之 on 2019/05/09.
//  Copyright © 2019 田辺信之. All rights reserved.
//

import XCTest
import RxTest
import RxSwift

@testable import RxSwiftSample

class RxSwiftSampleTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testDebounce() {
        let scheduler = TestScheduler(initialClock: 0)
        
        let observable = scheduler.createHotObservable([
            Recorded.next(1, "R"),
            Recorded.next(2, "Rx"),
            Recorded.next(3, "RxS"),
            Recorded.next(4, "RxSw"),
            Recorded.next(5, "RxSwi"),
            Recorded.next(6, "RxSwift")
            ])
        let seconds1: RxTimeInterval = .seconds(1)
        _ = observable
            .debounce(seconds1, scheduler: scheduler)
            .subscribe(onNext: {
                print("onNext: ", $0)
            })
        scheduler.start()
        
        _ = Observable.just(10)
            .map { $0 * 2 }
            .subscribe(onNext: {
                print($0) // 20 
            })

    }
    

}
