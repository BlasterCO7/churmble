//
//  LikedYouView.swift
//  churmble
//
//  Created by Piyush Anand on 30/11/24.
//

import SwiftUI

struct LikedYouView: View {
    @State private var activeButton: Int = 0
    var body: some View {
        NavigationStack{
            VStack(alignment:.leading){
                Text("When people are into you, they'll appear here.Enjoy,")
                    .font(.system(size: 16))
                    .offset(y:-40)
                    .bold()
                    .padding()
                
                    // HStack with buttons
                    ScrollView(.horizontal) {
                        HStack {
                            Button(action: {
                                activeButton = 0
                            }) {
                                Text("All 0")
                                    .bold()
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(activeButton == 0 ? Color.black : Color.white)
                                    .foregroundColor(activeButton == 0 ? .white : .black)
                                    .cornerRadius(25)
                            }

                            Button(action: {
                                activeButton = 1
                            }) {
                                Text("New 0")
                                    .bold()
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(activeButton == 1 ? Color.black : Color.white)
                                    .foregroundColor(activeButton == 1 ? .white : .black)
                                    .cornerRadius(25)
                            }

                            Button(action: {
                                activeButton = 2
                            }) {
                                Text("Nearby 0")
                                    .bold()
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(activeButton == 2 ? Color.black : Color.white)
                                    .foregroundColor(activeButton == 2 ? .white : .black)
                                    .cornerRadius(25)
                            }
                            Button(action: {
                                activeButton = 3
                            }) {
                                Text("Recently active 0")
                                    .bold()
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(activeButton == 3 ? Color.black : Color.white)
                                    .foregroundColor(activeButton == 3 ? .white : .black)
                                    .cornerRadius(25)
                            }
                        }
                    }
                    .padding()
                    .offset(y:-50)

                    // ZStack to show content below the buttons
                    ZStack {
                        if activeButton == 0 {
//                            PayPlanView()
                        } else if activeButton == 1 {
//                            ProfileInsightsView()
                        } else if activeButton == 2 {
//                            ProfileInsightsView()
                        }
                        else if activeButton == 3 {
//                            SafetyWellbeingView()
                        }
                    }
                    .padding()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.gray.opacity(0.1))
                
            }
            .toolbar {
                ToolbarItem(placement: .principal) { // Use .principal for custom title
                    HStack {
                        Text("Liked You")
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
    LikedYouView()
}
