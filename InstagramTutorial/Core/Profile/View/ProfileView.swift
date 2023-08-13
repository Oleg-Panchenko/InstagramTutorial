//
//  ProfileView.swift
//  InstagramTutorial
//
//  Created by Panchenko Oleg on 05.08.2023.
//

import SwiftUI

struct ProfileView: View {

    let user: User

    var posts: [Post] {
        return Post.MOCK_POSTS.filter( {$0.user?.username == user.username} )
    }

    var body: some View {
        ScrollView {
            //header
            ProfileHeaderView(user: user)

            //post grid view
           PostGridView(posts: posts)
            .padding(.horizontal, 1)
        }
        .navigationTitle("Profile")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView(user: User.MOCK_USERS[0])
    }
}
