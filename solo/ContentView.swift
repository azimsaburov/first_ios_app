//
//  ContentView.swift
//  solo
//
//  Created by ZI on 8/22/25.
//

import SwiftUI

struct ContentView: View {
    @State private var counter = 0
    @State private var message = "Welcome!"
    @State private var flag = true
    @State private var currentState = 0
    @State private var newItem = ""
    @State private var items: [String] = []
    
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color.yellow.ignoresSafeArea()
                
                VStack(spacing: 20) {
                    TextField("Введите текс", text: $newItem)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    HStack(){
                        Button("Добавить"){
                            if !newItem.isEmpty {
                                items.append(newItem)
                                newItem = ""
                                print(items)
                            }
                        }
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        Button("Очистить все"){
                            items = []
                        }
                        .foregroundColor(.red)
                    }
                    List{
                        ForEach(items, id: \.self){ item in
                            HStack(){
                                Image(systemName: "note.text")
                                    .foregroundColor(.orange)
                                Text(item)
                            }
                        }
                        
                        .onDelete(perform: deleteItem)
                    }
                    //                .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    //                .fixedSize()
                    Text(currentText())
                        .font(.title)
                    Text(message)
                        .font(.title)
                    //.padding()
                    Text(flag ? "One" : "Two")
                        .font(.largeTitle)
                    Button( "Нажми меня"){
                        if flag == true {
                            message = "Hi"
                        }else {
                            message = "Bro"
                        }
                        flag.toggle()
                        currentState = ( currentState + 1) % 4
                    }
                    .padding()
                    .background(Color.white.opacity(0.4))
                    .cornerRadius(100)
                    Text("Счетчик: \(counter)")
                    //.font(.headline)
                        .foregroundColor(.red)
                        .padding()
                        .font(.system(size: 20, weight: .bold))
                        .background(Color.blue.opacity(0.2))
                        .cornerRadius(5)
                    HStack(spacing: 30){            Button(action: {
                        counter += 1
                        print("Кнопка нажата, текушее занчение: \(counter)")}){
                            Text("Плюс один")
                        }
                        Button(action: {
                            counter -= 1
                            print("Кнопка нажата, текушее занчение: \(counter)")}){
                                Text("Минус один")
                                    .padding()
                                    .background(Color.gray.opacity(0.2))
                                    .cornerRadius(20)
                            }
                    }
                    HStack (spacing: 10){
                        Button(action: {
                            counter = 0
                            print("Кнопка нажата, текушее занчение: \(counter)")}){
                                Text("Сброс")
                                    .padding()
                                    .font(.system(size: 20, weight: .bold))
                                    .background(Color.blue.opacity(0.2))
                                    .cornerRadius(5)
                                
                            }
                        NavigationLink("Next"){
                            NextView()
                        }
                        .padding()
                        
                        
                    }
                    
                    if counter == 10 {
                        Text("Круто Десяточка!")
                            .font(.system(size: 30, weight: .medium))
                    }
                    else if counter >= 5 || counter <= -3 {
                        Text("Красава!")
                            .font(.system(size: 30, weight: .medium))
                    }
                    else {
                        Text("🤔")
                            .font(.system(size: 30, weight: .medium))
                    }
                    
                }
                .padding()
            }
            
        }
    }
    func currentText() -> String {
        switch currentState{
        case 0: return "Hello"
        case 1: return "Привет"
        case 2: return "Salam"
        case 3: return "Aloha"
        default:
            return ""
        }
    }
    func deleteItem( at offsets: IndexSet){
        items.remove(atOffsets: offsets)
    }
}

#Preview {
    ContentView()
}
