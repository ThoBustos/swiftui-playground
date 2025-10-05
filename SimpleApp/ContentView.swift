import SwiftUI

struct ContentView: View {
    @State private var isPressed = false
    @State private var offset: CGFloat = 0
    
    var body: some View {
        ZStack {
            Image("bg-texture")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            VStack(spacing: 40) {
                Spacer()
                
                VStack(spacing: 16) {
                    Text("Simple")
                        .font(.system(size: 56, weight: .thin, design: .default))
                        .foregroundColor(.black)
                    
                    Text("Beautifully Minimal")
                        .font(.system(size: 18, weight: .light, design: .default))
                        .foregroundColor(.black.opacity(0.8))
                        .tracking(2)
                }
                .offset(y: offset)
                .onAppear {
                    withAnimation(.easeOut(duration: 1.2)) {
                        offset = -20
                    }
                }
                
                Spacer()
                
                Button(action: {
                    withAnimation(.spring(response: 0.4, dampingFraction: 0.6)) {
                        isPressed.toggle()
                    }
                }) {
                    HStack(spacing: 12) {
                        Image(systemName: isPressed ? "sparkles" : "moon.stars.fill")
                            .font(.system(size: 20))
                            .foregroundColor(.black)
                        
                        Text(isPressed ? "Inspired" : "Begin")
                            .font(.system(size: 18, weight: .light, design: .default))
                            .foregroundColor(.black)
                            .tracking(1)
                    }
                    .padding(.horizontal, 40)
                    .padding(.vertical, 16)
                    .background(
                        Capsule()
                            .fill(.white.opacity(0.15))
                            .overlay(
                                Capsule()
                                    .stroke(.white.opacity(0.3), lineWidth: 1)
                            )
                    )
                }
                .scaleEffect(isPressed ? 1.05 : 1.0)
                
                Spacer()
                    .frame(height: 80)
            }
            .padding(.horizontal, 20)
        }
        .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 15 Pro")
        
        ContentView()
            .previewDevice("iPhone SE (3rd generation)")
            .previewDisplayName("iPhone SE")
    }
}
