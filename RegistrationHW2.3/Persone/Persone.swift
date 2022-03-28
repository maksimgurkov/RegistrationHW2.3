//
//  Persone.swift
//  RegistrationHW2.3
//
//  Created by Максим Гурков on 28.03.2022.
//

import Foundation
import UIKit

struct Persone {
    let logIn: String
    let password: String
    let image: UIImage
    let aboutMe: Info
    
    static func aboutMe() -> Persone {
        Persone(
            logIn: "Max",
            password: "12345",
            image: UIImage(named: "2")!,
            aboutMe: Info(
                work: Work(
                    address: "Moscow",
                    nameCompany: "Construction company",
                    post: "Head of sales deportment"),
                hobby: Hobby(
                    game: "Video games",
                    sport: "Football",
                    serial: Serial(
                        serialOne: "",
                        serialTwo: "",
                        serialThree: ""))))
        
    }
}

struct Info {
    let work: Work
    let hobby: Hobby
    
}

struct Work {
    let address: String
    let nameCompany: String
    let post: String
    
}

struct Hobby {
    let game: String
    let sport: String
    let serial: Serial
}

struct Serial {
    let serialOne: String
    let serialTwo: String
    let serialThree: String
}
