import SwiftUI

struct LecturaView: View {
    @Binding var IndexSeleccionado: Int
    
    @State private var StructureOptionsFree = ["Black Fathers", "Is America Racist?"]
    @State private var StructureOptionsPremium = ["Black Fathers", "Is America Racist?", "Don't Compare Yourself to Others", "Fix Yourself", "Are Men and Women Different?", "Don't Waste Your Time", "How to Make Our Cities Safer", "How to End Systemic Racism", "Should Government Bail Out Big Banks?"]
    
    @State private var selectedOption: String? = "Black Fathers"
    @State private var IsPremium: Bool = false
    @State private var videoURL: URL?
    @State private var isEmpezarClicked = false
    
    @State private var currentTimeInSeconds: Double = 0
    @State private var seekTimeInSeconds: Double?
    @State var isButtonPressed: Bool?
    
    @State private var showModal = false
    @State private var selectedKeyword: String = ""
    let palabrasClave: [String: String] = ["años": "Hace mucho tiempo", "progreso": "Avance o mejora"]
    let praguerText: String = "Este es un texto de prueba de PragerU. Hace años, la economía de Estados Unidos era muy diferente. En aquellos tiempos, la gente tenía que trabajar más duro para ganar menos. Sin embargo, con el paso de los años, las cosas han mejorado significativamente. Ahora, la vida es mucho más fácil y cómoda para la mayoría de las personas. Aunque todavía existen desafíos, el progreso es innegable."
    
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                NotchSpacing(ColorNotch: "blanco")
                
                HeaderNav(location: "Availability", IndexSeleccionado: $IndexSeleccionado)
                
                VStack {}.frame(maxWidth: .infinity).frame(height: 20)
                
                VideoPlayerView(videoURL: videoURL,
                                currentTimeInSeconds: $currentTimeInSeconds,
                                seekTimeInSeconds: $seekTimeInSeconds,
                                onStop: {
                    print("El video ha terminado.")
                }, isButtonPressed: $isButtonPressed)
                .frame(height: 220)
                .padding(.horizontal, 20)
                .onDisappear {
                    videoURL = getVideoURL(for: selectedOption ?? "Black Fathers", currentPage: "Availability")
                }
                
                PickerCustom(defaultOption: "Black Fathers", selectedOption: $selectedOption, options: IsPremium ? StructureOptionsPremium : StructureOptionsFree) {
                    handleSelectedOptionChange()
                }
                
                ScrollView {
                    VStack(alignment: .leading, spacing: 5) {
                        ForEach(analyzeAndHighlightText(text: praguerText, keywords: palabrasClave), id: \.id) { component in
                            Text(component.text)
                                .foregroundColor(component.isKeyword ? .blue : .primary)
                                .underline(component.isKeyword)
                                .onTapGesture {
                                    if component.isKeyword {
                                        self.selectedKeyword = component.word
                                        self.showModal = true
                                    }
                                }
                        }
                        .padding()
                    }
                }
                .sheet(isPresented: $showModal) {
                    if let significado = palabrasClave[selectedKeyword.lowercased()] {
                        Text("\(selectedKeyword): \(significado)")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.blue)
                    }
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
        .onAppear {
            updateSelectedTextContent()
            handleSelectedOptionChange()
        }
        .onChange(of: selectedOption) {
            updateSelectedTextContent()
            handleSelectedOptionChange()
        }
    }
    
    private func updateSelectedTextContent() {
        if let entry = Texts.shared.entry(forKey: selectedOption ?? "Black Fathers") {
            //selectedTextContent = entry.content
        }
    }
    
    private func handleSelectedOptionChange() {
        videoURL = getVideoURL(for: selectedOption ?? "Black Fathers", currentPage: "Availability")
        isEmpezarClicked = false
    }
    
    func analyzeAndHighlightText(text: String, keywords: [String: String]) -> [TextComponent] {
           var components: [TextComponent] = []
           let words = text.split(separator: " ").map(String.init)
           
           for word in words {
               let trimmedWord = word.trimmingCharacters(in: .punctuationCharacters).lowercased()
               let keywordMatch = keywords.first(where: { trimmedWord.contains($0.key.lowercased()) })
               
               if let match = keywordMatch {
                   components.append(TextComponent(text: word, isKeyword: true, word: match.key, meaning: match.value))
               } else {
                   components.append(TextComponent(text: word, isKeyword: false, word: word))
               }
           }
           
           return components
       }
}

struct TextComponent: Identifiable {
    let id = UUID()
    let text: String
    let isKeyword: Bool
    let word: String
    var meaning: String? = nil
}
