//
//  ContentView.swift
//  SoundRunner
//
//  Created by Luca Bulles on 08/03/2023.
//

import SwiftUI

enum MusicProfile: String, CaseIterable {
    case Nature, Grass, Bassline, Birds
}

struct ContentView: View {
    @State var selection: MusicProfile = .Grass
    var body: some View {
        NavigationStack{
            VStack{
                Text(selection.rawValue)
                    .font(.system(size: 100))
                
                Picker("Select your profile", selection: $selection){
                    ForEach(MusicProfile.allCases, id: \.self){ musicProfile in Text(musicProfile.rawValue)
                    }
                }
                .pickerStyle(.inline)
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Sound Runner")
                        .font(.largeTitle.bold())
                        .accessibilityAddTraits(.isHeader)
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
