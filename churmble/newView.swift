//import SwiftUI
//
//struct PeopleView: View {
//    @State private var offset: CGFloat = 0
//    @State private var rotation: Angle = .zero
//    @State private var currentIndex: Int = 0
//    @State private var isDragging: Bool = false
//    
//    let items = ["User", "User2", "User3"]
//    
//    var body: some View {
//        VStack {
//            
//            
//            ZStack {
//                // ZStack to hold the cards stacked on top of each other
//                ForEach(0...2, id: \.self) { index in
//                    if index == currentIndex {
//                        // Only animate the top card
//                        CardView(item: items[index])
//                            .frame(width: UIScreen.main.bounds.width - 60)
//                            .offset(x: offset) // Apply swipe offset to the top card
//                            .rotationEffect(rotation) // Apply rotation effect
//                            .zIndex(Double(index)) // Keep top card on top
//                            .gesture(
//                                DragGesture()
//                                    .onChanged { value in
//                                        if !isDragging {
//                                            isDragging = true
//                                        }
//                                        let dragAmount = value.translation.width
//                                        offset = dragAmount
//                                        
//                                        // Apply rotation based on drag direction
//                                        rotation = Angle(degrees: Double(dragAmount / 10)) // More drag = more rotation
//                                    }
//                                    .onEnded { value in
//                                        // Check if swipe is enough to trigger removal
//                                        if abs(offset) > 100 {
//                                            // Move to next card after a successful swipe
//                                            withAnimation(.easeOut) {
//                                                currentIndex = min(currentIndex + 1, items.count - 1)
//                                                offset = 0
//                                                rotation = .zero
//                                            }
//                                        } else {
//                                            // Reset to the original position if not swiped enough
//                                            withAnimation(.easeOut) {
//                                                offset = 0
//                                                rotation = .zero
//                                            }
//                                        }
//                                        isDragging = false
//                                    }
//                            )
//                            .animation(.easeInOut(duration: 0.3), value: offset)
//                    } else {
//                        // Cards underneath the top card remain stationary
//                        CardView(item: items[index])
//                            .frame(width: UIScreen.main.bounds.width - 60)
//                            .zIndex(Double(index)) // Keep behind the top card
//                            .opacity(0.4) // Make bottom cards slightly transparent
//                    }
//                }
//            }
//            .frame(height: 250) // Height for the cards
//        }
//    }
//}
//
//struct CardView: View {
//    let item: String
//    
//    var body: some View {
//        VStack {
//            Rectangle()
//                .fill(Color.black)
//                .frame(height: 700)
//                .cornerRadius(25)
////                .overlay {
////                    Text(item)
////                        .bold()
////                        .foregroundColor(.black)
////                        .padding()
////                }
////                .shadow(radius: 5)
//        }
//    }
//}
//
//#Preview {
//    PeopleView()
//}
