//
//  ProfileView.swift
//  churmble
//
//  Created by Piyush Anand on 30/11/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationStack {
            ScrollView{
                VStack{
                    
                    HStack{
                        Image(systemName: "person.fill")
                            .resizable()
                            .frame(width: 30,height: 30)
                            .padding()
                        
                        VStack(alignment:.leading){
                            Text("Name")
                                .font(.title)
                                .bold()
                            Text("Complete Profile")
                        }
                        Spacer()
                        
                    }
                    
                    .padding(.horizontal,15)
                    
                    HStack{
                        ProfileScroll()
                    }
                    
                    
                    
                    
                    
                    //                NavigationLink("Go to Details", destination: /*DetailsView())*/
                }
            }
            .toolbar {
                ToolbarItem(placement: .principal) { // Use .principal for custom title
                    HStack {
                        Text("Profile")
                            .font(.title)
                            .bold()
                        Spacer()
                        Image(systemName: "star.fill")
                    }
                
                }
                
            }
            
        }
            
            
        
    }
}

#Preview {
    ProfileView()
}
