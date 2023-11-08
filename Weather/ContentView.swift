//
//  ContentView.swift
//  Weather
//
//  Created by Ramy on 07/11/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
			BackgroundView()
            
            VStack {
                Title()
				MainTemperature()
				Temperatures()
                ChangeTime()
                Spacer()
            }
        }
    }
}

struct Title: View {
	var body: some View{
		Text("Cupertino,CA").font(.system(size: 32,weight: .medium,design: .default)).foregroundColor(.white).padding(EdgeInsets(top: 20, leading: 20, bottom: 100, trailing: 20))
	}
}

struct MainTemperature: View {
	var body: some View {
		VStack {
			Image(systemName: "cloud.sun.fill").foregroundColor(.white).font(.system(size: 96)).symbolRenderingMode(.multicolor)
			Text("76°").foregroundColor(.white).font(.system(size: 52,weight: .bold,design: .default)).padding()
		}
	}
}

struct Temperatures: View {
	var temps = [74,66,68,73,70]
	var images = ["cloud.sun.fill","sun.max.fill","wind","sunset.fill","moon.stars.fill"]
	var days = ["TUE","WED","THU","FRI","SAT"]
	var body: some View {
		HStack {
			ForEach(0...4, id: \.self) { i in
				Spacer()
				VStack {
					Text("\(days[i])").font(.system(size:24,weight: .medium,design: .default)).foregroundColor(.white)
					Image(systemName: images[i]).symbolRenderingMode(.multicolor).font(.system(size: 32))
					Text("\(temps[i])").font(.system(size:36,weight: .medium,design: .default)).foregroundColor(.white).padding(EdgeInsets(
						top: 10, leading: 0, bottom: 10, trailing: 0))
				}
				Spacer()
			}
		}
	}
}

struct ChangeTime: View {
	var body: some View {
		Button(action: {}) {
			Text("change Time Of The Day")
				.padding(EdgeInsets(
					top: 10, leading: 20, bottom: 10, trailing: 20
				))
				.foregroundColor(.blue)
				.background(.white)
				.cornerRadius(5)
		}.padding(EdgeInsets(top: 150, leading: 0, bottom: 0, trailing: 0))
	}
}

struct BackgroundView: View {
	var body: some View {
		LinearGradient(gradient: Gradient(colors: [.blue,.white]), startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea()
	}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
