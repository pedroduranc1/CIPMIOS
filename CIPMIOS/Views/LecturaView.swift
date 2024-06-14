import SwiftUI
import UIKit

struct LecturaView: View {
    @Binding var IndexSeleccionado: Int
    
    @State private var strucOptionsFree: [String] = []
    @State private var StructureOptionsFree = ["Black Fathers", "Is America Racist?"]
    @State private var strucOptionsPremium: [String] = []
    @State private var StructureOptionsPremium = ["Black Fathers", "Is America Racist?", "Don't Compare Yourself to Others", "Fix Yourself", "Are Men and Women Different?", "Don't Waste Your Time", "How to Make Our Cities Safer", "How to End Systemic Racism", "Should Government Bail Out Big Banks?"]
    
    @State private var selectedOption: String? = "Black Fathers"
    @State private var IsPremium: Bool = true
    @State private var videoURL: URL?
    @State private var isEmpezarClicked = false
    
    @State private var currentTimeInSeconds: Double = 0
    @State private var seekTimeInSeconds: Double?
    @State var isButtonPressed: Bool?
    
    @State private var showModal = false
    @State private var keyWord:String = ""
    @State private var Significado:String = ""
    
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
    
    @State private var tappedWord = ""
    
    @State private var textContent:String = ""
    
    @State private var highlightedWords = ["ago"]
    
    
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                
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
                
                PickerCustom(defaultOption: "Black Fathers", selectedOption: $selectedOption, options: IsPremium ? strucOptionsPremium : strucOptionsFree) {
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
                    VStack {
                        AttributedText(fullText: textContent, highlights: highlightedWords) { word in
                            self.tappedWord = word
                            self.showModal = true
                            buscarSignificado(pragger: selectedOption ?? "Black Fathers", keyword: tappedWord, keyWord: $keyWord, significado: $Significado)
                        }
                        .id(textContent)
                        .padding(.horizontal,20)
                    }
                    .frame(height: 350) // Altura fija del ScrollView
                    .sheet(isPresented: $showModal) {
                        CustomModal(keyWord: $tappedWord, Significado: $Significado)
                            .padding(.horizontal,20)
                            .presentationDetents([.height(350)])
                            .presentationDragIndicator(.visible)
                    }
                    
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
        .onChange(of: selectedOption) {_ in
            updateSelectedTextContent()
            handleSelectedOptionChange()
        }
    }
    
    private func updateSelectedTextContent() {
        
        if let palabrasArrayClave = DatosInfoRachel.first(where: { $0.pragger == (selectedOption ?? "Black Fathers") }) {
            // Obtener todas las palabras clave (keyWord) para "Black Fathers"
            let data = palabrasArrayClave.praggerWord.map { $0.keyWord }
            
            highlightedWords = data
        } else {
            print("No se encontró información para 'Black Fathers'")
        }
        
        if let blackFathersInfo = DatosPragger.first(where: { $0.pragger == (selectedOption ?? "Black Fathers") }) {
            self.textContent = blackFathersInfo.praggerWord
        } else {
            print("No matching entry found.")
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
        
        if let lesson = GlobalData.shared.selectedLesson {
            strucOptionsPremium = [lesson]
            strucOptionsFree = [lesson]
            selectedOption = lesson
            videoURL = getVideoURL(for: selectedOption ?? "Black Fathers", currentPage: "Availability")
        } else {
            strucOptionsPremium = StructureOptionsPremium
            strucOptionsFree = StructureOptionsFree
            videoURL = getVideoURL(for: selectedOption ?? "Black Fathers", currentPage: "Availability")
        }
        isEmpezarClicked = false
    }
    
}

struct AttributedText: UIViewRepresentable {
    var fullText: String
    var highlights: [String]
    var onTap: (String) -> Void
    
    func makeCoordinator() -> Coordinator {
        Coordinator(onTap: onTap)
    }
    
