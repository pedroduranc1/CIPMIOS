//
//  Listening.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 19/2/24.
//

import SwiftUI

struct Listening: View {
    @Binding var IndexSeleccionado: Int
    
    @State private var StructureOptionsFree = ["Moonlight", "Rick and Morty", "Sangre por Sangre Foodline"]
    @State private var StructureOptionsPremium = ["Moonlight", "Rick and Morty", "Do You Want Pepsi", "Sangre Por Sangre Foodline", "Sangre Por Sangre Watch El Paisaje", "Training Day Rabbit Has The Gun", "Hancock Train", "Malcom in the Middle Teacher", "Sangre Por Sangre Comedor", "Dave Chapelle Man Rape", "Análisis de cultura Gringa y Frases Coloquiales 2", "Boys in the Hood", "Cultura y Fonética", "Kings of the Hills Drugs"]
    
    @State private var videoURL: URL?
    @State private var isEmpezarClicked = false
    @State private var selectedOption: String? = "Moonlight"
    @State private var Explanation = 0
    @State private var Clip = 0
    @State private var IsPremium: Bool = true
    @State private var ShowExpla = false
    @State private var ShowClip = false
    @State private var KeyWord = "Ain't no refund"
    @State private var currentTimeInSeconds: Double = 0 // Estado para el tiempo actual del vídeo
    @State private var seekTimeInSeconds: Double = 0
    @State var isButtonPressed: Bool?
    @State var TimeStart = 0
    @State var TimeEnd = 0
    @State private var hasSeeked = false
    @State var showToast = false
    @State var Message = ""
    
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                // NOTCH
                NotchSpacing(ColorNotch: "blanco")
                
                // HEADER
                HeaderNav(location: "Culture", IndexSeleccionado: $IndexSeleccionado)
                
                // VIDEO VIEW
                if let safeVideoURL = videoURL {
                    CultureVideoView(videoURL: safeVideoURL, seekTime: $seekTimeInSeconds) { time in
                        if !hasSeeked {
                            seekTimeInSeconds = 0
                        }
                        currentTimeInSeconds = time
                    }
                    .frame(height: 220)
                    .padding(.top, 15)
                    .padding(.horizontal, 20)
                    .id(videoURL)
                    .onChange(of: videoURL) { _ in
                        hasSeeked = false // Restablecer cuando cambia la URL del video
                        updateVideoURL()
                    }
                } else {
                    // Considera mostrar algún contenido alternativo o un mensaje de error aquí
                    Text("Video URL is not available.")
                }
                
                
                // SELECT BOX
                PickerCustom(defaultOption: "Moonlight", selectedOption: $selectedOption, options: IsPremium ? StructureOptionsPremium : StructureOptionsFree) {
                    handleSelectedOptionChange()
                    
                }
                
                if !isEmpezarClicked {
                    Text("Pon atencion al clip a continuacion y cuando termine haz click en empezar practica")
                        .padding(.bottom,10)
                        .padding(.horizontal, 20)
                    //BTN EMPEZAR
                    BtnEmpezar(TextBtn: "Empezar Practica", action: {
                        isEmpezarClicked.toggle()
                        handleFindKeyWord()
                    })
                }
                
                if ShowExpla {
                    Text("Pon atencion al clip de Explicacion a continuacion y cuando termine haz click en Encontrar Palabra Clave")
                        .padding(.bottom,10)
                        .padding(.horizontal, 20)
                    BtnEmpezar(TextBtn: "Encontrar Palabra Clave", action: {
                        handleFindKeyWord()
                    })
                }
                
