//
//  CardView.swift
//  Lab04(Laptop)
//
//  Created by Asher Antrim on 9/13/24.
//

import SwiftUI

public struct CardView: View {
    public var body: some View {
        let cards = ["A❤️", "2❤️", "3❤️", "4❤️", "5❤️", "6❤️", "7❤️", "8❤️", "9❤️", "10❤️", "J❤️", "Q❤️", "K❤️","A♣️", "2♣️", "3♣️", "4♣️", "5♣️", "6♣️", "7♣️", "8♣️", "9♣️", "10♣️", "J♣️", "Q♣️", "K♣️","A♦️", "2♦️", "3♦️", "4♦️", "5♦️", "6♦️", "7♦️", "8♦️", "9♦️", "10♦️", "J♦️", "Q♦️", "K♦️","A♠️", "2♠️", "3♠️", "4♠️", "5♠️", "6♠️", "7♠️", "8♠️", "9♠️", "10♠️", "J♠️", "Q♠️", "K♠️"]
        
        ZStack {
            ForEach(cards, id: \.self) { card in
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(.white)
                    .aspectRatio(2/3, contentMode: .fit)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(.black, lineWidth: 2))
                    .padding()
                VStack {
                    HStack{
                        Text(card)
                            .font(.title)
                            .padding()
                            .foregroundStyle(.black)
                        Spacer()
                        Text(card)
                            .font(.title)
                            .padding()
                            .foregroundStyle(.black)
                    }
                    
                    Text(card)
                        .font(.title)
                        .padding()
                        .foregroundStyle(.black)
                    
                }
            }
        }
    }
}
