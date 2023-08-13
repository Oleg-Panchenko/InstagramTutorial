//
//  ProfileHeaderView.swift
//  InstagramTutorial
//
//  Created by Panchenko Oleg on 08.08.2023.
//

import SwiftUI

struct ProfileHeaderView: View {

    let user: User
    @State private var showEditPfofile = false
    
    var body: some View {
        VStack(spacing: 10) {
            //pic and stats
            HStack() {
                Image(user.profileImageUrl ?? "tony")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())

                Spacer()

                HStack(spacing: 8) {
                    UserStatView(value: 3, title: "Posts")

                    UserStatView(value: 25, title: "Followers")

                    UserStatView(value: 38, title: "Following")
                }
            }
            .padding(.horizontal)

            //name and bio

            VStack(alignment: .leading, spacing: 4) {
                Text(user.fullName ?? "")
                    .font(.footnote)
                    .fontWeight(.semibold)

                Text(user.bio ?? "")
                    .font(.footnote)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)

            //action button
            Button {
                if user.isCurrentUser {
                    showEditPfofile.toggle()
                } else {

                }
            } label: {
                Text(user.isCurrentUser ? "Edit Profile" : "Follow")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 32)
                    .background(user.isCurrentUser ? .white : Color(.systemBlue))
                    .foregroundColor(user.isCurrentUser ? .black : .white)
                    .cornerRadius(6)
                    .overlay(
                        RoundedRectangle(cornerRadius: 6)
                            .stroke(user.isCurrentUser ? .gray : .clear, lineWidth: 1))

            }

            Divider()
        }
        .fullScreenCover(isPresented: $showEditPfofile) {
            Text("Edit profile view")
        }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView(user: .MOCK_USERS[0])
    }
}
