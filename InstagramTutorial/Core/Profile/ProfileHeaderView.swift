//
//  ProfileHeaderView.swift
//  InstagramTutorial
//
//  Created by Panchenko Oleg on 08.08.2023.
//

import SwiftUI

struct ProfileHeaderView: View {

    let user: User
    
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

            } label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 32)
                    .foregroundColor(.black)
                    .overlay(
                        RoundedRectangle(cornerRadius: 6)
                            .stroke(Color.gray, lineWidth: 1))

            }

            Divider()
        }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView(user: .MOCK_USERS[0])
    }
}
