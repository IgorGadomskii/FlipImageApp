

import SwiftUI

struct ClearButton: View {
    
    @Binding var degrees: Double
    @Binding var isVertical: Bool
    @Binding var isHorisontal: Bool
    
    var body: some View {
        Button("Clear") {
            degrees = 0.0
            isVertical = false
            isHorisontal = false
        }.frame(width: 270, height: 50, alignment: .center)
            .foregroundColor(.white)
            .font(.system(size: 20, weight: .bold))
            .background(Color.blue)
            .cornerRadius(10)
    }
}

struct ClearButton_Previews: PreviewProvider {
    static var previews: some View {
        ClearButton(degrees: .constant(0.0), isVertical: .constant(false), isHorisontal: .constant(false))
    }
}
