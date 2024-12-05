//
//  ChatView.swift
//  churmble
//
//  Created by Piyush Anand on 01/12/24.
//

import SwiftUI

struct ChatView: View {
    var body: some View {
        NavigationStack{
            VStack{
                Image(systemName: "heart.fill")
                Text("Connections start here")
                    .font(.title)
                    .bold()
                    .padding()
                Text("When you both swipe right on each other, you'll match. Here's where you can chat")
                    .padding(.horizontal,15)
                
                Button(action:{}){
                   Text("Find your person")
                }
                .frame(width: 350,height: 50)
                .foregroundColor(.white)
                .background(Color.black)
                .cornerRadius(30)
                .padding()
                
                Button(action:{}){
                   Text("Find your person")
                }
                .frame(width: 350,height: 50)
                .foregroundColor(.black)
                .background(Color.white)
                .cornerRadius(30)
                .shadow(radius: 10)
            }
            .toolbar {
                ToolbarItem(placement: .principal) { // Use .principal for custom title
                    HStack {
                        Text("Chats")
                            .font(.title)
                            .bold()
                        Spacer()
//                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
//                            Image(systemName: "star.fill")
//                        })
//                        .frame(width:70,height: 50)
//                        .background(Color.white)
//                        .cornerRadius(30)
//                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        
                    }
                
                }
                
            }
        }
        
    }
}

#Preview {
    ChatView()
}
