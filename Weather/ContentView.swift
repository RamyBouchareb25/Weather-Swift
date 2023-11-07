//
//  ContentView.swift
//  Weather
//
//  Created by Ramy on 07/11/2023.
//

import SwiftUI

struct ContentView: View {
    var days = ["Saturday","Sunday","Monday","Tuesday","Wednesday","Thirsday","Friday"]
    var body: some View {
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: [.blue,.white]), startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea()
            VStack {
                Text("Cupertino,CA").font(.system(size: 32,weight: .medium,design: .default)).foregroundColor(.white).padding()
                
                VStack {
                    Text("76°")
                    Image(systemName: "cloud.sun.fill").foregroundColor(.white).font(.system(size: 64))
                    
                }
                HStack {
                    ForEach(days, id: \.self) { i in
                        Text("\(i)").font(.caption)
                    }
                }
                HStack {
                    
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
