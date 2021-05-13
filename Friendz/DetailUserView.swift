//
//  DetailUserView.swift
//  Friendz
//
//  Created by sanmi_personal on 13/05/2021.
//

import SwiftUI

struct DetailUserView: View {
    let selectedUser: User
    let users: [User]
    
    var body: some View {
        VStack {
            Text("About")
                .padding()
                .font(.title)
            Text("\(selectedUser.about)")
                .padding()
            List(selectedUser.friends, id: \.id) { friend in
                NavigationLink(
                    destination: DetailUserView(selectedUser: getUser(userId: friend.id) , users: users)) {
                    Text(friend.name)
                }
               
            }
        }
        .navigationBarTitle(selectedUser.name)
        
    }
    
    private func getUser(userId: UUID) -> User {
        users.first { (User) -> Bool in
            User.id == userId
        }!
    }
}
