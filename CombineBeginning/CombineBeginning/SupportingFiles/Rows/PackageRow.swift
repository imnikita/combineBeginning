import SwiftUI

struct PackageRow: View {
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    var package: Package

    var body: some View {
        VStack(alignment: .leading) {
            Link(destination: URL(string: package.link)!) {
                LinearGradient(gradient: Gradient(colors: colorScheme == .dark ? [Color("Color1"), Color("Color2")] : [Color.purple]),
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing)
                .frame(height: 20)
                .mask(
                    Text(package.title)
                        .font(.subheadline)
                        .fontWeight(.medium)
                        .textCase(.uppercase)
                        .frame(maxWidth: .infinity, alignment: .leading)
                )
            }
            Divider()
        }
    }
}

struct PackageRow_Previews: PreviewProvider {
    static var previews: some View {
        PackageRow(package: packagesData[0])
    }
}
