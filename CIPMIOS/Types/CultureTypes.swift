import Foundation

// Asegurándose de que las estructuras cumplan con Codable para facilitar la decodificación o codificación en el futuro
struct Clip: Codable {
    var keyword: String
    var timeStart: Int
    var timeStop: Int
    var urlExp: String
    var urlClip: String
}

struct ClipsCategory: Codable {
    var clips: [Clip]
}

// Usando un enfoque estático para definir los datos
struct ClipsData {
    static let collection = [
        ClipsCategory(clips: [
            Clip(keyword: "Ain't no refund", timeStart: 24000, timeStop: 26000, urlExp: "https://adrianlealcaldera.com/Aint%20no%20refund%20-%20Moonlight.mp4", urlClip: "https://adrianlealcaldera.com/moonlightclip.mp4"),
            Clip(keyword: "Thought you was on vacation", timeStart: 36000, timeStop: 38000, urlExp: "https://adrianlealcaldera.com/Thought%20you%20was%20on%20vacation%20-%20Moonlight.mp4", urlClip: "https://adrianlealcaldera.com/moonlightclip.mp4"),
            Clip(keyword: "How peanut working out", timeStart: 48000, timeStop: 50000, urlExp: "https://adrianlealcaldera.com/How%20peanut%20working%20out%20-%20Moonlight.mp4", urlClip: "https://adrianlealcaldera.com/moonlightclip.mp4"),
            Clip(keyword: "I got him in check", timeStart: 50000, timeStop: 52000, urlExp: "https://adrianlealcaldera.com/I%20got%20him%20in%20check%20-%20Moonlight.mp4", urlClip: "https://adrianlealcaldera.com/moonlightclip.mp4"),
            Clip(keyword: "I ain´t go let that go down", timeStart: 62800, timeStop: 65000, urlExp: "https://adrianlealcaldera.com/I%20aint%20go%20let%20that%20go%20down%20-%20Moonlight.mp4", urlClip: "https://adrianlealcaldera.com/moonlightclip.mp4"),
            Clip(keyword: "I ain´t go let that go down", timeStart: 62800, timeStop: 65000, urlExp: "https://adrianlealcaldera.com/I%20aint%20go%20let%20that%20go%20down%20-%20Moonlight.mp4", urlClip: "https://adrianlealcaldera.com/moonlightclip.mp4"),
            Clip(keyword: "What´s up", timeStart: 93000, timeStop: 95600, urlExp: "https://adrianlealcaldera.com/Whats%20up%20-%20Moonlight.mp4", urlClip: "https://adrianlealcaldera.com/moonlightclip.mp4"),
            Clip(keyword: "It´s all good", timeStart: 96000, timeStop: 97600, urlExp: "https://adrianlealcaldera.com/Its%20all%20good%20-%20Moonlight.mp4", urlClip: "https://adrianlealcaldera.com/moonlightclip.mp4"),
            Clip(keyword: "What are you doing", timeStart: 98000, timeStop: 100000, urlExp: "https://adrianlealcaldera.com/What%20are%20you%20doing%20-%20Moonlight.mp4", urlClip: "https://adrianlealcaldera.com/moonlightclip.mp4"),
            Clip(keyword: "What is wrong with you", timeStart: 107000, timeStop: 108000, urlExp: "https://adrianlealcaldera.com/What%20is%20wrong%20with%20you%20-%20Moonlight.mp4", urlClip: "https://adrianlealcaldera.com/moonlightclip.mp4"),
            Clip(keyword: "Get the fuck out of here", timeStart: 115000, timeStop: 116000, urlExp: "https://adrianlealcaldera.com/Get%20the%20fuck%20out%20of%20here%20-%20Moonlight.mp4", urlClip: "https://adrianlealcaldera.com/moonlightclip.mp4"),
            Clip(keyword: "Have you ever", timeStart: 179000, timeStop: 180200, urlExp: "https://adrianlealcaldera.com/Have%20you%20ever%20-%20Moonlight.mp4", urlClip: "https://adrianlealcaldera.com/moonlightclip.mp4"),
            // Repite para otros Clips
        ]),
        // Repite para otras ClipsCategory
        ClipsCategory(clips: [
            Clip(keyword: "What's up", timeStart: 0, timeStop: 2000, urlExp: "https://adrianlealcaldera.com/Whats%20up%20-%20Rick%20and%20Morty.mp4", urlClip: "https://adrianlealcaldera.com/riackandmortyclip.mp4"),
            Clip(keyword: "No can do", timeStart: 5000, timeStop: 7000, urlExp: "https://adrianlealcaldera.com/No%20can%20do%20-%20Rick%20and%20Morty.mp4", urlClip: "https://adrianlealcaldera.com/riackandmortyclip.mp4"),
            Clip(keyword: "When i feel like it", timeStart: 16000, timeStop: 17500, urlExp: "https://adrianlealcaldera.com/When%20i%20feel%20like%20it%20-%20Rick%20and%20Morty.mp4", urlClip: "https://adrianlealcaldera.com/riackandmortyclip.mp4"),
            Clip(keyword: "You need to chill out", timeStart: 18000, timeStop: 20000, urlExp: "https://adrianlealcaldera.com/You%20need%20to%20chill%20out%20-%20Rick%20and%20Morty.mp4", urlClip: "https://adrianlealcaldera.com/riackandmortyclip.mp4"),
            Clip(keyword: "Tryna - (trying to)", timeStart: 24000, timeStop: 25000, urlExp: "https://adrianlealcaldera.com/Tryna%20-%20(trying%20to)%20-%20Rick%20and%20Morty.mp4", urlClip: "https://adrianlealcaldera.com/riackandmortyclip.mp4"),
            Clip(keyword: "You know what", timeStart: 24000, timeStop: 25000, urlExp: "https://adrianlealcaldera.com/You%20know%20what%20-%20Rick%20and%20Morty.mp4", urlClip: "https://adrianlealcaldera.com/riackandmortyclip.mp4"),
            Clip(keyword: "Hanging out", timeStart: 26000, timeStop: 25000, urlExp: "https://adrianlealcaldera.com/You%20know%20what%20-%20Rick%20and%20Morty.mp4", urlClip: "https://adrianlealcaldera.com/riackandmortyclip.mp4"),
            Clip(keyword: "You know what", timeStart: 24000, timeStop: 28000, urlExp: "https://adrianlealcaldera.com/Hanging%20out%20-%20Rick%20and%20Morty.mp4", urlClip: "https://adrianlealcaldera.com/riackandmortyclip.mp4"),
            Clip(keyword: "You're overthinking it", timeStart: 54000, timeStop: 58000, urlExp: "https://adrianlealcaldera.com/Youre%20overthinking%20it%20-%20Rick%20and%20Morty.mp4", urlClip: "https://adrianlealcaldera.com/riackandmortyclip.mp4"),
            Clip(keyword: "Get your shit together", timeStart: 104000, timeStop: 106000, urlExp: "https://adrianlealcaldera.com/Get%20your%20shit%20together%20-%20Rick%20and%20Morty.mp4", urlClip: "https://adrianlealcaldera.com/riackandmortyclip.mp4"),
            Clip(keyword: "To be into", timeStart: 4000, timeStop: 5000, urlExp: "https://adrianlealcaldera.com/To%20be%20into%20-%20Rick%20and%20Morty.mp4", urlClip: "https://adrianlealcaldera.com/riackandmortyclip.mp4"),
        ])
    ]
}


