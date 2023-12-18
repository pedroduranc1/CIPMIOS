// SpeakingFacil.swift
import SwiftUI

struct SpeakingFacil: View {
    //VARIABLE DE LA PAGINA
    @Binding var IndexSeleccionado: Int
    
    //ARRAYS DE LAS STRUCTURAS Y RANGOS FREE
    @State private var StructureOptionsFree = ["Present Simple", "Present Continuous"]
    @State private var LevelOptionsFree = ["0 a 100"]
    
    //ARRAYS DE LAS STRUCTURAS Y RANGOS FREE
    @State private var StructureOptionsPremium = ["Present Simple", "Present Continuous", "Present Perfect", "Present Perfect Continuous","Past Simple", "Past Continuous", "Past Perfect", "Past Perfect Continuous","Future Simple", "Future Continuous", "Future Perfect", "Future Perfect Continuous","Would Simple", "Would Continuous", "Would Perfect", "Would Perfect Continuous"]
    @State private var LevelOptionsPremium = ["0 a 100","100 a 200","200 a 300"]
    
    //VARIABLES POR DEFECTO
    @State private var selectedOption: String? = "Present Simple"
    @State private var selectedRango: String? = "0 a 100"
    
    //VARIABLES DE SPEAKING FACIL
    @State private var videoURL: URL?
    @State private var isEmpezarClicked = false
    @State private var isCorrect = true
    @State private var userInput: String = ""
    @State private var TxtEng = ""
    @State private var TxtSpa = ""
    @State private var TxtPalabraClave = ""
    @State private var StatusColor: String = "blanco"
    
    //VARIABLES DE FUNCIONABILIDAD
    @State private var IsPremium: Bool = false
    @State private var BtnSelected: Float = 0
    
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                // NOTCH
                NotchSpacing(ColorNotch: "blanco")
                
                // HEADER
                HeaderNav(location: "Structures", IndexSeleccionado: $IndexSeleccionado)
                
                // SELECT BOX
                PickerCustom(defaultOption: "Present Simple", selectedOption: $selectedOption, options: IsPremium ? StructureOptionsPremium : StructureOptionsFree) {
                    handleSelectedOptionChange()
                }
                
                // VIDEO VIEW
                VideoPlayerView(videoURL: videoURL, onStop: {
                    // Manejar la acción al detenerse (puedes poner cualquier código que desees ejecutar)
                    
                })
                .frame(height: 220)
                .padding(.horizontal, 20)
                .onDisappear {
                    // Detener el video cuando la vista desaparece
                    videoURL = getVideoURL(for: "", currentPage: "Speaking Facil")
                }
                
                //SELECT BOX RANGO
                PickerCustom(defaultOption: "0 a 100", selectedOption: $selectedRango, options: IsPremium ? LevelOptionsPremium : LevelOptionsFree) {
                    handleSelectedOptionChange()
                }
                
