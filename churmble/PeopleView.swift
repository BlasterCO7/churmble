import SwiftUI

struct PeopleView: View {
    @State private var offset: CGFloat = 0
    @State private var rotation: Angle = .zero
    @State private var currentIndex: Int = 0
    @State private var isDragging: Bool = false

    let items = ["User1", "User2", "User3","User1", "User2", "User3"]

    var body: some View {
        NavigationStack{
            ZStack {
                
                // Loop through items in reverse order for proper stacking
                ForEach(items.indices.reversed(), id: \.self) { index in
                    CardView(isScrollable: index == currentIndex)
                        .frame(width: UIScreen.main.bounds.width - 60, height: UIScreen.main.bounds.height * 0.85) // Taller cards
                        .offset(x: index == currentIndex ? offset : 0) // Only move the top card
                        .rotationEffect(index == currentIndex ? rotation : .zero) // Only rotate the top card
                        .zIndex(Double(items.count - index)) // Ensure proper stacking
                        .opacity(index == currentIndex ? 1 : 0) // Show only the top card
                        .animation(.easeInOut, value: offset) // Smooth animation for offset
                        .gesture(
                            index == currentIndex ? // Only the top card is interactive
                                DragGesture()
                                    .onChanged { value in
                                        isDragging = true
                                        offset = value.translation.width
                                        rotation = Angle(degrees: Double(offset / 10))
                                    }
                                    .onEnded { value in
                                        if abs(offset) > 100 {
                                            // Successfully swiped
                                            withAnimation(.spring()) {
                                                currentIndex = min(currentIndex + 1, items.count - 1)
                                                offset = 0
                                                rotation = .zero
                                            }
                                        } else {
                                            // Reset position
                                            withAnimation(.spring()) {
                                                offset = 0
                                                rotation = .zero
                                            }
                                        }
                                        isDragging = false
                                    }
                                : nil // No gesture for non-top cards
                        )
                }
                
            }
            .toolbar {
                ToolbarItem(placement: .principal) { // Use .principal for custom title
                    HStack {
                        Text("Chrumble")
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
        
         // Adjust container size
    }
}

struct CardView: View {
    var isScrollable: Bool

    var body: some View {
        Group {
            if isScrollable {
                ScrollView(.vertical, showsIndicators: false) {
                    contentView
                }
            } else {
                contentView
            }
        }
        
        .background(Color.white)
        .padding(.bottom,30)
        .padding(.top,10)
        .cornerRadius(20)
//        .shadow(radius: 5)
    }

    private var contentView: some View {
        VStack(alignment: .leading, spacing: 20) {
            Rectangle()
                .fill(Color.blue.opacity(0.9))
                .frame(width:UIScreen.main.bounds.width-10,height: 650) // Adjust this to control header height
                .cornerRadius(30)
                .padding()

            Text("About Me")
                .font(.title)
                .bold()
                .padding(.horizontal,30)

            
                HStack(spacing: 10) {
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(Color.gray.opacity(0.3))
                        .frame(width: 100, height: 40)
                        .overlay { Text("160 cm") }

                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(Color.gray.opacity(0.3))
                        .frame(width: 100, height: 40)
                        .overlay { Text("Sometimes") }

                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(Color.gray.opacity(0.3))
                        .frame(width: 100, height: 40)
                        .overlay { Text("Sometimes") }
                }
                .padding(.leading,30)
            
            Text("I'm looking for ")
                .font(.title)
                .bold()
                .padding(.horizontal,30)
            
            HStack(spacing: 10) {
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(Color.white)
                    .frame(width: 100, height: 40)
                    .overlay { Text("160 cm") }

                RoundedRectangle(cornerRadius: 25.0)
                    .fill(Color.white)
                    .frame(width: 100, height: 40)
                    .overlay { Text("Sometimes") }

                RoundedRectangle(cornerRadius: 25.0)
                    .fill(Color.white)
                    .frame(width: 100, height: 40)
                    .overlay { Text("Sometimes") }
            }
            .frame(width:.infinity,height: 80)
            .padding()
            .background(Color.gray.opacity(0.3))
            .cornerRadius(15)
            .padding(.horizontal,30)
            
            Text("My Interests ")
                .font(.title3)
                .bold()
                .padding(.horizontal,30)
            
            HStack(spacing: 10) {
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(Color.gray.opacity(0.3))
                    .frame(width: 100, height: 40)
                    .overlay { Text("Dancing") }

                RoundedRectangle(cornerRadius: 25.0)
                    .fill(Color.gray.opacity(0.3))
                    .frame(width: 100, height: 40)
                    .overlay { Text("Coffee") }

                RoundedRectangle(cornerRadius: 25.0)
                    .fill(Color.gray.opacity(0.3))
                    .frame(width: 100, height: 40)
                    .overlay { Text("Foodie") }
            }
            .padding(.leading,30)
            
            Rectangle()
                .frame(width:.infinity,height: 550)
                .padding()
            
            Text("My Courses and Communities ")
                .font(.title3)
                .bold()
                .padding(.horizontal,30)
            
            Rectangle()
                .frame(width:.infinity,height: 550)
                .padding()
            
            Text("My Location")
                .font(.title3)
                .bold()
                .padding(.horizontal,30)
            
            Text("City")
                .font(.title3)
                .bold()
                .padding(.horizontal,30)
            Text("x km away")
                .font(.title3)
                .bold()
                .padding(.horizontal,30)
            
            Button(action:{}){
                Text("Recommend to a friend")
                   
                
            }
            .frame(width: 350,height: 60)
            .background(Color.white)
            .foregroundColor(.black)
            .cornerRadius(20)
            .padding(.horizontal,30)
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            
            
            
        }
//        .padding(.ho,40) // Horizontal padding for the entire content
        .frame(maxWidth: .infinity, alignment: .top) // Align content to the top
    }
}

#Preview {
    PeopleView()
}
