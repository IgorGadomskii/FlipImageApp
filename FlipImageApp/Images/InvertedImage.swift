


import SwiftUI

struct InvertedImage: View {
    
    @Binding var isVertical: Bool
    @Binding var isHorizontal: Bool
    
    var body: some View {
        OriginalImage(isVertical: $isVertical)
            .rotation3DEffect(.degrees(180), axis: (x: isHorizontal ? 1.0 : 0.0, y: 0.0, z: 0.0))
    }
}

struct InvertedImage_Previews: PreviewProvider {
    static var previews: some View {
        InvertedImage(isVertical: .constant(false), isHorizontal: .constant(false))
    }
}
