import Foundation

struct ClipRachel: Codable {
    let respuesta: String
    let url: URL
    let explicacion: URL
}

struct Categoria: Codable {
    let nombre: String
    let clips: [ClipRachel]
}

let DatosRachel: [Categoria] = [
    Categoria(nombre: "Steve Jobs 1", clips: [
        ClipRachel(respuesta: "actually nerd jesus died in the last year right steve jobs", url: URL(string: "https://adrianlealcaldera.com/bb1.mp4")!, explicacion: URL(string: "https://adrianlealcaldera.com/expbb1.mp4")!),
        ClipRachel(respuesta: "yeah he died right i know i know a lot of nerds here tonight", url: URL(string: "https://adrianlealcaldera.com/bb2.mp4")!, explicacion: URL(string: "https://adrianlealcaldera.com/expbb2.mp4")!),
        ClipRachel(respuesta: "i know you sad", url: URL(string: "https://adrianlealcaldera.com/bb3.mp4")!, explicacion: URL(string: "https://adrianlealcaldera.com/expbb3.mp4")!),
        ClipRachel(respuesta: "I didn't get it", url: URL(string: "https://adrianlealcaldera.com/bb4.mp4")!, explicacion: URL(string: "https://adrianlealcaldera.com/expbb4.mp4")!),
        ClipRachel(respuesta: "I didn't get the big deal they made about that guy", url: URL(string: "https://adrianlealcaldera.com/bb5.mp4")!, explicacion: URL(string: "https://adrianlealcaldera.com/expbb5.mp4")!),
    ]),
    // Aquí puedes agregar las demás categorías siguiendo el mismo patrón.
    Categoria(nombre: "Kot Fishing 1", clips: [
        ClipRachel(respuesta: "Come on hank fish or get off the pot", url: URL(string: "https://adrianlealcaldera.com/KothFishing1Clip1.mp4")!, explicacion: URL(string: "https://adrianlealcaldera.com/kotfishing1Exp1.mp4")!),
        ClipRachel(respuesta: "just a second how the heck does jack fish with this stuff", url: URL(string: "https://adrianlealcaldera.com/KothFishing1Clip2.mp4")!, explicacion: URL(string: "https://adrianlealcaldera.com/kotfishing1Exp2.mp4")!),
        ClipRachel(respuesta: "i like beer don't you like beek i mean i love beer", url: URL(string: "https://adrianlealcaldera.com/KothFishing1Clip3.mp4")!, explicacion: URL(string: "https://adrianlealcaldera.com/kotfishing1Exp3.mp4")!),
        ClipRachel(respuesta: "I just got one sweet jean vicent i'm back", url: URL(string: "https://adrianlealcaldera.com/KothFishing1Clip4.mp4")!, explicacion: URL(string: "https://adrianlealcaldera.com/kotfishing1Exp4.mp4")!),
        ClipRachel(respuesta: "that was quick talking about hank's the man damn go fishing magician", url: URL(string: "https://adrianlealcaldera.com/KothFishing1Clip5.mp4")!, explicacion: URL(string: "https://adrianlealcaldera.com/kotfishing1Exp5.mp4")!),
    ]),
    Categoria(nombre: "Kot Fishing 2", clips: [
        ClipRachel(respuesta: "looks like they're hungry for worms today pass me one will you hank", url: URL(string: "https://adrianlealcaldera.com/KothFishing2Clip1.mp4")!, explicacion: URL(string: "https://adrianlealcaldera.com/kotfishing2exp1.mp4")!),
        ClipRachel(respuesta: "what's the matter batteries go dead on your electric spinner", url: URL(string: "https://adrianlealcaldera.com/KothFishing2Clip2.mp4")!, explicacion: URL(string: "https://adrianlealcaldera.com/kotfishing2exp2.mp4")!),
        ClipRachel(respuesta: "Wo hank what you got there blood dough balls", url: URL(string: "https://adrianlealcaldera.com/KothFishing2Clip3.mp4")!, explicacion: URL(string: "https://adrianlealcaldera.com/kotfishing2exp3.mp4")!),
        ClipRachel(respuesta: "hank only fishes with worms why anything else would be cheating", url: URL(string: "https://adrianlealcaldera.com/KothFishing2Clip4.mp4")!, explicacion: URL(string: "https://adrianlealcaldera.com/kotfishing2exp4.mp4")!),
    ]),
    Categoria(nombre: "Helicoptero 1", clips: [
        ClipRachel(respuesta: "I saw this story down in Orange County Orange County California in the sky This guy gave helicopter your for 30 years 30 years without incident", url: URL(string: "https://adrianlealcaldera.com/Helicoptero1Clip1.mp4")!, explicacion: URL(string: "https://adrianlealcaldera.com/Helicoptero1Exp1.mp4")!),
        ClipRachel(respuesta: "Hands the business off to his son the American dream I built it up for 30 years Here you go son Make the family and the family name proud All right Dad I love you", url: URL(string: "https://adrianlealcaldera.com/Helicoptero1Clip2.mp4")!, explicacion: URL(string: "https://adrianlealcaldera.com/Helicoptero1Exp2.mp4")!),
        ClipRachel(respuesta: "All right This poor kid five days in he's supposed to give a tour to a couple only the dude shows up", url: URL(string: "https://adrianlealcaldera.com/Helicoptero1Clip3.mp4")!, explicacion: URL(string: "https://adrianlealcaldera.com/Helicoptero1Exp3.mp4")!),
        ClipRachel(respuesta: "The kid thought it was weirdbut he's like I need the money I gotta give him a tour Right So he takes this guy up Ten minutes into the tour the dude fucking jumped out", url: URL(string: "https://adrianlealcaldera.com/Helicoptero1Clip4.mp4")!, explicacion: URL(string: "https://adrianlealcaldera.com/Helicoptero1Exp4.mp4")!),
    ]),
    Categoria(nombre: "Helicoptero 2", clips: [
        ClipRachel(respuesta: "Yeah five days in Five days in from the balloons and the cake We love you son Keep the family tree going The traditional line", url: URL(string: "https://adrianlealcaldera.com/Helicoptero2Clip1.mp4")!, explicacion: URL(string: "https://adrianlealcaldera.com/Helicoptero2Exp1.mp4")!),
        ClipRachel(respuesta: "Five fucking days later this kid he probably barely had the speech down Just sitting there flying the helicopter", url: URL(string: "https://adrianlealcaldera.com/Helicoptero2Clip2.mp4")!, explicacion: URL(string: "https://adrianlealcaldera.com/Helicoptero2Exp2.mp4")!),
        ClipRachel(respuesta: "All right if you look out the left side of the aircraft that's Orange County. There's over 27 miles of beaches there Put your seatbelt back on twenty seven miles of beaches", url: URL(string: "https://adrianlealcaldera.com/Helicoptero2Clip3.mp4")!, explicacion: URL(string: "https://adrianlealcaldera.com/Helicoptero2Exp3.mp4")!),
        ClipRachel(respuesta: "Was established as a county in 1903 Sir please don't open the door Sir what are you doing Sir no no Don't", url: URL(string: "https://adrianlealcaldera.com/Helicoptero2Clip4.mp4")!, explicacion: URL(string: "https://adrianlealcaldera.com/Helicoptero2Exp4.mp4")!),
    ]),
    // Continúa agregando todas las categorías necesarias
]

