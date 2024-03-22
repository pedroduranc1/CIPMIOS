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
    
    @State private var selectedTextContent = ""
    @State private var isTest = false
    
    @State private var preg = "esta es una pregunta de larga distancia para probar los margenes"
    
    @State private var preg1 = "respuesta 1"
    @State private var preg2 = "respuesta 2"
    @State private var preg3 = "respuesta 3"
    @State private var preg4 = "respuesta 4"
    
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
                
                HStack(){
                    Text("Transcript")
                        .font(.system(size: 25))
                        .underline(true,color: Color("azul"))
                        .foregroundColor(Color("azul"))
                    Spacer()
                    Button(action: {
                        self.isTest = true
                    }){
                        Text("Actividad de Comprension")
                            .font(.system(size: 15))
                    }
                    .frame(width: 120)
                    .foregroundColor(Color("azul"))
                }
                .padding(.horizontal,25)
                .padding(.top,-15)
                .padding(.bottom,10)
                
                if !isTest {
                    ScrollView {
                        VStack(alignment: .leading, spacing: 5) {
                            Text(selectedTextContent)
                                .padding(.horizontal, 25)
                        }
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity) // Esto asegura que el contenido del ScrollView pueda crecer en altura
                    }
                    .frame(height: 350) // Altura fija del ScrollView
                }
                
                if isTest {
                    HStack(alignment: .firstTextBaseline) {
                        Text("Pregunta:")
                        Spacer()
                        Text(preg)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .padding(.horizontal, 25)
                    
                    Button(action:{}){
                        VStack {
                            Text(preg1)
                                .font(.system(size: 16))
                                .padding(.vertical,10)
                        }
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .border(Color.blue, width: 1.5)
                        .clipShape(RoundedRectangle(cornerRadius: 4)) // Ajusta el valor según sea necesario
                        
                    }
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal,20)
                    .padding(.top,15)
                    .padding(.bottom,5)
                    
                    Button(action:{}){
                        VStack {
                            Text(preg2)
                                .font(.system(size: 16))
                                .padding(.vertical,10)
                        }
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .border(Color.blue, width: 1.5)
                        .clipShape(RoundedRectangle(cornerRadius: 4)) // Ajusta el valor según sea necesario
                        
                    }
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal,20)
                    .padding(.vertical,5)
                    
                    Button(action:{}){
                        VStack {
                            Text(preg3)
                                .font(.system(size: 16))
                                .padding(.vertical,10)
                        }
                        .frame(maxWidth: .infinity)
                        .border(Color.blue, width: 1.5)
                        .clipShape(RoundedRectangle(cornerRadius: 4)) // Ajusta el valor según sea necesario
                        
                    }
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal,20)
                    .padding(.vertical,5)
                    
                    Button(action:{}){
                        VStack {
                            Text(preg4)
                                .font(.system(size: 16))
                                .padding(.vertical,10)
                        }
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .border(Color.blue, width: 1.5)
                        .clipShape(RoundedRectangle(cornerRadius: 4)) // Ajusta el valor según sea necesario
                        
                    }
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal,20)
                    .padding(.vertical,5)
                    
                    Button(action:{}){
                        VStack {
                            Text("SIGUIENTE")
                                .font(.system(size: 16))
                                .padding(.vertical,10)
                        }
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .border(Color.blue, width: 1.5)
                        .clipShape(RoundedRectangle(cornerRadius: 4)) // Ajusta el valor según sea necesario
                        
                    }
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal,20)
                    .padding(.top,25)

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
            selectedTextContent = entry.content
        }
    }
    
    private func handleSelectedOptionChange() {
        videoURL = getVideoURL(for: selectedOption ?? "Black Fathers", currentPage: "Availability")
        isEmpezarClicked = false
    }
    
}

struct TextComponent: Identifiable {
    let id = UUID()
    let text: String
    let isKeyword: Bool
    let word: String
    var meaning: String? = nil
}
