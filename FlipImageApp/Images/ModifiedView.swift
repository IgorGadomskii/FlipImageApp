

import SwiftUI

struct ModifiedView: View {
    
    @Binding var isVertical: Bool
    @Binding var isHorizontal: Bool
    @Binding var degrees: Double
    
    var body: some View {
        InvertedImage(isVertical: $isVertical, isHorizontal: $isHorizontal)
            .rotationEffect(.degrees(degrees))
    }
}

struct ModifiedView_Previews: PreviewProvider {
    static var previews: some View {
        ModifiedView(isVertical: .constant(false), isHorizontal: .constant(false), degrees: .constant(0.0))
    }
}
