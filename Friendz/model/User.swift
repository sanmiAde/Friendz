//
//  User.swift
//  Friendz
//
//  Created by sanmi_personal on 13/05/2021.
//

import Foundation

struct User : Codable{
    var id: UUID
    var isActive: Bool
    var name: String
    var age: Int
    var email: String
    var address: String
    var about: String
    var registered: Date
    var tags: [String]
    var friends: [Friend]
}

struct Friend: Codable {
    var id: UUID
    var name: String
}
