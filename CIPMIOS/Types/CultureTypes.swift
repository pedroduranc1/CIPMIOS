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
        //Moonlight
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
        // Rick and Morty
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
        ]),
        //Do You Want Pepsi
        ClipsCategory(clips: [
            Clip(keyword: "Is there anything else a can get for you", timeStart: 0, timeStop: 2000, urlExp: "https://adrianlealcaldera.com/Is%20there%20anything%20else%20a%20can%20get%20for%20you%20-%20Do%20You%20Want%20Pepsi.mp4", urlClip: "https://adrianlealcaldera.com/doyouwantpepsiClip.mp4"),
            Clip(keyword: "Ain't got no", timeStart: 6000, timeStop: 9000, urlExp: "https://adrianlealcaldera.com/Aint%20got%20no%20-%20Do%20You%20Want%20Pepsi.mp4", urlClip: "https://adrianlealcaldera.com/doyouwantpepsiClip.mp4"),
            Clip(keyword: "Do you want", timeStart: 10000, timeStop: 12000, urlExp: "https://adrianlealcaldera.com/Do%20you%20want%20-%20Do%20You%20Want%20Pepsi.mp4", urlClip: "https://adrianlealcaldera.com/doyouwantpepsiClip.mp4"),
            Clip(keyword: "I was just wondering", timeStart: 15000, timeStop: 18000, urlExp: "https://adrianlealcaldera.com/I%20was%20just%20wondering%20-%20Do%20You%20Want%20Pepsi.mp4", urlClip: "https://adrianlealcaldera.com/doyouwantpepsiClip.mp4"),
            Clip(keyword: "Might as well", timeStart: 17000, timeStop: 19000, urlExp: "https://adrianlealcaldera.com/Might%20as%20well%20-%20Do%20You%20Want%20Pepsi.mp4", urlClip: "https://adrianlealcaldera.com/doyouwantpepsiClip.mp4"),
            Clip(keyword: "You feel me", timeStart: 18000, timeStop: 20000, urlExp: "https://adrianlealcaldera.com/You%20feel%20me%20-%20Do%20You%20Want%20Pepsi.mp4", urlClip: "https://adrianlealcaldera.com/doyouwantpepsiClip.mp4"),
            Clip(keyword: "Is there a problem", timeStart: 29000, timeStop: 31000, urlExp: "https://adrianlealcaldera.com/Is%20there%20a%20problem%20-%20Do%20You%20Want%20Pepsi.mp4", urlClip: "https://adrianlealcaldera.com/doyouwantpepsiClip.mp4"),
            Clip(keyword: "I didn't want", timeStart: 31000, timeStop: 33000, urlExp: "https://adrianlealcaldera.com/I%20didnt%20want%20-%20Do%20You%20Want%20Pepsi.mp4", urlClip: "https://adrianlealcaldera.com/doyouwantpepsiClip.mp4"),
            Clip(keyword: "Why would you", timeStart: 34000, timeStop: 36000, urlExp: "https://adrianlealcaldera.com/Why%20would%20you%20-%20Do%20You%20Want%20Pepsi.mp4", urlClip: "https://adrianlealcaldera.com/doyouwantpepsiClip.mp4")
        ]),
        //Sangre Por Sangre Foodline Clip 4
        ClipsCategory(clips: [
            Clip(keyword: "You ain't going to no prom soon", timeStart: 8000, timeStop: 10000, urlExp: "https://adrianlealcaldera.com/You%20aint%20going%20to%20no%20prom%20soon%20-%20Sangre%20Por%20Sangre%20Foodline.mp4", urlClip: "https://adrianlealcaldera.com/sangrexsangrefoodlineClip.mp4"),
            Clip(keyword: "Ain't nothing but", timeStart: 15000, timeStop: 16000, urlExp: "https://adrianlealcaldera.com/Aint%20nothing%20but%20-%20Sangre%20Por%20Sangre%20Foodline.mp4", urlClip: "https://adrianlealcaldera.com/sangrexsangrefoodlineClip.mp4"),
            Clip(keyword: "I ain't no muslim", timeStart: 25000, timeStop: 27000, urlExp: "https://adrianlealcaldera.com/I%20aint%20no%20muslim%20-%20Sangre%20Por%20Sangre%20Foodline.mp4", urlClip: "https://adrianlealcaldera.com/sangrexsangrefoodlineClip.mp4"),
            Clip(keyword: "I ain't moving", timeStart: 31000, timeStop: 33000, urlExp: "https://adrianlealcaldera.com/I%20aint%20no%20moving%20-%20Sangre%20Por%20Sangre%20Foodline.mp4", urlClip: "https://adrianlealcaldera.com/sangrexsangrefoodlineClip.mp4"),
            Clip(keyword: "There is a ray of sunshine", timeStart: 61000, timeStop: 63000, urlExp: "https://adrianlealcaldera.com/There%20is%20a%20ray%20of%20sunshine%20-%20Sangre%20Por%20Sangre%20Foodline.mp4", urlClip: "https://adrianlealcaldera.com/sangrexsangrefoodlineClip.mp4"),
            Clip(keyword: "I ain't buying whats mine", timeStart: 132000, timeStop: 134000, urlExp: "https://adrianlealcaldera.com/I%20aint%20buying%20whats%20mine%20-%20Sangre%20Por%20Sangre%20Foodline.mp4", urlClip: "https://adrianlealcaldera.com/sangrexsangrefoodlineClip.mp4"),
            Clip(keyword: "You've getting by with that shit", timeStart: 155000, timeStop: 158000, urlExp: "https://adrianlealcaldera.com/Youve%20getting%20by%20with%20that%20shit%20-%20Sangre%20Por%20Sangre%20Foodline.mp4", urlClip: "https://adrianlealcaldera.com/sangrexsangrefoodlineClip.mp4")
        ]),
        //Sangre Por Sangre Watch El Paisaje Clip 5
        ClipsCategory(clips: [
            Clip(keyword: "I'm here to jack you up", timeStart: 23000, timeStop: 25000, urlExp: "https://adrianlealcaldera.com/Im%20here%20to%20jack%20you%20up%20-%20Sangre%20Por%20Sangre%20Watch%20El%20Paisaje.mp4", urlClip: "https://adrianlealcaldera.com/sangrexsangrewatchaelpaisajeClip.mp4"),
            Clip(keyword: "What do you want to do", timeStart: 42000, timeStop: 44000, urlExp: "https://adrianlealcaldera.com/What%20do%20you%20want%20to%20do%20-%20Sangre%20Por%20Sangre%20Watch%20El%20Paisaje.mp4", urlClip: "https://adrianlealcaldera.com/sangrexsangrewatchaelpaisajeClip.mp4"),
            Clip(keyword: "You gotta pay your dues", timeStart: 45000, timeStop: 47000, urlExp: "https://adrianlealcaldera.com/You%20gotta%20pay%20your%20dues%20-%20Sangre%20Por%20Sangre%20Watch%20El%20Paisaje.mp4", urlClip: "https://adrianlealcaldera.com/sangrexsangrewatchaelpaisajeClip.mp4"),
            Clip(keyword: "You wanna throw down", timeStart: 48000, timeStop: 50000, urlExp: "https://adrianlealcaldera.com/You%20wanna%20throw%20down%20-%20Sangre%20Por%20Sangre%20Watch%20El%20Paisaje.mp4", urlClip: "https://adrianlealcaldera.com/sangrexsangrewatchaelpaisajeClip.mp4"),
            Clip(keyword: "Catch you on the rebound", timeStart: 82000, timeStop: 85000, urlExp: "https://adrianlealcaldera.com/Catch%20you%20on%20the%20rebound%20-%20Sangre%20Por%20Sangre%20Watch%20El%20Paisaje.mp4", urlClip: "https://adrianlealcaldera.com/sangrexsangrewatchaelpaisajeClip.mp4"),
            Clip(keyword: "Should't done thate", timeStart: 135000, timeStop: 137000, urlExp: "https://adrianlealcaldera.com/Shouldt%20done%20thate%20-%20Sangre%20Por%20Sangre%20Watch%20El%20Paisaje.mp4", urlClip: "https://adrianlealcaldera.com/sangrexsangrewatchaelpaisajeClip.mp4")
        ]),
        //Training Day Rabbit Has The Gun
        ClipsCategory(clips: [
            Clip(keyword: "Is no fun", timeStart: 12000, timeStop: 14000, urlExp: "https://adrianlealcaldera.com/Is%20no%20fun%20-%20Training%20Day%20Rabbit%20Has%20The%20Gun.mp4", urlClip: "https://adrianlealcaldera.com/trainingdayrabbithasthegunClip.mp4"),
            Clip(keyword: "Who want to get paid", timeStart: 32000, timeStop: 34000, urlExp: "https://adrianlealcaldera.com/Who%20want%20to%20get%20paid%20-%20Training%20Day%20Rabbit%20Has%20The%20Gun.mp4", urlClip: "https://adrianlealcaldera.com/trainingdayrabbithasthegunClip.mp4"),
            Clip(keyword: "I'm glad to hear that", timeStart: 49000, timeStop: 51000, urlExp: "https://adrianlealcaldera.com/Im%20glad%20to%20hear%20that%20-%20Training%20Day%20Rabbit%20Has%20The%20Gun.mp4", urlClip: "https://adrianlealcaldera.com/trainingdayrabbithasthegunClip.mp4"),
            Clip(keyword: "What are you gonna do", timeStart: 57000, timeStop: 59000, urlExp: "https://adrianlealcaldera.com/What%20are%20you%20gonna%20do%20-%20Training%20Day%20Rabbit%20Has%20The%20Gun.mp4", urlClip: "https://adrianlealcaldera.com/trainingdayrabbithasthegunClip.mp4"),
            Clip(keyword: "There it is", timeStart: 67000, timeStop: 69000, urlExp: "https://adrianlealcaldera.com/There%20it%20is%20-%20Training%20Day%20Rabbit%20Has%20The%20Gun.mp4", urlClip: "https://adrianlealcaldera.com/trainingdayrabbithasthegunClip.mp4"),
            Clip(keyword: "Havent ever - ain't never", timeStart: 73000, timeStop: 75000, urlExp: "https://adrianlealcaldera.com/Havent%20ever%20-%20aint%20never%20-%20Training%20Day%20Rabbit%20Has%20The%20Gun.mp4", urlClip: "https://adrianlealcaldera.com/trainingdayrabbithasthegunClip.mp4"),
            Clip(keyword: "You get me twisted", timeStart: 118000, timeStop: 120000, urlExp: "https://adrianlealcaldera.com/You%20get%20me%20twisted%20-%20Training%20Day%20Rabbit%20Has%20The%20Gun.mp4", urlClip: "https://adrianlealcaldera.com/trainingdayrabbithasthegunClip.mp4"),
            Clip(keyword: "Ain't got it in you", timeStart: 139000, timeStop: 141000, urlExp: "https://adrianlealcaldera.com/Aint%20got%20it%20in%20you%20-%20Training%20Day%20Rabbit%20Has%20The%20Gun.mp4", urlClip: "https://adrianlealcaldera.com/trainingdayrabbithasthegunClip.mp4"),
            Clip(keyword: "Ima get - i'm going to get", timeStart: 152000, timeStop: 154000, urlExp: "https://adrianlealcaldera.com/Ima%20get%20-%20im%20going%20to%20get%20-%20Training%20Day%20Rabbit%20Has%20The%20Gun.mp4", urlClip: "https://adrianlealcaldera.com/trainingdayrabbithasthegunClip.mp4"),
            Clip(keyword: "You ain't go", timeStart: 156000, timeStop: 158000, urlExp: "https://adrianlealcaldera.com/You%20aint%20go%20-%20Training%20Day%20Rabbit%20Has%20The%20Gun.mp4", urlClip: "https://adrianlealcaldera.com/trainingdayrabbithasthegunClip.mp4"),
            
        ]),
        //Hancock Train
        ClipsCategory(clips: [
            Clip(keyword: "I'm on my way", timeStart: 1000, timeStop: 3000, urlExp: "https://adrianlealcaldera.com/Im%20on%20my%20way%20-%20Hancock%20Train.mp4", urlClip: "https://adrianlealcaldera.com/hancocktrainClip.mp4"),
            Clip(keyword: "I'll see you in about", timeStart: 15000, timeStop: 18000, urlExp: "https://adrianlealcaldera.com/Ill%20see%20you%20in%20about%20-%20Hancock%20Train.mp4", urlClip: "https://adrianlealcaldera.com/hancocktrainClip.mp4"),
            Clip(keyword: "Are you alright", timeStart: 76000, timeStop: 78000, urlExp: "https://adrianlealcaldera.com/Are%20you%20alright%20-%20Hancock%20Train.mp4", urlClip: "https://adrianlealcaldera.com/hancocktrainClip.mp4"),
            Clip(keyword: "You're the one who/that", timeStart: 126000, timeStop: 129000, urlExp: "https://adrianlealcaldera.com/Youre%20the%20one%20who_that%20-%20Hancock%20Train.mp4", urlClip: "https://adrianlealcaldera.com/hancocktrainClip.mp4"),
            Clip(keyword: "Why didn't you just", timeStart: 126000, timeStop: 129000, urlExp: "https://adrianlealcaldera.com/Why%20didnt%20you%20just%20-%20Hancock%20Train.mp4", urlClip: "https://adrianlealcaldera.com/hancocktrainClip.mp4"),
            Clip(keyword: "Should't done thate", timeStart: 175000, timeStop: 178000, urlExp: "https://adrianlealcaldera.com/Coulda%20shoulda%20-%20could_should%20-%20Hancock%20Train.mp4", urlClip: "https://adrianlealcaldera.com/hancocktrainClip.mp4")
        ]),
        //Malcom in the Middle Teacher Clip 8
        ClipsCategory(clips: [
            Clip(keyword: "You're nothing but a", timeStart: 0, timeStop: 2000, urlExp: "https://adrianlealcaldera.com/Youre%20nothing%20but%20a%20-%20Malcom%20in%20the%20Middle%20Teacher.mp4", urlClip: "https://adrianlealcaldera.com/malconinthemiddleteacherClip.mp4"),
            Clip(keyword: "Took you long enough", timeStart: 9000, timeStop: 10000, urlExp: "https://adrianlealcaldera.com/Took%20you%20long%20enough%20-%20Malcom%20in%20the%20Middle%20Teacher.mp4", urlClip: "https://adrianlealcaldera.com/malconinthemiddleteacherClip.mp4"),
            Clip(keyword: "I've been trynna / trying to", timeStart: 11000, timeStop: 13000, urlExp: "https://adrianlealcaldera.com/Ive%20been%20trynna%20-%20Malcom%20in%20the%20Middle%20Teacher.mp4", urlClip: "https://adrianlealcaldera.com/malconinthemiddleteacherClip.mp4"),
            Clip(keyword: "What do you want", timeStart: 18000, timeStop: 20000, urlExp: "https://adrianlealcaldera.com/What%20do%20you%20want%20-%20Malcom%20in%20the%20Middle%20Teacher.mp4", urlClip: "https://adrianlealcaldera.com/malconinthemiddleteacherClip.mp4"),
            Clip(keyword: "It's just a bunch of", timeStart: 32000, timeStop: 34000, urlExp: "https://adrianlealcaldera.com/Its%20just%20a%20bunch%20of%20-%20Malcom%20in%20the%20Middle%20Teacher.mp4", urlClip: "https://adrianlealcaldera.com/malconinthemiddleteacherClip.mp4"),
            Clip(keyword: "Rub somebody the wrong way", timeStart: 88000, timeStop: 90000, urlExp: "https://adrianlealcaldera.com/Rub%20somebody%20the%20wrong%20way%20-%20Malcom%20in%20the%20Middle%20Teacher.mp4", urlClip: "https://adrianlealcaldera.com/malconinthemiddleteacherClip.mp4")
        ]),
        //Sangre Por Sangre Comedor
        ClipsCategory(clips: [
            Clip(keyword: "You wanna buy", timeStart: 17000, timeStop: 19000, urlExp: "https://adrianlealcaldera.com/You%20wanna%20buy%20-%20Sangre%20Por%20Sangre%20Comedor.mp4", urlClip: "https://adrianlealcaldera.com/sangrexsangre(comedor)Clip.mp4"),
            Clip(keyword: "Get your hands off", timeStart: 26000, timeStop: 28000, urlExp: "https://adrianlealcaldera.com/Get%20your%20hands%20off%20-%20Sangre%20Por%20Sangre%20Comedor.mp4", urlClip: "https://adrianlealcaldera.com/sangrexsangre(comedor)Clip.mp4"),
            Clip(keyword: "Give it to one of my", timeStart: 120000, timeStop: 123000, urlExp: "https://adrianlealcaldera.com/Give%20it%20to%20one%20of%20my%20-%20Sangre%20Por%20Sangre%20Comedor.mp4", urlClip: "https://adrianlealcaldera.com/sangrexsangre(comedor)Clip.mp4"),
            Clip(keyword: "I'm gonna have to", timeStart: 200000, timeStop: 203000, urlExp: "https://adrianlealcaldera.com/Im%20gonna%20have%20to%20-%20Sangre%20Por%20Sangre%20Comedor.mp4", urlClip: "https://adrianlealcaldera.com/sangrexsangre(comedor)Clip.mp4"),
            Clip(keyword: "What's the matter", timeStart: 205000, timeStop: 206000, urlExp: "https://adrianlealcaldera.com/Whats%20the%20matter%20-%20Sangre%20Por%20Sangre%20Comedor.mp4", urlClip: "https://adrianlealcaldera.com/sangrexsangre(comedor)Clip.mp4"),
            Clip(keyword: "Ain't you ever", timeStart: 207000, timeStop: 209000, urlExp: "https://adrianlealcaldera.com/Aint%20you%20ever%20-%20Sangre%20Por%20Sangre%20Comedor.mp4", urlClip: "https://adrianlealcaldera.com/sangrexsangre(comedor)Clip.mp4"),
            Clip(keyword: "What are you looking for", timeStart: 260000, timeStop: 262000, urlExp: "https://adrianlealcaldera.com/What%20are%20you%20looking%20for%20-%20Sangre%20Por%20Sangre%20Comedor.mp4", urlClip: "https://adrianlealcaldera.com/sangrexsangre(comedor)Clip.mp4")
        ]),
        //Dave Chapelle Man Rape Clip 10
        ClipsCategory(clips: [
            Clip(keyword: "I'm one of those people", timeStart: 1000, timeStop: 3000, urlExp: "https://adrianlealcaldera.com/davechapelle(man%20rape)Clip.mp4", urlClip: "https://adrianlealcaldera.com/Im%20one%20of%20those%20people%20-%20Dave%20Chapelle%20Man%20Rape.mp4"),
            Clip(keyword: "And i'm scared to live", timeStart: 7000, timeStop: 10000, urlExp: "https://adrianlealcaldera.com/davechapelle(man%20rape)Clip.mp4", urlClip: "https://adrianlealcaldera.com/And%20im%20scared%20to%20live%20-%20Dave%20Chapelle%20Man%20Rape.mp4"),
        ]),
        //Análisis de cultura Gringa y Frases Coloquiales 2
        ClipsCategory(clips: [
            Clip(keyword: "If ther is some firing Going on", timeStart: 1000, timeStop: 3000, urlExp: "https://adrianlealcaldera.com/If%20ther%20is%20some%20firing%20Going%20on%20-%20Ana%CC%81lisis%20de%20cultura%20Gringa%20y%20Frases%20Coloquiales%202.mp4", urlClip: "https://adrianlealcaldera.com/analisisdeculturagringayfrasescoloquiales2Clip.mp4"),
            Clip(keyword: "We first So we pretty much expect it", timeStart: 3000, timeStop: 7000, urlExp: "https://adrianlealcaldera.com/We%20first%20So%20we%20pretty%20much%20expect%20it%20-%20Ana%CC%81lisis%20de%20cultura%20Gringa%20y%20Frases%20Coloquiales%202.mp4", urlClip: "https://adrianlealcaldera.com/analisisdeculturagringayfrasescoloquiales2Clip.mp4"),
            Clip(keyword: "I know what im Talking about", timeStart: 7600, timeStop: 9000, urlExp: "https://adrianlealcaldera.com/I%20know%20what%20im%20Talking%20about%20-%20Ana%CC%81lisis%20de%20cultura%20Gringa%20y%20Frases%20Coloquiales%202.mp4", urlClip: "https://adrianlealcaldera.com/analisisdeculturagringayfrasescoloquiales2Clip.mp4"),
            Clip(keyword: "I done had a lot of jobs", timeStart: 8900, timeStop: 10000, urlExp: "https://adrianlealcaldera.com/I%20done%20had%20a%20lot%20of%20jobs%20-%20Ana%CC%81lisis%20de%20cultura%20Gringa%20y%20Frases%20Coloquiales%202.mp4", urlClip: "https://adrianlealcaldera.com/analisisdeculturagringayfrasescoloquiales2Clip.mp4"),
            Clip(keyword: "Got into", timeStart: 10000, timeStop: 12000, urlExp: "https://adrianlealcaldera.com/Got%20into%20-%20Ana%CC%81lisis%20de%20cultura%20Gringa%20y%20Frases%20Coloquiales%202.mp4", urlClip: "https://adrianlealcaldera.com/analisisdeculturagringayfrasescoloquiales2Clip.mp4"),
            Clip(keyword: "Out of them", timeStart: 15000, timeStop: 16500, urlExp: "https://adrianlealcaldera.com/Out%20of%20them%20-%20Ana%CC%81lisis%20de%20cultura%20Gringa%20y%20Frases%20Coloquiales%202.mp4", urlClip: "https://adrianlealcaldera.com/analisisdeculturagringayfrasescoloquiales2Clip.mp4")
        ]),
        //Boys in the Hood
        ClipsCategory(clips: [
            Clip(keyword: "What’s wrong with you", timeStart: 12000, timeStop: 14000, urlExp: "https://adrianlealcaldera.com/Whats%20wrong%20with%20you%20-%20Boys%20in%20the%20Hood.mp4", urlClip: "https://adrianlealcaldera.com/BoyzntheHoodClip.mp4"),
            Clip(keyword: "What the fuck are you looking at", timeStart: 15000, timeStop: 17000, urlExp: "https://adrianlealcaldera.com/What%20the%20fuck%20are%20you%20looking%20at%20-%20Boys%20in%20the%20Hood.mp4", urlClip: "https://adrianlealcaldera.com/BoyzntheHoodClip.mp4"),
            Clip(keyword: "I’m Still trying to find out “Tryna”", timeStart: 16800, timeStop: 19000, urlExp: "https://adrianlealcaldera.com/Im%20Still%20trying%20to%20find%20out%20-%20Boys%20in%20the%20Hood.mp4", urlClip: "https://adrianlealcaldera.com/BoyzntheHoodClip.mp4"),
            Clip(keyword: "We got a problem here?", timeStart: 21000, timeStop: 23000, urlExp: "https://adrianlealcaldera.com/We%20got%20a%20problem%20here%20-%20Boys%20in%20the%20Hood.mp4", urlClip: "https://adrianlealcaldera.com/BoyzntheHoodClip.mp4"),
            Clip(keyword: "Start some shit", timeStart: 55000, timeStop: 57000, urlExp: "https://adrianlealcaldera.com/Start%20some%20shit%20-%20Boys%20in%20the%20Hood.mp4", urlClip: "https://adrianlealcaldera.com/BoyzntheHoodClip.mp4"),
            Clip(keyword: "That’s why fool be getting shot all the time", timeStart: 61000, timeStop: 63000, urlExp: "https://adrianlealcaldera.com/Thats%20why%20fool%20be%20getting%20shot%20all%20the%20time%20-%20Boys%20in%20the%20Hood.mp4", urlClip: "https://adrianlealcaldera.com/BoyzntheHoodClip.mp4"),
            Clip(keyword: "Tryna show how hard they is", timeStart: 64000, timeStop: 66000, urlExp: "https://adrianlealcaldera.com/Tryna%20show%20how%20hard%20they%20is%20-%20Boys%20in%20the%20Hood.mp4", urlClip: "https://adrianlealcaldera.com/BoyzntheHoodClip.mp4"),
            Clip(keyword: "You be doing that shit, too", timeStart: 69000, timeStop: 72000, urlExp: "https://adrianlealcaldera.com/You%20be%20doing%20that%20shit,%20too%20-%20Boys%20in%20the%20Hood.mp4", urlClip: "https://adrianlealcaldera.com/BoyzntheHoodClip.mp4"),
            Clip(keyword: "I’m getting the fuck out of LA", timeStart: 102000, timeStop: 106000, urlExp: "https://adrianlealcaldera.com/Im%20getting%20the%20fuck%20out%20of%20LA%20-%20Boys%20in%20the%20Hood.mp4", urlClip: "https://adrianlealcaldera.com/BoyzntheHoodClip.mp4")
        ]),
        //Cultura y Fonética
        ClipsCategory(clips: [
            Clip(keyword: "Look man I don’t mean no disrespect or nothing G", timeStart: 150, timeStop: 2080, urlExp: "https://adrianlealcaldera.com/Look%20man%20I%20dont%20mean%20no%20disrespect%20or%20nothing%20G%20-%20Cultura%20y%20Fone%CC%81tica.mp4", urlClip: "https://adrianlealcaldera.com/CulturayFone%CC%81ticaClip.mp4"),
            Clip(keyword: "I’m just trying to see", timeStart: 2250, timeStop: 3000, urlExp: "https://adrianlealcaldera.com/Im%20just%20trying%20to%20see%20-%20Cultura%20y%20Fone%CC%81tica.mp4", urlClip: "https://adrianlealcaldera.com/CulturayFone%CC%81ticaClip.mp4"),
            Clip(keyword: "If can get a little bro", timeStart: 3050, timeStop: 3450, urlExp: "https://adrianlealcaldera.com/If%20can%20get%20a%20little%20bro%20-%20Cultura%20y%20Fone%CC%81tica.mp4", urlClip: "https://adrianlealcaldera.com/CulturayFone%CC%81ticaClip.mp4"),
            Clip(keyword: "You can’t get nothing man", timeStart: 4000, timeStop: 5000, urlExp: "https://adrianlealcaldera.com/You%20cant%20get%20nothing%20man%20-%20Cultura%20y%20Fone%CC%81tica.mp4", urlClip: "https://adrianlealcaldera.com/CulturayFone%CC%81ticaClip.mp4"),
            Clip(keyword: "You know what time it is", timeStart: 5000, timeStop: 6000, urlExp: "https://adrianlealcaldera.com/You%20know%20what%20time%20it%20is%20-%20Cultura%20y%20Fone%CC%81tica.mp4", urlClip: "https://adrianlealcaldera.com/CulturayFone%CC%81ticaClip.mp4"),
            Clip(keyword: "I keep looking out for you", timeStart: 6900, timeStop: 7500, urlExp: "https://adrianlealcaldera.com/I%20keep%20looking%20out%20for%20you%20-%20Cultura%20y%20Fone%CC%81tica.mp4", urlClip: "https://adrianlealcaldera.com/CulturayFone%CC%81ticaClip.mp4"),
            Clip(keyword: "Just a little something man", timeStart: 8000, timeStop: 8800, urlExp: "https://adrianlealcaldera.com/Just%20a%20little%20something%20man%20-%20Cultura%20y%20Fone%CC%81tica.mp4", urlClip: "https://adrianlealcaldera.com/CulturayFone%CC%81ticaClip.mp4"),
            Clip(keyword: "All my soothing cost a little something", timeStart: 9000, timeStop: 10800, urlExp: "https://adrianlealcaldera.com/All%20my%20soothing%20cost%20a%20little%20something%20-%20Cultura%20y%20Fone%CC%81tica.mp4", urlClip: "https://adrianlealcaldera.com/CulturayFone%CC%81ticaClip.mp4"),
            Clip(keyword: "If you ain’t got it get to stepping", timeStart: 11000, timeStop: 12070, urlExp: "https://adrianlealcaldera.com/If%20you%20aint%20got%20it%20get%20to%20stepping%20-%20Cultura%20y%20Fone%CC%81tica.mp4", urlClip: "https://adrianlealcaldera.com/CulturayFone%CC%81ticaClip.mp4"),
            Clip(keyword: "I am not fixing to repeat myself", timeStart: 13050, timeStop: 14000, urlExp: "https://adrianlealcaldera.com/I%20am%20not%20fixing%20to%20repeat%20myself-%20Cultura%20y%20Fone%CC%81tica.mp4", urlClip: "https://adrianlealcaldera.com/CulturayFone%CC%81ticaClip.mp4")
        ]),
        //Kings of the Hills Drugs
        ClipsCategory(clips: [
            Clip(keyword: "What do you want", timeStart: 10900, timeStop: 11200, urlExp: "https://adrianlealcaldera.com/What%20do%20you%20want%20-%20Kings%20of%20the%20Hills%20Drugs.mp4", urlClip: "https://adrianlealcaldera.com/kingofthehilldrugseditedClip.mp4"),
            Clip(keyword: "Are you looking to", timeStart: 15000, timeStop: 17000, urlExp: "https://adrianlealcaldera.com/Are%20you%20looking%20to%20-%20Kings%20of%20the%20Hills%20Drugs.mp4", urlClip: "https://adrianlealcaldera.com/kingofthehilldrugseditedClip.mp4"),
            Clip(keyword: "I have been thinking about", timeStart: 22000, timeStop: 24000, urlExp: "https://adrianlealcaldera.com/I%20have%20been%20thinking%20about%20-%20Kings%20of%20the%20Hills%20Drugs.mp4", urlClip: "https://adrianlealcaldera.com/kingofthehilldrugseditedClip.mp4"),
            Clip(keyword: "What do you need", timeStart: 24000, timeStop: 26000, urlExp: "https://adrianlealcaldera.com/What%20do%20you%20need%20-%20Kings%20of%20the%20Hills%20Drugs.mp4", urlClip: "https://adrianlealcaldera.com/kingofthehilldrugseditedClip.mp4")
            
        ])
    ]
}


