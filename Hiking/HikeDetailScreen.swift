//
//  HikeDetailScreen.swift
//  Hiking
//
//  Created by Никита Стригин on 16.06.2024.
//

import SwiftUI

struct HikeDetailScreen: View {
    
    let hike: Hike
    @State private var zoomed: Bool = false
    
    var body: some View {
        VStack{
            Image(hike.photo)
                .resizable()
                .aspectRatio(contentMode: zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation {
                        zoomed.toggle()
                    }
                }
            Text(hike.name)
                .font(.title)
            Text("\(hike.miles.formatted())")
            Spacer()
        }.navigationTitle(hike.name)
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack{
        HikeDetailScreen(hike: Hike(name: "Salmonberry Trail", photo: "sal", miles: 6))
    }
}
