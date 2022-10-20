

import SwiftUI

struct VerticalCheckBox: View {
    
    @Binding var isVertical: Bool
    
    var body: some View {
        HStack(alignment: .center, spacing: 50){
        Button(action:{
            self.isVertical.toggle()}) {
                Image(systemName: self.isVertical ? "checkmark.square" : "square")
                    .renderingMode(.original)
                    .resizable()
                    .frame(width: 30, height: 30)
            }
        Text("Flip vertical")
            .font(.system(size: 30))
        }
    }
}

struct VerticalCheckBox_Previews: PreviewProvider {
    static var previews: some View {
        VerticalCheckBox(isVertical: .constant(false) )
    }
}
