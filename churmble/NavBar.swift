//
//  NavBar.swift
//  churmble
//
//  Created by Piyush Anand on 30/11/24.
//

import SwiftUI

struct NavBar: View {
    var body: some View{
        TabView {
            NavigationStack {
                ProfileView()
            }
            .tabItem {
                Image(systemName: "person.fill")
                Text("Profile")
            }

            NavigationStack {
                ForYouView()
            }
            .tabItem {
                Image(systemName: "star.fill")
                Text("For You")
            }

            NavigationStack {
                PeopleView()
            }
            .tabItem {
                Image(systemName: "person.2.fill")
                Text("People")
            }

            NavigationStack {
                LikedYouView()
            }
            .tabItem {
                Image(systemName: "heart.fill")
                Text("Liked You")
            }

            NavigationStack {
                ChatView()
            }
            .tabItem {
                Image(systemName: "message.fill")
                Text("Chats")
            }
        }
    }
}

#Preview {
    NavBar()
}
