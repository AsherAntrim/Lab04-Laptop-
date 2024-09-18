import SwiftUI

struct ContentView: View {
    let columns = [
        GridItem(.adaptive(minimum: 100))
    ]
    
    let allCards = ["A❤️", "2❤️", "3❤️", "4❤️", "5❤️", "6❤️", "7❤️", "8❤️", "9❤️", "10❤️", "J❤️", "Q❤️", "K❤️",
                    "A♣️", "2♣️", "3♣️", "4♣️", "5♣️", "6♣️", "7♣️", "8♣️", "9♣️", "10♣️", "J♣️", "Q♣️", "K♣️",
                    "A♦️", "2♦️", "3♦️", "4♦️", "5♦️", "6♦️", "7♦️", "8♦️", "9♦️", "10♦️", "J♦️", "Q♦️", "K♦️",
                    "A♠️", "2♠️", "3♠️", "4♠️", "5♠️", "6♠️", "7♠️", "8♠️", "9♠️", "10♠️", "J♠️", "Q♠️", "K♠️"]
    
    @State private var shuffledCards: [String] = []
    @State private var selectedCard: String?
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(shuffledCards, id: \.self) { card in
                    CardView(card: card, isSelected: selectedCard == card)
                        .onTapGesture {
                            if selectedCard == card {
                                selectedCard = nil
                            } else {
                                selectedCard = card
                            }
                        }
                }
            }
        }
        .onAppear {
            shuffledCards = allCards.shuffled()
        }
    }
}

#Preview {
    ContentView()
}
