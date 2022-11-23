import SwiftUI

struct PrimaryButton: View {

    @Environment(\.colorScheme) var colorScheme: ColorScheme
    var text = "Contact Support"

    var body: some View {
        if colorScheme == .dark {
            darkModeButton
        } else{
            lightModeButton
        }
    }

    var lightModeButton: some View {
        VStack {
            Text(text)
                .font(.headline)
                .frame(maxWidth: .infinity)
                . frame(height: 50)
                .background(LinearGradient(colors: [Color.purple, Color("Color1")], startPoint: .top, endPoint: .bottom))
                .cornerRadius(16)
                .foregroundColor(.white)
        }
    }

    var darkModeButton: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .frame(height: 50)
                .angularGradientGlow(colors: [Color("AngularGradient1"), Color("AngularGradient2"), Color("AngularGradient3"), Color("AngularGradient4"), Color("AngularGradient1")])
                .blur(radius: 8)
            Text(text)
                .linearGradientBackground(colors: [Color("Color1"), Color("Color2")])
                .font(.headline)
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .background(Color("ButtonBackground1"))
                .cornerRadius(16)
                .overlay {
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(Color.white, lineWidth: 1)
                        .blendMode(.overlay)
                }
        }
        .frame(height: 50)
    }
}

struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButton()
    }
}
