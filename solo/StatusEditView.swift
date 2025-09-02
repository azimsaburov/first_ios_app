//
//  StatusEditView.swift
//  solo
//
//  Created by ZI on 8/31/25.
//

import SwiftUI

struct StatusEditView: View {
    @Binding var loan: Loan
    @Environment(\.dismiss) var dismiss
    
    let statuses = ["Одобрено", "На рассмотрении", "Отказано"]
    var body: some View {
            List{
                ForEach(statuses, id: \.self) { status in
                    Button{
                        loan.status = status
                        dismiss()
                    } label: {
                        HStack{
                            Text(status)
                            if loan.status == status {
                                Spacer()
                                Image(systemName: "checkmark")
                                    .foregroundColor(.blue)
                            }
                        }
                    }
                }
            }
        .navigationTitle("Выберите статус")
        .toolbar{
            ToolbarItem(placement: .cancellationAction){
                Button("Закрыть"){
                    dismiss()
                }
            }
        }
    }
}

#Preview {
    StatusEditView(loan: .constant(Loan(name: "Name", amount: 12345, status: "Status")))
}
