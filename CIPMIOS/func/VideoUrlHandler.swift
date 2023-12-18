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
    default:
        return nil
    }
}
