//
//  CheckoutView.swift
//  iDine
//
//  Created by Alonso on 20/03/23.
//

import SwiftUI

struct CheckoutView: View {
    @EnvironmentObject var order: Order

    @State private var paymentType = "Cash"
    @State private var addLoyaltyDetails = false
    @State private var loyaltyNumber = ""
    @State private var tipAmount = 15
    
    private let paymentTypes = ["Cash", "Credit Card", "iDine Points"]
    private let tipAmounts = [10, 15, 20, 25, 0]
    
    var body: some View {
        Form {
            Section {
                Picker("How do you want to pay?", selection: $paymentType) {
                    ForEach(paymentTypes, id: \.self) { type in
                        Text(type)
                    }
                }
            }
            Toggle("Add iDine loyalty card", isOn: $addLoyaltyDetails.animation())
            if addLoyaltyDetails {
                TextField("Enter your iDine ID", text: $loyaltyNumber)
            }
            Section("Add a tip?") {
                Picker("Percentage:", selection: $tipAmount) {
                    ForEach(tipAmounts, id: \.self) { amount in
                        Text("\(amount)%")
                    }
                }.pickerStyle(.segmented)
            }
            Section("Total: 100$") {
                Button("Confirm order") {
                    
                }
            }
        }
        .navigationTitle("Payment")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView().environmentObject(Order())
    }
}
