import SwiftUI

extension View {
    func angularGradientGlow(colors: [Color]) -> some View {
        self.overlay(AngularGradient(gradient: Gradient(colors: colors), center: .center, angle: .degrees(0.0)))
            .mask(self)
    }

    func linearGradientBackground(colors: [Color]) -> some View {
        self.overlay(LinearGradient(colors: colors , startPoint: .topLeading, endPoint: .bottomTrailing))
            .mask(self )
    }
}
