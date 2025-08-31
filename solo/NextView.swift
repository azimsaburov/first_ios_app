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
        NavigationStack{
            ZStack{
                Color.mint.ignoresSafeArea()
                VStack( spacing: 20){
                    
                    TextField("Введите текс", text: $textItem)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    HStack( spacing: 20){
                        Button("Добавить"){
                            if !textItem.isEmpty{
                                listItem.append(textItem)
                                textItem = ""
                                print(listItem)
                            }
                        }
                        .padding( )
                        .background(Color.blue.opacity(0.2))
                        .cornerRadius(20)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        Button("Очистить все"){
                            print("Delete All")
                            listItem = []
                        }
                        .padding()
                        .background(Color.red.opacity(0.2))
                        .cornerRadius(20)
                        .foregroundColor(.red)
                    }
                    NavigationLink("LoansScreen"){
                        LoansView()
                    }
                    .padding()
                    .font(.headline)
                    List{
                        ForEach(listItem, id: \.self){ item in
                            HStack(){
                                Image(systemName: "note.text")
                                    .foregroundColor(.orange)
                                Text(item)
                            }
                        }
                        .onDelete(perform: deleteItem)
                    }
                    Spacer()
                }
                .padding()
            }
        }
        .navigationTitle("Заметки")
    }
    func deleteItem( at offsets: IndexSet){
        listItem.remove(atOffsets: offsets)
    }
}
#Preview {
    NextView()
}
