//
//  FeedViewModel.swift
//  InstagramTutorial
//
//  Created by Panchenko Oleg on 19.08.2023.
//

import Firebase
import Foundation

class FeedViewModel: ObservableObject {
    @Published var posts = [Post]()

    init() {
        Task { try await fetchPosts() }
    }

    @MainActor
    func fetchPosts() async throws {
        self.posts = try await PostService.fetchFeedPosts()
    }
}
