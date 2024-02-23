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
    @State private var IsPremium: Bool = false
    @State private var ShowExpla = false
    @State private var ShowClip = false
    @State private var KeyWord = "Ain't no refund"
    @State private var currentTimeInSeconds: Double = 0 // Estado para el tiempo actual del vídeo
    @State private var seekTimeInSeconds: Double?
    @State var isButtonPressed: Bool?
    @State var TimeStart = 0
    
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                // NOTCH
                NotchSpacing(ColorNotch: "blanco")
                
                // HEADER
                HeaderNav(location: "Culture", IndexSeleccionado: $IndexSeleccionado)
                
                // VIDEO VIEW
                VideoPlayerView(videoURL: videoURL,
                                currentTimeInSeconds: $currentTimeInSeconds,
                                seekTimeInSeconds: $seekTimeInSeconds,
                                onStop: {
                    // Aquí manejas lo que sucede cuando el video se detiene
                    print("El video ha terminado.")
                }, isButtonPressed: $isButtonPressed)
                .frame(height: 220)
                .padding(.top, 15)
                .padding(.horizontal, 20)
                .onChange(of: selectedOption) { _ in
                    handleSelectedOptionChange()
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
                            self.isButtonPressed = true
                            seekTimeInSeconds = seconds
                        }){
                            Text(KeyWord)
                                .padding(.bottom,10)
                                .underline(true,color: Color("azul"))
                                .foregroundColor(Color("azul"))
                        }
                        
                    }
                    .padding(.horizontal, 20)
                    
                    
                    
                    BtnEmpezar(TextBtn: "Get", action: {
                        handleFindKeyWord()
                    })
                }
            }
            .onAppear {
                // Inicializa videoURL cuando la vista aparece
                updateVideoURL()
                
            }
            .edgesIgnoringSafeArea(.all)
        }
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
        default:
            VarIndex = 0
        }
        
        
        
        if ShowExpla {
            videoURL = URL(string: ClipsData.collection[VarIndex].clips[Explanation-1].urlExp)
        } else if ShowClip {
            videoURL = URL(string: ClipsData.collection[VarIndex].clips[Clip].urlClip)
            TimeStart = ClipsData.collection[VarIndex].clips[Explanation-1].timeStart
            KeyWord = ClipsData.collection[VarIndex].clips[Explanation-1].keyword
        } else {
            // Default or initial video URL logic
            videoURL = URL(string: ClipsData.collection[VarIndex].clips[0].urlClip)
        }
    }
    
    private func handleEmpezarPractica() {
        isEmpezarClicked = true
        Explanation = 0 // Start with the first explanation video
        ShowExpla = true
        ShowClip = false
        updateVideoURL()
    }
    
    private func handleFindKeyWord() {
        if ShowExpla {
            ShowExpla = false
            ShowClip = true
        } else {
            seekTimeInSeconds = 0
            Explanation += 1
            ShowClip = false
            ShowExpla = true
        }
        updateVideoURL()
    }
    
    
}
