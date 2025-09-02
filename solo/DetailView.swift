//
//  DetailView.swift
//  solo
//
//  Created by ZI on 8/31/25.
//

import SwiftUI

struct DetailView: View {
    @Binding var loan: Loan
    @State private var showStatusSheet = false
    
    var body: some View {
            VStack(spacing: 20){
                Text(loan.name)
                    .font(.title)
                Text("Сумма: \(loan.amount)")
                    .font(.title2)
                Text(loan.status)
                    .font(.title3)
                    .foregroundColor( loan.status == "Одобрен" ? .green : loan.status == "Отказан" ? .red : .orange)
                Spacer()
                Button("Изменить Статус"){
                    showStatusSheet.toggle()
                }
                .padding()
                .background(Color.blue.opacity(0.2))
                .cornerRadius(20)
                Spacer()
            }
            .padding()
            .sheet(isPresented: $showStatusSheet){
                StatusEditView(loan: $loan)
            }
        .navigationTitle("Детали заявки")
    }
}

#Preview {
    DetailView(loan: .constant(Loan(name: "Name", amount: 12345, status: "Status")))
}