    func makeUIView(context: Context) -> UITextView {
        let textView = UITextView()
        textView.isEditable = false
        textView.isSelectable = true
        textView.isUserInteractionEnabled = true
        textView.dataDetectorTypes = .all
        
        context.coordinator.setup(textView: textView, with: fullText, highlights: highlights)
        
        return textView
    }
    
    func updateUIView(_ uiView: UITextView, context: Context) {
        // Coordinator will take care of updating the attributed text
    }
    
    class Coordinator: NSObject, UIGestureRecognizerDelegate {
        var onTap: (String) -> Void
        var textView: UITextView?
        var wordsToRanges: [String: [NSRange]] = [:]
        
        init(onTap: @escaping (String) -> Void) {
            self.onTap = onTap
        }
        
        func setup(textView: UITextView, with text: String, highlights: [String]) {
            self.textView = textView
            
            let attributedString = NSMutableAttributedString(string: text)
            let attributes: [NSAttributedString.Key: Any] = [
                .font: UIFont.systemFont(ofSize: 18),
                .foregroundColor: UIColor.label
            ]
            
            attributedString.addAttributes(attributes, range: NSRange(text.startIndex..., in: text))
            
            let highlightedAttributes: [NSAttributedString.Key: Any] = [
                .foregroundColor: UIColor.azul, // Use your custom color here
                .underlineStyle: NSUnderlineStyle.single.rawValue,
                .underlineColor: UIColor.azul  // Use your custom color here
            ]
            
            for highlight in highlights {
                let pattern = "\\b\(NSRegularExpression.escapedPattern(for: highlight))\\b"
                let regex = try! NSRegularExpression(pattern: pattern, options: [])
                let range = NSRange(location: 0, length: text.utf16.count)
                let matches = regex.matches(in: text, options: [], range: range)

                for match in matches {
                    attributedString.addAttributes(highlightedAttributes, range: match.range)
                    if wordsToRanges[highlight] != nil {
                        wordsToRanges[highlight]?.append(match.range)
                    } else {
                        wordsToRanges[highlight] = [match.range]
                    }
                }
            }
            
            textView.attributedText = attributedString
            
            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap(_:)))
            textView.addGestureRecognizer(tapGesture)
        }


        
        @objc func handleTap(_ gesture: UITapGestureRecognizer) {
            guard let textView = textView else { return }
            let location = gesture.location(in: textView)
            let position = CGPoint(x: location.x, y: location.y)
            let tapIndex = textView.layoutManager.characterIndex(for: position, in: textView.textContainer, fractionOfDistanceBetweenInsertionPoints: nil)
            
            let attributedString = textView.attributedText.string as NSString
            for (word, ranges) in wordsToRanges {
                for range in ranges {
                    if NSLocationInRange(tapIndex, range) {
                        let tappedWord = attributedString.substring(with: range)
                        onTap(tappedWord)
                        return
                    }
                }
            }
        }
    }
}

struct CustomModal: View {
    @Binding var keyWord: String
    @Binding var Significado: String
    
    var body: some View {
        VStack {
            Text(keyWord)
                .padding()
                .font(.system(size: 20))
                .bold()
                .background(Color.white)
                .cornerRadius(10)
            Text(Significado)
                .padding()
                .background(Color.white)
                .cornerRadius(10)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 200) // Establece el alto de este VStack a 200
        .background(Color.gray.opacity(0.1)) // Puedes ajustar el color de fondo si lo deseas
        .cornerRadius(20) // Para bordes redondeados
    }
}


func buscarSignificado(pragger: String, keyword: String, keyWord: Binding<String>, significado: Binding<String>) {
    for item in DatosInfoRachel {
        if item.pragger == pragger {
            for word in item.praggerWord {
                if word.keyWord.lowercased() == keyword.lowercased() {
                    keyWord.wrappedValue = word.keyWord
                    significado.wrappedValue = word.significado
                }
            }
        }
    }
}