                if ShowClip {
                    Text("da click en el boton de get cuando escuches la frase que estamos buscando")
                        .padding(.bottom,10)
                        .padding(.horizontal, 20)
                    
                    HStack{
                        Text("la palabra a encontrar es:")
                            .padding(.bottom,10)
                        Spacer()
                        Button(action: {
                            let seconds = Double(TimeStart) / 1000.0
                            seekTimeInSeconds = seconds
                            hasSeeked = true
                        }){
                            Text(KeyWord)
                                .padding(.bottom,10)
                                .underline(true,color: Color("azul"))
                                .foregroundColor(Color("azul"))
                        }
                        
                    }
                    .padding(.horizontal, 20)
                    
                    
                    
                    BtnEmpezar(TextBtn: "Get", action: {
                        validarTiempos()
                    })
                    
                    VStack {
                        Spacer()
                    }
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight:.infinity)
                    .toast(isShowing: $showToast,
                           toastConfig: ToastConfig(message: "Funcion solo Disponible para Usuarios Premiums"))
                    
                    
                    
                }
                
            }
            .onChange(of: videoURL) { _ in
                // Cada vez que cambia el videoURL, reseteamos hasSeeked y establecemos el tiempo adecuado
                hasSeeked = false
                // Aquí podrías establecer currentTimeInSeconds a un valor inicial específico si es necesario
            }
            .onChange(of: currentTimeInSeconds) { newValue in
                // Una vez que se cambia el tiempo, evita futuras actualizaciones automáticas
                hasSeeked = true
            }
            .onChange(of: selectedOption) { _ in
                handleSelectedOptionChange()
            }
            .onAppear {
                // Inicializa videoURL cuando la vista aparece
                updateVideoURL()
                
            }
            
            .edgesIgnoringSafeArea(.all)
        }
    }
    
    private func handleEmpezarPractica() {
        isEmpezarClicked = true // Asegura que se marque como empezado.
        ShowExpla = true
        ShowClip = false
        // Asume que quieres mostrar la primera explicación.
        // Ajusta según tu lógica para determinar qué explicación mostrar.
        Explanation = 1
        updateVideoURL() // Actualiza el videoURL basado en los nuevos estados.
    }
    
    private func handleFindKeyWord() {
        if ShowExpla {
            // Si estamos mostrando la explicación, cambia a mostrar el clip.
            ShowExpla = false
            ShowClip = true
            Clip = Explanation // Asume que el clip a mostrar corresponde al número de explicación actual.
        } else {
            // Si no estamos mostrando la explicación, incrementa Explanation y muestra la siguiente explicación.
            Explanation += 1
            ShowClip = false
            ShowExpla = true
        }
        updateVideoURL() // Asegúrate de actualizar el videoURL cada vez que cambien los estados relevantes.
    }
    
    private func handleSelectedOptionChange() {
        Explanation = 0
        Clip = 0
        isEmpezarClicked = false
        ShowExpla = false
        ShowClip = false
        updateVideoURL()
    }
    
    private func updateVideoURL() {
        let VarIndex: Int
        switch selectedOption {
        case "Moonlight":
            VarIndex = 0
        case "Rick and Morty":
            VarIndex = 1
        case "Do You Want Pepsi":
            VarIndex = 2
        case "Sangre Por Sangre Foodline":
            VarIndex = 3
        case "Sangre Por Sangre Watch El Paisaje":
            VarIndex = 4
        case "Training Day Rabbit Has The Gun":
            VarIndex = 5
        case "Hancock Train":
            VarIndex = 6
        case "Malcom in the Middle Teacher":
            VarIndex = 7
        case "Sangre Por Sangre Comedor":
            VarIndex = 8
        case "Dave Chapelle Man Rape":
            VarIndex = 9
        case "Análisis de cultura Gringa y Frases Coloquiales 2":
            VarIndex = 10
        case "Boys in the Hood":
            VarIndex = 11
        case "Cultura y Fonética":
            VarIndex = 12
        case "Kings of the Hills Drugs":
            VarIndex = 13
        default:
            VarIndex = 0
        }
        
        if ShowExpla {
            videoURL = URL(string: ClipsData.collection[VarIndex].clips[Explanation-1].urlExp)
        } else if ShowClip {
            videoURL = URL(string: ClipsData.collection[VarIndex].clips[Clip-1].urlClip)
            TimeStart = ClipsData.collection[VarIndex].clips[Clip-1].timeStart
            TimeEnd = ClipsData.collection[VarIndex].clips[Clip-1].timeStop
            KeyWord = ClipsData.collection[VarIndex].clips[Clip-1].keyword
        } else {
            // Lógica para establecer la URL del video inicial o predeterminado.
            videoURL = URL(string: ClipsData.collection[VarIndex].clips[0].urlClip)
        }
    }
    private func validarTiempos() {
        let secondStart = Double(TimeStart) / 1000.0
        let secondEnd = Double(TimeEnd) / 1000.0
        if currentTimeInSeconds >= secondStart && currentTimeInSeconds <= secondEnd {
            // Incrementa Explanation para avanzar a la siguiente explicación.
            
            Explanation += 1
            
            // Asegúrate de que ShowExpla se establezca en true para mostrar la explicación.
            ShowExpla = true
            
            // Asegúrate de que ShowClip se establezca en false ya que vamos a mostrar la explicación, no el clip.
            ShowClip = false
            
            // No es necesario modificar isEmpezarClicked aquí a menos que quieras reiniciar el proceso.
            seekTimeInSeconds = 0
            hasSeeked = true
            
            showToast = true
            Message = "Felicidades la encontraste."
            // Actualiza el videoURL para cargar el video de explicación correspondiente.
            updateVideoURL()
        } else {
            showToast = true
            Message = "Aqui no se encuentra la palabra. Vuelve a Intentarlo"
            // Opcional: manejar el caso en el que el tiempo actual no esté en el rango esperado.
            // Por ejemplo, puedes querer mostrar un mensaje al usuario o hacer alguna otra acción.
        }
    }
    
}
