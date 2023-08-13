//
//  User.swift
//  InstagramTutorial
//
//  Created by Panchenko Oleg on 07.08.2023.
//

import Foundation
import Firebase

struct User: Identifiable, Codable, Hashable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullName: String?
    var bio: String?
    let email: String

    var isCurrentUser: Bool {
        guard let currentUid = Auth.auth().currentUser?.uid else { return false }
        return currentUid == id
    }
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "Iron Man", profileImageUrl: "tony", fullName: "Tony Stark", bio: "Avenger", email: "tony@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Doctor Strange", profileImageUrl: "doctorStrange", fullName: "Stephen", bio: "Avenger", email: "doctorStrange@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Iron Man", profileImageUrl: "tony", fullName: "Tony Stark", bio: "Biilionare and just a good man", email: "tony@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Doctor Strange", profileImageUrl: "doctorStrange1", fullName: "Stephen", bio: "Avenger", email: "doctorStrange@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Iron Man", profileImageUrl: "tony", fullName: "Tony Stark", bio: "Avenger", email: "tony@gmail.com")
    ]
}
