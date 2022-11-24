import SwiftUI

struct GradientIcon: View {

    var icon = "questionmark"
    var gradientColor1 = Color("Color1")
    var gradientColor2 = Color("Color2")
    var backgroundColor2 = Color("Color3")

    var body: some View {
        LinearGradient(gradient: Gradient(colors: [gradientColor1, gradientColor2]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .mask(Image(systemName: icon))
        .font(.system(size: 17))
        .background(backgroundColor2)
        .frame(width: 36, height: 36)
        .mask(RoundedRectangle(cornerRadius: 12,
                               style: .continuous))
        .overlay {
            RoundedRectangle(cornerRadius: 12, style: .continuous)
                .stroke(lineWidth: 1)
                .foregroundColor(.white)
                .blendMode(.overlay)
        }
    }
}

struct GradientIcon_Previews: PreviewProvider {
    static var previews: some View {
        GradientIcon()
    }
}
