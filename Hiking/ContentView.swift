//
//  ContentView.swift
//  Hiking
//
//  Created by Никита Стригин on 16.06.2024.
//

import SwiftUI

struct ContentView: View {
    
    let hikes = [
        Hike(name: "Salmonberry Trail", photo: "sal", miles: 6),
        Hike(name: "Tom, Dick, and Harry Mountain", photo: "tom", miles: 5.8),
        Hike(name: "Tamanawas Falls", photo: "tam", miles: 5)
    ]
    
    var body: some View {
        NavigationStack {
            List(hikes){ hike in
                NavigationLink(value: hike){
                    HikeCellView(hike: hike)
                }
            }.navigationTitle("Hikes")
            .navigationDestination(for: Hike.self) { hike in
                Text(hike.name)
            }
        }
    }
}

#Preview {
    ContentView()
}

struct HikeCellView: View {
    
    let hike: Hike
    
    var body: some View {
        HStack(alignment: .top) {
            Image(hike.photo)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerSize: CGSize(width: 16, height: 16), style: .continuous))
                .frame(width: 100)
            VStack(alignment: .leading) {
                Text(hike.name)
                Text("\(hike.miles.formatted())")
            }
        }
    }
}
