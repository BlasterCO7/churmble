//import SwiftUI
//
//struct ProfileScroll: View {
//    @State private var activeButton: Int = 0 // Tracks the active button index
//
//    var body: some View {
//        VStack {
//            // HStack with buttons
//            ScrollView(.horizontal) {
//                HStack {
//                    Button(action: {
//                        activeButton = 0
//                    }) {
//                        Text("Pay plan")
//                            .bold()
//                            .padding()
//                            .frame(maxWidth: .infinity)
//                            .background(activeButton == 0 ? Color.black : Color.white)
//                            .foregroundColor(activeButton == 0 ? .white : .black)
//                            .cornerRadius(25)
//                    }
//
//                    Button(action: {
//                        activeButton = 1
//                    }) {
//                        Text("Profile insights")
//                            .bold()
//                            .padding()
//                            .frame(maxWidth: .infinity)
//                            .background(activeButton == 1 ? Color.black : Color.white)
//                            .foregroundColor(activeButton == 1 ? .white : .black)
//                            .cornerRadius(25)
//                    }
//
//                    Button(action: {
//                        activeButton = 2
//                    }) {
//                        Text("Safety and wellbeing")
//                            .bold()
//                            .padding()
//                            .frame(maxWidth: .infinity)
//                            .background(activeButton == 2 ? Color.black : Color.white)
//                            .foregroundColor(activeButton == 2 ? .white : .black)
//                            .cornerRadius(25)
//                    }
//                }
//            }
//            .padding()
//
//            // ZStack to show content below the buttons
//            ZStack {
//                if activeButton == 0 {
//                    PayPlanView()
//                } else if activeButton == 1 {
//                    ProfileInsightsView()
//                } else if activeButton == 2 {
//                    SafetyWellbeingView()
//                }
//            }
//            .padding()
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(Color.gray.opacity(0.1))
//        }
//    }
//}
//
//struct PayPlanView: View {
//    var body: some View {
//        VStack {
//            HStack{
//                Rectangle()
//                    .fill(Color.gray.opacity(0.1))
//                    .frame(width: 170,height: 100)
//                    .overlay{
//                        HStack{
//                            Image(systemName: "person.fill")
//                                .resizable()
//                                .frame(width: 25,height: 25)
//                            VStack(alignment:.leading){
//                                Text("Spotlight")
//                                Text("Stand out")
//                            }
//                        }
//                    }
//                    .cornerRadius(15)
//                    .shadow(radius: 15)
//                    
//                Rectangle()
//                    .fill(Color.gray.opacity(0.1))
//                    .frame(width: 170,height: 100)
//                    .overlay{
//                        HStack{
//                            Image(systemName: "person.fill")
//                                .resizable()
//                                .frame(width: 25,height: 25)
//                            VStack(alignment:.leading){
//                                Text("Spotlight")
//                                Text("Stand out")
//                            }
//                        }
//                    }
//                    .cornerRadius(15)
//                    .shadow(radius: 15)
//            }
//            
//            ScrollView(.horizontal){
//                
//                HStack{
//                    ForEach(1...3,id: \.self){_ in
//                        ZStack{
//                            RoundedRectangle(cornerRadius: 30)
//                                .fill(Color.white)
//                                .frame(width: 300,height: 500)
//                                .overlay{
//                                    HStack {
//                                        VStack(alignment:.leading){
//                                            
//                                            Text("Perks you'll love")
//                                                .font(.title2)
//                                                .bold()
//                                                .padding()
//                                            
//                                            Text("Get exclusive photo insights")
//                                                .font(.callout)
//                                                .bold()
//                                                .padding(.horizontal,15)
//                                                
//                                            Text("See which photos people love most")
//                                                .font(.caption)
//                                                .padding(.horizontal,15)
//                                                
//
//                                            Text("See who liked you")
//                                                .font(.callout)
//                                                .bold()
//                                                .padding(.horizontal,15)
//                                            Text("See who has already liked you")
//                                                .font(.caption)
//                                                .padding(.horizontal,15)
//                                            Text("Fast track your likes")
//                                                .font(.callout)
//                                                .bold()
//                                                .padding(.horizontal,15)
//                                            Text("Like someone? We'll make sure they see you sooner")
//                                                .font(.caption)
//                                                .padding(.horizontal,15)
//                                            
//                                        }
//                                        .offset(y:50)
//                                        Spacer()
//                                    }
//                                }
//                                .shadow(radius:2)
//                                
//                            Rectangle()
//                                 .fill(Color.yellow)
//                                 .frame(width: 300,height: 40)
//                                 .offset(y: -60)
//                           
//                            RoundedRectangle(cornerRadius: 30)
//                                .fill(Color.yellow)
//                                .frame(width: 300,height: 200)
//                                .overlay{
//                                    VStack{
//                                        HStack(){
//                                            VStack(alignment:.leading){
//                                                Text("Premium+")
//                                                    .font(.title)
//                                                    .bold()
//                                                Text("Get the VIP treatmt, and enjoy better ways to connect with incredible people")
//                                                    .font(.system(size: 14))
//                                            }
//                                            .frame(width: 150)
//                                            Spacer()
//                                            
//                                            Image(systemName: "person.fill")
//                                                .resizable()
//                                                .frame(width: 40,height: 40)
//                                        }
//                                        .padding()
//                                        
//                                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
//                                            Text("Explore Premium+")
//                                                .foregroundColor(.white)
//                                                .frame(width: 200,height: 50)
//                                                .background(Color.black)
//                                                .cornerRadius(15)
//                                        })
//                                    }
//                                }
//                                .offset(y: -150)
//                            
//                            
//                           
//                                
//                        }
//                    }
//                    
//                    
//                    
//                        
//                }
//            }
//            .padding()
//            
//        }
//    }
//}
//
//struct ProfileInsightsView: View {
//    var body: some View {
//        VStack {
//            Text("This is the Profile Insights View")
//                .font(.largeTitle)
//                .foregroundColor(.green)
//            // Add your content here for the Profile Insights screen
//        }
//    }
//}
//
//struct SafetyWellbeingView: View {
//    var body: some View {
//        VStack {
//            Text("This is the Safety and Wellbeing View")
//                .font(.largeTitle)
//                .foregroundColor(.purple)
//            // Add your content here for the Safety and Wellbeing screen
//        }
//    }
//}
//
//#Preview {
//    ProfileScroll()
//}
