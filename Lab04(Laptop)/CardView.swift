import SwiftUI

public struct CardView: View {
    let card: String
    let isSelected: Bool
    
    public var body: some View {
        ZStack {
            // Card shape and tap functionality
            RoundedRectangle(cornerRadius: 10)
                .foregroundStyle(.white)
                .aspectRatio(2/3, contentMode: .fit)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(isSelected ? .blue : .black, lineWidth: 2))
            
            VStack {
                // Top left card info
                HStack {
                    VStack(alignment: .leading) {
                        Text(card)
                    }
                    .padding(.leading, 10)
                    .padding(.top, 5)
                    Spacer()
                }
                
                Spacer()
                
                // Center card info
                Text(card)
                    .font(.largeTitle)
                
                Spacer()
                // Top right card info
                HStack {
                    Spacer()
                    VStack(alignment: .trailing) {
                        Text(card)
                            .rotationEffect(Angle.degrees(180))
                            .padding(.bottom, 5)
                    }
                    .padding(.trailing, 10)
                }
            }
        }
        .padding(5)
    }
}
