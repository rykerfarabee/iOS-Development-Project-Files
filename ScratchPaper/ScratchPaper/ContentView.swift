//
//  ContentView.swift
//  ScratchPaper
//
//  Created by Ryker Farabee on 9/11/26.
//

import SwiftUI

struct ContentView: View {
    @State var ticketsSold = 0
    @State var ticketsRefunded = 0
    var body: some View {
        VStack {
            Text("Tickets Sold: \(ticketsSold)")
            Text("Tickets Refunded: \(ticketsRefunded)")
            Button("Sell Ticket") {
                ticketsSold += 1
            }
            Button("Refund Ticket") {
                ticketsRefunded += 1
            }
        }
    }
}
