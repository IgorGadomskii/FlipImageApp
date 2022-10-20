

import SwiftUI

struct OriginalImage: View {
    
    @Binding var isVertical: Bool
   
    var body: some View {
        Image("japanesse_girl")
            .resizable()
            .rotation3DEffect(.degrees(180),
                                axis: (x: 0,
                                       y: isVertical ? 1.0 : 0.0,
                                       z: 0))
    }
}



struct OriginalImage_Previews: PreviewProvider {
    static var previews: some View {
        OriginalImage (isVertical: .constant(false))
    }
}
