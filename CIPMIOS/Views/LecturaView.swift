import SwiftUI

struct LecturaView: View {
    @Binding var IndexSeleccionado: Int
    
    @State private var StructureOptionsFree = ["Black Fathers", "Is America Racist?"]
    @State private var StructureOptionsPremium = ["Black Fathers", "Is America Racist?", "Don't Compare Yourself to Others", "Fix Yourself", "Are Men and Women Different?", "Don't Waste Your Time", "How to Make Our Cities Safer", "How to End Systemic Racism", "Should Government Bail Out Big Banks?"]
    
    @State private var selectedOption: String? = "Black Fathers"
    @State private var IsPremium: Bool = true
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
    
    @State private var preg1StatusColor:Color = .white
    @State private var preg2StatusColor:Color = .white
    @State private var preg3StatusColor:Color = .white
    @State private var preg4StatusColor:Color = .white
    
    @State private var RespCorrec = ""
    
    @State private var IndexPreg = 0
    
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
                        startQuizTest()
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
                    
                    Button(action:{
                        ComprobarResp(resp: preg1)
                    }){
                        VStack {
                            Text(preg1)
                                .font(.system(size: 16))
                                .padding(.vertical,10)
                        }
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .background(preg1StatusColor)
                        .border(Color.blue, width: 1.5)
                        .clipShape(RoundedRectangle(cornerRadius: 4)) // Ajusta el valor según sea necesario
                        
                    }
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal,20)
                    .padding(.top,15)
                    .padding(.bottom,5)
                    
                    Button(action:{
                        ComprobarResp(resp: preg2)
                    }){
                        VStack {
                            Text(preg2)
                                .font(.system(size: 16))
                                .padding(.vertical,10)
                        }
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .background(preg2StatusColor)
                        .border(Color.blue, width: 1.5)
                        .clipShape(RoundedRectangle(cornerRadius: 4)) // Ajusta el valor según sea necesario
                        
                    }
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal,20)
                    .padding(.vertical,5)
                    
                    Button(action:{
                        ComprobarResp(resp: preg3)
                    }){
                        VStack {
                            Text(preg3)
                                .font(.system(size: 16))
                                .padding(.vertical,10)
                        }
                        .frame(maxWidth: .infinity)
                        .background(preg3StatusColor)
                        .border(Color.blue, width: 1.5)
                        .clipShape(RoundedRectangle(cornerRadius: 4)) // Ajusta el valor según sea necesario
                        
                    }
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal,20)
                    .padding(.vertical,5)
                    
                    Button(action:{
                        ComprobarResp(resp: preg4)
                    }){
                        VStack {
                            Text(preg4)
                                .font(.system(size: 16))
                                .padding(.vertical,10)
                        }
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .background(preg4StatusColor)
                        .border(Color.blue, width: 1.5)
                        .clipShape(RoundedRectangle(cornerRadius: 4)) // Ajusta el valor según sea necesario
                        
                    }
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal,20)
                    .padding(.vertical,5)
                    
                    Button(action:{
                        IndexPreg+=1
                        startQuizTest()
                    }){
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
    
    private func startQuizTest(){
        // Restablecer colores de fondo a blanco para una nueva pregunta
        preg1StatusColor = .white
        preg2StatusColor = .white
        preg3StatusColor = .white
        preg4StatusColor = .white
        
        
        self.isTest = true
        
        if let LecturaPregs = DatosPregRachel.first(where: {$0.nombre == selectedOption}){
            let PregData = LecturaPregs.pregs
            
            if PregData.count > 1 && IndexPreg < PregData.count  {
                let Data = PregData[IndexPreg]
                
                preg = Data.preg
                preg1 = Data.preg1
                preg2 = Data.preg2
                preg3 = Data.preg3
                preg4 = Data.preg4
                
                RespCorrec = Data.respCorrec
            }
            else {
                IndexPreg = 0
                isEmpezarClicked = false
            }
        }
        
    }
    
    private func ComprobarResp(resp:String){
        // Restablecer colores de todas las respuestas a blanco antes de asignar el nuevo color
        preg1StatusColor = .white
        preg2StatusColor = .white
        preg3StatusColor = .white
        preg4StatusColor = .white
        
        if RespCorrec == resp {
            print("resp correcta")
            // Asignar color de correcto a la respuesta seleccionada
            if resp == preg1 { preg1StatusColor = .green }
            else if resp == preg2 { preg2StatusColor = .green }
            else if resp == preg3 { preg3StatusColor = .green }
            else if resp == preg4 { preg4StatusColor = .green }
        } else {
            print("resp incorrecta")
            // Asignar color de incorrecto a la respuesta seleccionada
            if resp == preg1 { preg1StatusColor = .red }
            else if resp == preg2 { preg2StatusColor = .red }
            else if resp == preg3 { preg3StatusColor = .red }
            else if resp == preg4 { preg4StatusColor = .red }
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
