//
//  ContentView.swift
//  solo
//
//  Created by ZI on 8/22/25.
//

import SwiftUI

struct ContentView: View {
    @State private var counter = 0
    var body: some View {
        VStack(spacing: 20) {
            //            Image(systemName: "globe")
            //                .imageScale(.large)
            //                .foregroundStyle(.tint)
            Text("Привет Азим")
                .font(.title)
                .padding()
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
                    }}
            Button(action: {
                counter = 0
                print("Кнопка нажата, текушее занчение: \(counter)")}){
                    Text("Сброс")
                        .padding()
                        .font(.system(size: 20, weight: .bold))
                        .background(Color.blue.opacity(0.2))
                        .cornerRadius(5)
                    
                }
            
            if counter >= 10 {
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

#Preview {
    ContentView()
}
