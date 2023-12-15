//
//  PruebaView.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 15/12/23.
//

import SwiftUI
import AVFoundation

struct PruebaView: View {
    @State private var name : String = ""
    
    var body: some View {
        VStack {
            TextField("Name",text: $name)
                .padding()
            
            Button(action:{
                let utterance = AVSpeechUtterance(string: "Hello \(name)")
                
                utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
                utterance.rate = 0.3
                
                let synthesizer = AVSpeechSynthesizer()
                synthesizer.speak(utterance)
            }){
                Text("Hablar")
            }
        }
    }
}

#Preview {
    PruebaView()
}
