import SwiftUI

public struct MiLogo: View {
    let n: CGFloat
    public init(n: CGFloat) {
        self.n = n
    }
    public var body: some View {
        Text("MI")
            .foregroundColor(.black)
            .font(Font.custom("Babylon Industrial", size: 14))
            .padding(10)
            .frame(width: 40, height: 40)
            .background(SuperEllipse(n: n).fill(Color.white))
    }
}

public struct MiLogoGrid: View {
    public init() {}
    var gridItemLayout: [GridItem] = Array(repeating: GridItem(.fixed(90), spacing: 0), count: 6)
    public var body: some View {
        LazyVGrid(columns: gridItemLayout, spacing: 0) {
            ForEach(Array(stride(from: 2, through: 4.3, by: 0.1)), id: \.self) { n in
                VStack {
                    MiLogo(n: CGFloat(n))
                    Text("n: " + String(format: "%.1f", n))
                        .foregroundColor(.white)
                        .font(.system(size: 12))
                }
                .padding(10)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.black)
            }
        }
    }
}
