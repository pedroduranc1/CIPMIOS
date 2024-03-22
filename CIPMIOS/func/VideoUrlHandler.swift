//
//  VideoUrlHandler.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 7/12/23.
//

import Foundation

func getVideoURL(for option: String?,currentPage: String) -> URL? {
    guard let option = option else {
        return nil
    }
    
    switch currentPage {
    case "Speaking Facil":
        switch option {
        case "Present Simple":
            return URL(string: "https://adrianlealcaldera.com/presentesimple.mp4")
            
        case "Present Continuous":
            return URL(string: "https://adrianlealcaldera.com/presentecontinuo.mp4")
            // Agrega más casos según sea necesario
        default:
            return URL(string: "https://adrianlealcaldera.com/structurastut.mp4")
        }
    case "Test":
        // Lógica para otra página
        switch option {
        case "Test":
            return URL(string: "https://adrianlealcaldera.com/examenexpl.mp4")
            
        default:
            return URL(string: "https://adrianlealcaldera.com/examenexpl.mp4")
        }
        
    case "Vocabulary":
        // Lógica para otra página
        switch option {
        case "0 a 50":
            return URL(string: "https://adrianlealcaldera.com/vocablowq.mp4")
            
        case "50 a 100":
            return URL(string: "https://adrianlealcaldera.com/51a100.mp4")
            
        case "100 a 150":
            return URL(string: "https://adrianlealcaldera.com/100a150.mp4")
            
        case "150 a 200":
            return URL(string: "https://adrianlealcaldera.com/151-200.mp4")
            
        case "200 a 250":
            return URL(string: "https://adrianlealcaldera.com/200a250.mp4")
            
        case "250 a 300":
            return URL(string: "https://adrianlealcaldera.com/250a300.mp4")
            
        case "300 a 350":
            return URL(string: "https://adrianlealcaldera.com/300-350.mp4")
            
        case "350 a 400":
            return URL(string: "https://adrianlealcaldera.com/350a400bq.mp4")
            
        case "400 a 450":
            return URL(string: "https://adrianlealcaldera.com/400a500lq.mp4")
            
        default:
            return URL(string: "https://adrianlealcaldera.com/presentesimple.mp4")
        }
        
    case "Premium":
        return URL(string: "https://adrianlealcaldera.com/premiumpromo.mp4")
        
    case "Culture":
        switch(option){
        case "Moonlight":
            return URL(string: "https://adrianlealcaldera.com/presentesimple.mp4")
        default:
            return nil
        }
    case "Availability":
        switch(option){
        case "Black Fathers":
            return URL(string: "https://adrianlealcaldera.com/blackfathers.mp4")
        case "Is America Racist?":
            return URL(string: "https://adrianlealcaldera.com/isamericaracist.mp4")
        case "Don't Compare Yourself to Others":
            return URL(string: "https://adrianlealcaldera.com/DontCompareYourselftoOthersPrag.mp4")
        case "Fix Yourself":
            return URL(string: "https://adrianlealcaldera.com/FixYourself.mp4")
        case "Are Men and Women Different?":
            return URL(string: "https://adrianlealcaldera.com/Are%20Men%20and%20Women%20Different.mp4")
        case "Don't Waste Your Time":
            return URL(string: "https://adrianlealcaldera.com/Dating%20Dont%20Waste%20Your%20Time.mp4")
        case "How to Make Our Cities Safer":
            return URL(string: "https://adrianlealcaldera.com/How%20to%20Make%20Our%20Cities%20Safer.mp4")
        case "How to End Systemic Racism":
            return URL(string: "https://adrianlealcaldera.com/How%20to%20End%20Systemic%20Racism.mp4")
        case "Should Government Bail Out Big Banks?":
            return URL(string: "https://adrianlealcaldera.com/Should%20Government%20Bail%20Out%20Big%20Banks.mp4")
        default:
            return nil
        }
    case "Speaking Dificil":
        switch(option){
        case "Conectores Standar Presente Simple":
            return URL(string: "https://adrianlealcaldera.com/transiciones.mp4")
        case "Conectores Standar Presente Dificil":
            return URL(string: "https://adrianlealcaldera.com/transiciones.mp4")
        default:
            return nil
        }
        
    case "Listening Dificil":
        switch(option){
        case "Steve Jobs 1":
            return URL(string: "https://adrianlealcaldera.com/billburrstevejobsclip1.mp4")
        case "Kot Fishing 1":
            return URL(string: "https://adrianlealcaldera.com/kotfishing1Clip.mp4")
        case "Kot Fishing 2":
            return URL(string: "https://adrianlealcaldera.com/kotfishing2Clip.mp4")
        case "Helicoptero 1":
            return URL(string: "https://adrianlealcaldera.com/Helicoptero1Clip.mp4")
        case "Helicoptero 2":
            return URL(string: "https://adrianlealcaldera.com/Helicoptero2Clip.mp4")
        default:
            return nil
        }
    default:
        return nil
    }
}
