//
//  ProfileView.swift
//  InstagramTutorial
//
//  Created by Panchenko Oleg on 05.08.2023.
//

import SwiftUI

struct ProfileView: View {

    let user: User

    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]

    var body: some View {
        ScrollView {
            //header
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

            //post grid view
            LazyVGrid(columns: gridItems, spacing: 1) {
                ForEach(0...11, id: \.self) { _ in
                    Image("tony")
                        .resizable()
                        .scaledToFill()
                }

            }
            .padding(.horizontal, 1)
        }
        .navigationTitle("Profile")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(user: User.MOCK_USERS[0])
    }
}
