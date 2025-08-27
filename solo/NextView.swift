//
//  NextView.swift
//  solo
//
//  Created by ZI on 8/27/25.
//

import SwiftUI

struct NextView: View {
    @State private var textItem = ""
    @State private var listItem: [String] = []
    
    
    var body: some View {
        ZStack{
            Color.mint.ignoresSafeArea()
            VStack( spacing: 20){
                TextField("Введите текс", text: $textItem)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                HStack( spacing: 20){
                    Button("Добавить"){
                        print("Privet")
                    }
                    .padding( )
                    .background(Color.blue.opacity(0.2))
                    .cornerRadius(20)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    Button("Очистить все"){
                        print("Boom")
                    }
                    .padding()
                    .background(Color.red.opacity(0.2))
                    .cornerRadius(20)
                    .foregroundColor(.red)
                }
            }
            .padding()
        }
    }
}
#Preview {
    NextView()
}
