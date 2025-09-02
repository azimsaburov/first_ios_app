//
//  LoansView.swift
//  solo
//
//  Created by ZI on 8/31/25.
//

import SwiftUI

struct LoansView: View {
    @State private var loans = [
        Loan(name: "Saburov Azim", amount: 100000, status: "Одобрен"),
        Loan(name: "Kaparov Rustam", amount: 30000, status: "Отказан"),
        Loan(name: "Idrisov Kenga", amount: 400000, status: "На рассмотрении"),
        Loan(name: "Japarov Sabur", amount: 10000, status: "Одобрен"),
        Loan(name: "Tynybekova Aida", amount: 1000000, status: "Одобрен"),
        Loan(name: "Durov Pavel", amount: 7000, status: "Отказан"),
        Loan(name: "Tim Cook", amount: 80000, status: "На рассмотрении"),
        Loan(name: "Askarov Timur", amount: 1000, status: "Одобрен"),
    ]
    var body: some View {
        VStack(spacing: 20){
            List{
                ForEach($loans){ $loans in
                    NavigationLink(destination: DetailView(loan: $loans)){
                        HStack{
                            VStack(alignment: .leading){
                                Text(loans.name)
                                    .font(.headline)
                                Text("\(loans.amount) сом")
                                    .foregroundColor(.gray)
                            }
                            Spacer()
                            Text(loans.status)
                            
                        }
                        
                        
                    }
                }
            }
        }
        .navigationTitle("Заявки")
    }
}

#Preview {
    LoansView()
}