                ScrollView(.horizontal,showsIndicators: false){
                    HStack{
                        Button(action:{
                            BtnSelected = 1
                            SetDificultad()
                        }){
                            VStack{
                                Text("BASICO")
                                    .padding(.vertical,5)
                                    .padding(.horizontal,10)
                            }
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                            .background(BtnSelected == 1 ? Color("azul") : Color("blanco"))
                            .cornerRadius(8)
                            .border(BtnSelected == 1 ? Color("blanco") : Color.blue , width: 1.5)
                            .foregroundColor(BtnSelected == 1 ? Color("blanco") : Color("azul"))
                            .bold()
                            .clipShape(RoundedRectangle(cornerRadius: 5))
                            
                        }
                        
                        Button(action:{
                            BtnSelected = 2
                            SetDificultad()
                        }){
                            VStack{
                                Text("NORMAL")
                                    .padding(.vertical,5)
                                    .padding(.horizontal,10)
                            }
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                            .background(BtnSelected == 2 ? Color("azul") : Color("blanco"))
                            .cornerRadius(8)
                            .border(BtnSelected == 2 ? Color("blanco") : Color.blue , width: 1.5)
                            .foregroundColor(BtnSelected == 2 ? Color("blanco") : Color("azul"))
                            .bold()
                            .clipShape(RoundedRectangle(cornerRadius: 5))
                        }
                        
                        if IsPremium {
                            Button(action:{
                                BtnSelected = 3
                                SetDificultad()
                            }){
                                VStack{
                                    Text("INTERMEDIO")
                                        .padding(.vertical,5)
                                        .padding(.horizontal,10)
                                }
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                                .background(BtnSelected == 3 ? Color("azul") : Color("blanco"))
                                .cornerRadius(8)
                                .border(BtnSelected == 3 ? Color("blanco") : Color.blue , width: 1.5)
                                .foregroundColor(BtnSelected == 3 ? Color("blanco") : Color("azul"))
                                .bold()
                                .clipShape(RoundedRectangle(cornerRadius: 5))
                            }
                        }
                        
                        if IsPremium {
                            Button(action:{
                                BtnSelected = 4
                                SetDificultad()
                            }){
                                VStack{
                                    Text("AVANZADO")
                                        .padding(.vertical,5)
                                        .padding(.horizontal,10)
                                }
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                                .background(BtnSelected == 4 ? Color("azul") : Color("blanco"))
                                .cornerRadius(8)
                                .border(BtnSelected == 4 ? Color("blanco") : Color.blue , width: 1.5)
                                .foregroundColor(BtnSelected == 4 ? Color("blanco") : Color("azul"))
                                .bold()
                                .clipShape(RoundedRectangle(cornerRadius: 5))
                            }
                        }
                        
                    }
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal,20)
                    .padding(.bottom,10)
                }
                
                
                // Mostrar el VStack si el botón "Empezar" se ha presionado
                if isEmpezarClicked {
                    VStack {
                        HStack(alignment:.top){
                            Text("Palabra clave: ")
                            Text(TxtPalabraClave)
                                .underline(true,color: Color("azul"))
                                .foregroundColor(Color("azul"))
                            
                            Spacer()
                        }
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight:.infinity)
                        .padding(.horizontal,20)
                        
                        HStack(alignment:.top){
                            Text("Como dirias?: ")
                            Text(TxtSpa)
                            
                            Spacer()
                        }
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight:.infinity)
                        .padding(.horizontal,20)
                        
                        // Usando TextInput y proporcionando la variable de estado
                        TextInput(userInput: $userInput, StatusColor: $StatusColor)
                        
                    }
                    
                }
                
                //BTN OPTIONS DESPUES VEMOS PARA QUE SIRVE
                //                if isEmpezarClicked {
                //                    HStack{
                //                        Button(action:{}){
                //                            VStack{
                //                                Text("ORACION FACIL")
                //                                    .padding(.vertical,5)
                //                            }
                //                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                //                            .background(Color("azul"))
                //                            .bold()
                //                            .cornerRadius(8)
                //                            .foregroundColor(.white)
                //
                //                        }
                //
                //
                //                        Button(action:{}){
                //                            VStack{
                //                                Text("MAS DIFICIL")
                //                                    .padding(.vertical,5)
                //                            }
                //                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                //                            .border(Color.blue, width: 1.5)
                //                            .bold()
                //                            .clipShape(RoundedRectangle(cornerRadius: 8))
                //                        }
                //
                //                    }
                //                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                //                    .padding(.horizontal,20)
                //                    .padding(.vertical,10)
                //                }
                
                
                if !isCorrect && isEmpezarClicked {
                    HStack(alignment:.top){
                        Text("Respuesta Correcta: ")
                        Text(TxtEng)
                            .underline(true,color: Color("azul"))
                            .foregroundColor(Color("azul"))
                            .lineLimit(nil)  // Mostrar el texto completo, sin truncar
                            .fixedSize(horizontal: false, vertical: true)
                        Spacer()
                    }
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight:20)
                    .padding(.horizontal,20)
                    .padding(.top,15)
                }
                VStack(alignment:.leading){
                    
                }
                .padding(.bottom,25)
                .padding(.horizontal,20)
                
                
                if isEmpezarClicked {
                    //BTN EMPEZAR
                    BtnEmpezar(TextBtn: "Chequea tu respuesta", action: {
                        ComprobarRespuesta()
                    })
                }
                
                if !isEmpezarClicked {
                    //BTN EMPEZAR
                    BtnEmpezar(TextBtn: "Empezar", action: {
                        
                        isEmpezarClicked.toggle()
                        SetDificultad()
                    })
                }
                
            }
            .onAppear {
                // Inicializa videoURL cuando la vista aparece
                videoURL = getVideoURL(for: "Present Simple", currentPage: "Speaking Facil")
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
    
    private func handleSelectedOptionChange() {
        // Llamada a getVideoURL para actualizar videoURL
        videoURL = getVideoURL(for: selectedOption ?? "Present Simple", currentPage: "Speaking Facil")
        
        LimpiarDatos()
        isEmpezarClicked = false
    }
    
    private func LimpiarDatos(){
        Limpiar(TxtEng: $TxtEng, TxtSpa: $TxtSpa, TxtPalabraClave: $TxtPalabraClave, StatusColor: $StatusColor, userInput: $userInput)
    }
    
    private func SetDificultad(){
        if BtnSelected == 0 {
            BtnSelected = 1
        }
        
        if !isEmpezarClicked {
            isEmpezarClicked = true
        }
        switch BtnSelected{
        case 1:
            isCorrect = true
            LimpiarDatos()
            Dificultad1(selectedOption: selectedOption ?? "Present Simple", selectedRango: selectedRango ?? "0 a 100", TxtEng: &TxtEng, TxtSpa: &TxtSpa, TxtPalabraClave: &TxtPalabraClave)
        case 2:
            isCorrect = true
            LimpiarDatos()
            Dificultad2(selectedOption: selectedOption ?? "Present Simple", selectedRango: selectedRango ?? "0 a 100", TxtEng: &TxtEng, TxtSpa: &TxtSpa, TxtPalabraClave: &TxtPalabraClave)
        case 3:
            isCorrect = true
            LimpiarDatos()
            Dificultad3(selectedOption: selectedOption ?? "Present Simple", selectedRango: selectedRango ?? "0 a 100", TxtEng: &TxtEng, TxtSpa: &TxtSpa, TxtPalabraClave: &TxtPalabraClave)
        case 4:
            isCorrect = true
            LimpiarDatos()
            Dificultad4(selectedOption: selectedOption ?? "Present Simple", selectedRango: selectedRango ?? "0 a 100", TxtEng: &TxtEng, TxtSpa: &TxtSpa, TxtPalabraClave: &TxtPalabraClave)
        default:
            break
        }
        
    }
    
    private func ComprobarRespuesta() {
        let palabraCorrecta = TxtEng.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
        let palabraIngresada = userInput.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
        
        if palabraCorrecta == palabraIngresada {
            print("correcto")
            StatusColor = "success"
            isCorrect = true
            LimpiarDatos()
            SetDificultad()
        } else {
            StatusColor = "error"
            isCorrect = false
        }
    }
    
}
