//
//  ForYouView.swift
//  churmble
//
//  Created by Piyush Anand on 30/11/24.
//

import SwiftUI

struct ForYouView: View {
    var body: some View {
        NavigationStack{
            VStack(alignment:.leading){
                Text("We're working our magic to learn what you like, so we can recommend great people like you.")
                    .font(.system(size: 16))
                    .bold()
                    .padding()
                ScrollView(.horizontal){
                    HStack{
                    ForEach(1...4,id: \.self){_ in
                        
                            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                .frame(width:350,height: 500)
                            
                        }
                    }
                   
                    .padding()
                }
            }
            
            .toolbar {
                ToolbarItem(placement: .principal) { // Use .principal for custom title
                    HStack {
                        Text("For You")
                            .font(.title)
                            .bold()
                        Spacer()
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image(systemName: "star.fill")
                        })
                        .frame(width:70,height: 50)
                        .background(Color.white)
                        .cornerRadius(30)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        
                    }
                
                }
                
            }
        }
        
    }
}

#Preview {
    ForYouView()
}
