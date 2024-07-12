//
//  LearnWord.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 10/7/24.
//

import SwiftUI

struct LearnWord: View {
    let WORD_DATA : [LearnWordTypes] = LearnWordArray
    
    
    var body: some View {
        ScrollView{
            VStack{
                ForEach(Array(WORD_DATA.enumerated()), id: \.element.id) { index, lesson in
                    LearnWordCard(LearnWord: lesson, index: index)
                        .padding(.bottom, 16)
                        .padding(.top,10)
                    
                }
                .padding(.horizontal)
            }
        }
    }
}

#Preview {
    LearnWord()
}
