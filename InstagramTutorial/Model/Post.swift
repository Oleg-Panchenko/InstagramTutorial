//
//  Post.swift
//  InstagramTutorial
//
//  Created by Panchenko Oleg on 08.08.2023.
//

import Foundation

struct Post: Codable, Hashable, Identifiable {
    let id: String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timestamp: Date
    var user: User?
}

extension Post {
    static var MOCK_POSTS: [Post] = [
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "Billionare, Philanthrop and just a good man",
            likes: 125,
            imageUrl: "tony",
            timestamp: Date(),
            user: User.MOCK_USERS[0]),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "Universe under control",
            likes: 23,
            imageUrl: "doctorStrange",
            timestamp: Date(),
            user: User.MOCK_USERS[1]),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "This is some test caption for now",
            likes: 11,
            imageUrl: "tony",
            timestamp: Date(),
            user: User.MOCK_USERS[2]),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "This is some test caption for now",
            likes: 55,
            imageUrl: "doctorStrange1",
            timestamp: Date(),
            user: User.MOCK_USERS[3]),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "This is some test caption for now",
            likes: 1155,
            imageUrl: "tony",
            timestamp: Date(),
            user: User.MOCK_USERS[4])
    ]
}
