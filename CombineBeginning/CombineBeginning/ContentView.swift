import SwiftUI

struct ContentView: View {

    @Environment(\.colorScheme) var colorCheme: ColorScheme

    @State private var contentOffset: CGFloat = 0

    var body: some View {
        VStack {
            NavigationView {
                ZStack(alignment: .top) {
                    TrackableScrollView { offset in
                        contentOffset = offset.y
                    } content: {
                        content
                    }
                    VisualEffectBlur(blurStyle: .systemMaterial)
                        .opacity(contentOffset < -16 ? 1 : 0)
                        .animation(.easeIn)
                        .ignoresSafeArea()
                        .frame(height: 0)
                }
                .frame(maxHeight: .infinity, alignment: .top)
                .background(AccountBackground())
                .navigationBarHidden(true)
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .accentColor(colorCheme == .dark ? Color.white : Color.purple)
        }
    }

    var content: some View {
        VStack {

            VStack {
                NavigationLink {
                    FAQView()
                } label: {
                    MenuRow()
                }
                divider

                NavigationLink {
                    PackagesView()
                } label: {
                    MenuRow(title: "SwiftUI Packages",
                            leftIcon: "square.stack.3d.up.fill")
                }

                divider

                Link(destination: URL(string: "https://www.youtube.com")!) {
                    MenuRow(title: "YouTube chanel",
                            leftIcon: "play.rectangle.fill",
                            rightIcon: "link")
                }
            }
            .padding(16)
            .background(Color("Background 1"))
            .background(VisualEffectBlur(blurStyle: .systemUltraThinMaterialDark))
            .overlay {
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .stroke(Color.white, lineWidth: 1)
                    .blendMode(.overlay)
            }
            .mask(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .padding(.top, 20)

            Text("Version 1.0.0")
                .foregroundColor(Color.white.opacity(0.7))
                .padding(.top, 20)
                .padding(.horizontal, 20)
                .padding(.bottom, 10)
                .font(.footnote)
        }
        .foregroundColor(Color.white)
        .padding(.top, 20)
        .padding(.horizontal, 20)
        .padding(.bottom, 10)
    }

    var divider: some View {
        Divider()
            .background(Color.white.blendMode(.overlay))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
