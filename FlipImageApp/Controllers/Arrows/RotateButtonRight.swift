

import SwiftUI

struct RotateButtonRight: View {
    
    @Binding var degrees: Double
    
    var body: some View {
        Button(action:{
            degrees += 10.0
        }) {
            Image(systemName: "arrow.clockwise")
                .resizable()
                .frame(width: 50, height:50)
        }
    }
}

struct RotateButtonRight_Previews: PreviewProvider {
    static var previews: some View {
        RotateButtonRight(degrees: .constant(0.0))
    }
}
