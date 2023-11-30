//
//  CoverageTests.swift
//  CoverageTests
//
//  Created by Henrique César Gouveia on 30/11/23.
//

import XCTest
@testable import Coverage

final class PersonTests: XCTestCase {

    func testPersonInitializationWithValidInput() {
        let name = "John Doe"
        let email = "johndoe@example.com"
        let dateOfBirth = Date()
        let gender = Person.Gender.male

        let sut = Person(name: name, email: email, dateOfBirth: dateOfBirth, gender: gender)

        XCTAssertEqual(sut.name, name)
        XCTAssertEqual(sut.email, email)
        XCTAssertEqual(sut.dateOfBirth, dateOfBirth)
        XCTAssertEqual(sut.gender, gender)
    }

    func testPersonProperties() {
        let name = "John Doe"
        let email = "johndoe@example.com"
        let dateOfBirth = Date()
        let gender = Person.Gender.male

        var sut = Person(name: name, email: email, dateOfBirth: dateOfBirth, gender: gender)

        XCTAssertEqual(sut.name, name)
        XCTAssertEqual(sut.email, email)
        XCTAssertEqual(sut.dateOfBirth, dateOfBirth)
        XCTAssertEqual(sut.gender, gender)

        sut.name = "Jane Doe"
        sut.email = "janedoe@example.com"
        sut.dateOfBirth = Date()
        sut.gender = .female

        XCTAssertEqual(sut.name, "Jane Doe")
        XCTAssertEqual(sut.email, "janedoe@example.com") 
        XCTAssertEqual(sut.gender, .female)
    }

}
