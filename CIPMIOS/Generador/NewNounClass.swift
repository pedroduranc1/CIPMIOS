import Foundation

class NewNounClass {
    // Phrasal Verbs in English
    let justEnglishPhrasalVerbs = [
        "break down", "bring up", "call off", "carry out", "come across",
        "come up with", "cut off", "do away with", "fall apart", "get along with",
        "get away with", "get over", "give in", "give up", "go after",
        "go ahead", "go off", "hold on", "keep on", "look after",
        "look for", "make up", "pick up", "put off", "put up with",
        "run into", "run out of", "set up", "take after", "take off",
        "take on", "take out", "take up", "turn down", "turn up",
        "turn on", "try on", "turn out", "wake up", "wear out",
        "work out", "work on", "bring about", "come out", "give back",
        "get around", "go through", "put on", "run away", "show off"
    ]
    
    // Phrasal Verbs in Spanish
    let justSpanishPhrasalVerbs = [
        "descomponer(se)", "mencionar", "cancelar", "llevar a cabo", "encontrarse con",
        "idear", "cortar", "eliminar", "desmoronarse", "llevarse bien con",
        "salirse con la suya", "superar", "ceder", "renunciar", "perseguir",
        "seguir adelante", "sonar (alarma)", "esperar", "seguir adelante", "cuidar de",
        "buscar", "inventar", "recoger", "posponer", "soportar",
        "encontrarse con", "quedarse sin", "establecer", "parecerse a", "despegar",
        "asumir", "sacar", "empezar a hacer", "rechazar", "aparecer",
        "encender", "probarse", "resultar", "despertar", "desgastar",
        "resolver", "trabajar en", "provocar", "salir", "devolver",
        "moverse", "pasar por", "ponerse", "huir", "presumir"
    ]
    
    // Nouns in English and Spanish
    let nouns = [
        "time ", "year ", "people ", "way ", "day ", "man ",
        "thing ", "woman ", "life ", "child ",
        "world ", "school ", "state ", "family ", "house ",
        "president ", "group ", "country ", "problem ", "student ",
        "hand ", "part ", "place ", "city ", "case ", "system ",
        "week ", "company ", "percent ", "question ",
        "program ", "work ", "number ", "government ", "night ",
        "point ", "war ", "home ", "room ", "fact ",
        "area ", "money ", "right ", "story ", "water ", "mother ",
        "month ", "lot ", "book ", "eye ",
        "study ", "job ", "kind ", "word ", "issue ", "side ",
        "business ", "head ", "service ", "friend ",
        "power ", "father ", "hour ", "line ", "end ", "game ",
        "member ", "law ", "car ", "name ",
        "center ", "university ", "information ", "community ",
        "idea ", "body ", "kid ", "minute ", "table ", "team ",
        "back ", "face ", "parent ", "office ", "level ", "person ",
        "door ", "street ", "history ", "party ",
        "reason ", "morning ", "change ", "news ", "health ",
        "court ", "force ", "air ", "art ", "result ",
        "moment ", "research ", "girl ", "boy ", "food ", "guy ",
        "process ", "policy ", "education ", "fee ",
        "sense ", "teacher ", "market ", "nation ", "death ",
        "plan ", "interest ", "experience ", "effect ", "use ",
        "control ", "class ", "photo ", "field ", "college ",
        "development ", "security ", "effort ", "role ", "rate ",
        "music ", "leader ", "light ", "voice ", "color ",
        "heart ", "care ", "police ", "wife ", "show ",
        "mind ", "report ", "drug ", "decision ", "view ",
        "son ", "arm ", "department ", "price "
    ]
    
    let nounsSpanish = [
        "el tiempo ", "el año ", "la gente ", "el camino ",
        "el día ", "el hombre ", "la cosa ", "la mujer ",
        "la vida ", "el niño ",
        "el mundo ", "la escuela ", "el estado ", "la familia ",
        "la casa ", "el presidente ", "el grupo ", "el país ",
        "el problema ", "el estudiante ",
        "la mano ", "la parte ", "el lugar ", "la ciudad ",
        "el caso ", "el sistema ", "la semana ", "la empresa ",
        "el porcentaje ", "la pregunta ",
        "el programa ", "el trabajo ", "el número ", "el gobierno ",
        "la noche ", "el punto ", "la guerra ", "el hogar ",
        "la habitación ", "el hecho ",
        "la zona ", "el dinero ", "el derecho ", "la historia ",
        "el agua ", "la madre ", "el mes ", "el lote ", "el libro ",
        "el ojo ",
        "el estudio ", "el trabajo ", "el tipo ", "la palabra ",
        "el tema ", "el lado ", "el negocio ", "la cabeza ",
        "el servicio ", "el amigo ",
        "el poder ", "el padre ", "la hora ", "la línea ",
        "el fin ", "el juego ", "el miembro ", "la ley ", "el coche ",
        "el nombre ",
        "el centro ", "la universidad ", "la información ",
        "la comunidad ", "la idea ", "el cuerpo ", "el niño ",
        "el minuto ", "la mesa ", "el equipo ",
        "la espalda ", "la cara ", "el padre ", "la oficina ",
        "el nivel ", "la persona ", "la puerta ",
        "la calle ", "la historia ", "la fiesta ",
        "la razón ", "la mañana ", "el cambio ",
        "las noticias ", "la salud ", "el tribunal ",
        "la fuerza ", "el aire ", "el arte ", "el resultado ",
        "el momento ", "la investigación ", "la niña ",
        "el niño ", "la comida ", "el tipo ",
        "el proceso ", "la política ", "la educación ", "la tasa ",
        "el sentido ", "el profesor ",
        "el mercado ", "la nación ", "la muerte ",
        "el plan ", "el interés ", "la experiencia ",
        "el efecto ", "el uso ",
        "el control ", "la clase ", "la foto ",
        "el campo ", "la universidad ", "el desarrollo ",
        "la seguridad ", "el esfuerzo ", "el papel ", "la tarifa ",
        "la música ", "el líder ", "la luz ",
        "la voz ", "el color ", "el corazón ",
        "el cuidado ", "la policía ", "la esposa ",
        "el espectáculo ",
        "la mente ", "el informe ", "la droga ",
        "la decisión ", "la vista ", "el hijo ",
        "el brazo ", "el departamento ", "el precio "
    ]
    
    let peopleNounsSpanish = [
        "la persona",
        "el individuo",
        "la madre",
        "el enfermero",
        "el grupo",
        "la familia",
        "el amigo",
        "el maestro",
        "el estudiante",
        "el doctor",
        "el ingeniero",
        "el científico",
        "el vecino",
        "el compañero",
        "el líder",
        "el empleado",
        "el jefe",
        "el policía",
        "el niño",
        "el adulto",
        "el anciano",
        "el equipo",
        "la multitud",
        "el público",
        "el cliente",
        "el usuario",
        "el miembro"
    ]
    
    let peopleNouns = [
        "the person",
        "the individual",
        "the parent",
        "the nurse",
        "the group",
        "the family",
        "the friend",
        "the teacher",
        "the student",
        "the doctor",
        "the engineer",
        "the scientist",
        "the neighbor",
        "the colleague",
        "the leader",
        "the employee",
        "the boss",
        "the police officer",
        "the child",
        "the adult",
        "the elder",
        "the team",
        "the crowd",
        "the audience",
        "the customer",
        "the user",
        "the member"
    ]
    
    let adjectivesEng = [
        "other ", "new ", "good ", "high ", "old ",
        "great ", "big ", "american ", "small ", "large ",
        "national ", "different ", "young ", "long ",
        "black ", "little ", "important ", "political ",
        "bad ", "real ",
        "white ", "best ", "right ", "only ", "public ",
        "social ", "sure ", "early ", "low ", "able ",
        "human ", "local ", "late ", "major ", "possible ",
        "better ", "strong ", "whole ", "economic ", "free ",
        "true ", "military ", "federal "
    ]
    
    let adjectivesSpanishMasculine = [
        "otro ", "nuevo ", "bueno ", "alto ", "viejo ",
        "grande ", "grande ", "americano ", "pequeño ", "grande ",
        "nacional ", "diferente ", "joven ", "largo ",
        "negro ", "pequeño ", "importante ", "político ",
        "malo ", "real ",
        "blanco ", "mejor ", "correcto ", "solo ", "público ",
        "social ", "seguro ", "temprano ", "bajo ", "capaz ",
        "humano ", "local ", "tarde ", "mayor ", "posible ",
        "mejor ", "fuerte ", "entero ", "económico ", "libre ",
        "verdadero ", "militar ", "federal "
    ]
    
    let phrasesMost = [
        "expensive ",
        "beautiful ",
        "challenging ",
        "rewarding ",
        "popular ",
        "influential ",
        "powerful ",
        "innovative ",
        "successful ",
        "dangerous ",
        "mysterious ",
        "exciting ",
        "significant ",
        "memorable ",
        "breathtaking ",
        "advanced ",
        "efficient ",
        "impressive ",
        "important ",
        "beloved "
    ]
    
    let phrasesMostSpanish = [
        "caro ",
        "hermoso ",
        "desafiante ",
        "gratificante ",
        "popular ",
        "influyente ",
        "poderoso ",
        "innovador ",
        "exitoso ",
        "peligroso ",
        "misterioso ",
        "emocionante ",
        "significativo ",
        "memorable ",
        "impresionante ",
        "avanzado ",
        "eficiente ",
        "impresionante ",
        "importante ",
        "amado "
    ]
    
    let prepositionsEng = [
        "of ", "in ", "to ", "for ", "with ", "on ",
        "from ", "by ", "about ","as ",
        "into ", "like ", "through ", "after ", "over ",
        "between ", "out of ", "against ",
        "without ", "before ", "under ", "around ",
        "within ",
        "toward ", "off ", "including ", "behind ",
        "along ", "according to "
    ]
    
    let preposicionesEsp = [
        "de ", "en ", "a ", "para ", "con ", "sobre ","de ",
        "por ", "acerca de ",
        "como ",
        "hacia adentro de ", "parecido a ", "a través de ", "después de ",
        "sobre ", "entre ", "fuera de ", "contra ",
        "sin ", "antes de ", "bajo de ", "alrededor de ",
        "dentro de ",
        "hacia ", "separado de ", "incluyendo a ", "detrás de ",
        "a lo largo de ",  "de acuerdo a "
    ]
    
    let comparativeAdjectivesWithThan = [
        "bigger than",
        "more beautiful than",
        "smaller than",
        "faster than",
        "higher than",
        "more intelligent than",
        "shorter than",
        "slower than",
        "more expensive than",
        "closer than",
        "further than",
        "older than",
        "younger than",
        "brighter than",
        "darker than",
        "more complicated than",
        "simpler than",
        "warmer than",
        "colder than",
        "more interesting than"
    ]
    
    let spanishComparativeAdjectives = [
        "más grande que",
        "más hermoso que",
        "más pequeño que",
        "más rápido que",
        "más alto que",
        "más inteligente que",
        "más corto que",
        "más lento que",
        "más caro que",
        "más cerca que",
        "más lejos que",
        "más viejo que",
        "más joven que",
        "más brillante que",
        "más oscuro que",
        "más complicado que",
        "más simple que",
        "más cálido que",
        "más frío que",
        "más interesante que"
    ]
    
    let comparativosPersona = [
        "nicer than ",
        "bigger than ",
        "smarter than ",
        "faster than ",
        "stronger than ",
        "taller than ",
        "shorter than ",
        "younger than ",
        "older than ",
        "lighter than ",
        "heavier than ",
        "thinner than ",
        "wider than ",
        "better than ",
        "worse than ",
        "richer than ",
        "poorer than ",
        "louder than ",
        "quieter than ",
        "softer than ",
        "more beautiful than ",
        "more handsome than ",
        "more sophisticated than ",
        "more intelligent than ",
        "more creative than ",
        "more ambitious than ",
        "more energetic than ",
        "more enthusiastic than ",
        "more reliable than ",
        "more responsible than "
    ]
    
    let comparativeAdjectivesSpanish = [
        "más simpático que ",
        "más grande que ",
        "más inteligente que ",
        "más rápido que ",
        "más fuerte que ",
        "más alto que ",
        "más bajo que ",
        "más joven que ",
        "más viejo que ",
        "más ligero que ",
        "más pesado que ",
        "más delgado que ",
        "más ancho que ",
        "mejor que ",
        "peor que ",
        "más rico que ",
        "más pobre que ",
        "más ruidoso que ",
        "más silencioso que ",
        "más suave que ",
        "más hermoso que ",
        "más guapo que ",
        "más sofisticado que ",
        "más inteligente que ",
        "más creativo que ",
        "más ambicioso que ",
        "más energético que ",
        "más entusiasta que ",
        "más confiable que ",
        "más responsable que "
    ]
    
    let pronounsComparativos = ["I am ", "you are ", "he is "]
    let pronounsObjetoComp = ["her ", "them ","us "]
    let pronombresComparativos = ["yo soy ", "tú eres ", "él es "]
    let pronombresObjetoComparativos = ["ella ", "ellos ", "nosotros "]
    
    let extendedNounAdjuncts = [
        "race horse",
        "book shelf",
        "coffee shop",
        "computer science",
        "customer service",
        "garden hose",
        "school teacher",
        "river bank",
        "mountain range",
        "parking lot",
        "street light",
        "water bottle",
        "kitchen table",
        "bathroom sink",
        "bedroom window",
        "office chair",
        "sunflower seed",
        "tree branch",
        "company logo",
        "door handle",
        "train station",
        "bike lane",
        "beach towel",
        "park bench",
        "hotel room",
        "pizza box",
        "music festival",
        "sports car",
        "ice cream",
        "school bus",
        "cell phone",
        "movie theater",
        "airport security",
        "gas station",
        "flower pot",
        "dog house",
        "fishing rod",
        "paint brush",
        "science fiction",
        "laundry detergent",
        "winter coat",
        "camera lens",
        "gold medal",
        "safety glasses",
        "action figure",
        "credit card",
        "tool box",
        "wine glass",
        "night sky",
        "alarm clock"
    ]
    
    let extendedNounAdjunctsSpanish = [
        "caballo de carreras",
        "estantería para libros",
        "cafetería",
        "ciencias de la computación",
        "servicio al cliente",
        "manguera",
        "profesor de escuela",
        "orilla del río",
        "cadena montañosa",
        "estacionamiento",
        "luz de calle",
        "botella de agua",
        "mesa de cocina",
        "lavabo del baño",
        "ventana del dormitorio",
        "silla de oficina",
        "semilla de girasol",
        "rama de árbol",
        "logo de la empresa",
        "manija de la puerta",
        "estación de tren",
        "carril de bici",
        "toalla de playa",
        "banco del parque",
        "habitación de hotel",
        "caja de pizza",
        "festival de música",
        "coche deportivo",
        "helado",
        "autobús escolar",
        "teléfono celular",
        "cine",
        "seguridad del aeropuerto",
        "estación de gasolina",
        "maceta",
        "casa para perros",
        "caña de pescar",
        "pincel",
        "ciencia ficción",
        "detergente para la ropa",
        "abrigo de invierno",
        "lente de cámara",
        "medalla de oro",
        "gafas de seguridad",
        "figura de acción",
        "tarjeta de crédito",
        "caja de herramientas",
        "copa de vino",
        "cielo nocturno",
        "reloj despertador"
    ]
    
    var gens = ""
    var gene = ""
    var gene2 = ""
    
    var currentIndex = 0
    let verbsObject = NewVerbClass()
    
    func adjAdv(adverbEng: String, adverbioEsp: String) {
        let v = Int.random(in: 0..<adjectivesEng.count)
        let adjective = adjectivesEng[v]
        let adjetivo = adjectivesSpanishMasculine[v]
        gens = adverbioEsp + adjetivo
        gene = adverbEng + adjective
    }
    
    func adjAdv2(adverbEng: String, adverbioEsp: String) {
        let v = Int.random(in: 0..<phrasesMost.count)
        let adjective = phrasesMost[v]
        let adjetivo = phrasesMostSpanish[v]
        gens = adverbioEsp + adjetivo
        gene = adverbEng + adjective
    }
    
    func genPreps(prep: String) {
        let n = Int.random(in: 0..<nouns.count)
        let n2 = Int.random(in: 0..<nouns.count)
        let noun = nouns[n]
        let sust = nounsSpanish[n]
        
        switch prep {
        case "of":
            gens = "de " + sust
            gene = "of the " + noun
        case "in":
            gens = "en " + sust
            gene = "in the " + noun
        case "to":
            gens = "a " + sust
            gene = "to the " + noun
        case "for":
            gens = "para " + sust
            gene = "for the " + noun
        case "with":
            gens = "con " + sust
            gene = "with the " + noun
        case "on":
            gens = "en " + sust
            gene = "on the " + noun
        case "at":
            gens = "en " + sust
            gene = "at the " + noun
        case "from":
            gens = "desde " + sust
            gene = "from the " + noun
        case "by":
            gens = "por " + sust
            gene = "by the " + noun
        case "about":
            gens = "acerca de " + sust
            gene = "about the " + noun
        case "as":
            gens = "como " + sust
            gene = "as " + noun
        case "into":
            gens = "hacia adentro de " + sust
            gene = "into the " + noun
        case "like":
            gens = "como " + sust
            gene = "like the " + noun
        case "through":
            gens = "a través de " + sust
            gene = "through the " + noun
        case "after":
            gens = "después de " + sust
            gene = "after the " + noun
        case "over":
            gens = "sobre " + sust
            gene = "over the " + noun
        case "between":
            gens = "entre " + sust + " y " + nounsSpanish[n2]
            gene = "between the " + noun + " and the " + nouns[n2]
        case "out":
            gens = "fuera de " + sust
            gene = "out of the " + noun
        case "against":
            gens = "contra " + sust
            gene = "against the " + noun
        case "during":
            gens = "durante " + sust
            gene = "during the " + noun
        case "without":
            gens = "sin " + sust
            gene = "without the " + noun
        case "before":
            gens = "antes de " + sust
            gene = "before the " + noun
        case "under":
            gens = "bajo " + sust
            gene = "under the " + noun
        case "around":
            gens = "alrededor de " + sust
            gene = "around the " + noun
        case "among":
            gens = "entre " + sust
            gene = "among the " + noun
        case "such":
            let modifiedItem = sust.replacingOccurrences(of: "^(el |la )", with: "", options: .regularExpression)
            gens = "tal " + modifiedItem
            gene = "such a " + noun
        case "within":
            gens = "dentro de " + sust
            gene = "within the " + noun
        case "across":
            gens = "a través de " + sust
            gene = "across the " + noun
        case "toward":
            gens = "hacia " + sust
            gene = "toward the " + noun
        case "off":
            gens = "separado de " + sust
            gene = "off the " + noun
        case "including":
            gens = "incluyendo " + sust
            gene = "including the " + noun
        case "behind":
            gens = "detrás de " + sust
            gene = "behind the " + noun
        case "along":
            gens = "a lo largo de " + sust
            gene = "along the " + noun
        case "up":
            gens = "arriba de " + sust
            gene = "up the " + noun
        case "according to":
            gens = "según " + sust
            gene = "according to the " + noun
        default:
            break
        }
    }
    
    func genPreps() {
        let n = Int.random(in: 0..<nouns.count)
        let n2 = Int.random(in: 0..<nouns.count)
        let noun = nouns[n]
        let sust = nounsSpanish[n]
        
        switch currentIndex {
        case 0:
            gens = "de " + sust
            gene = "of the " + noun
        case 1:
            gens = "en " + sust
            gene = "in the " + noun
        case 2:
            gens = "a " + sust
            gene = "to the " + noun
        case 3:
            gens = "para " + sust
            gene = "for the " + noun
        case 4:
            gens = "con " + sust
            gene = "with the " + noun
        case 5:
            gens = "en " + sust
            gene = "on the " + noun
        case 6:
            gens = "en " + sust
            gene = "at the " + noun
        case 7:
            gens = "proveniente de " + sust
            gene = "from the " + noun
        case 8:
            gens = "por " + sust
            gene = "by the " + noun
        case 9:
            gens = "acerca de " + sust
            gene = "about the " + noun
        case 10:
            gens = "como " + sust
            gene = "as " + noun
        case 11:
            gens = "hacia adentro de " + sust
            gene = "into the " + noun
        case 12:
            gens = "como " + sust
            gene = "like the " + noun
        case 13:
            gens = "a través de " + sust
            gene = "through the " + noun
        case 14:
            gens = "después de " + sust
            gene = "after the " + noun
        case 15:
            gens = "sobre " + sust
            gene = "over the " + noun
        case 16:
            gens = "entre " + sust + " y " + nounsSpanish[n2]
            gene = "between the " + noun + " and the " + nouns[n2]
        case 17:
            gens = "fuera de " + sust
            gene = "out of the " + noun
        case 18:
            gens = "contra " + sust
            gene = "against the " + noun
        case 19:
            gens = "durante " + sust
            gene = "during the " + noun
        case 20:
            gens = "sin " + sust
            gene = "without the " + noun
        case 21:
            gens = "antes de " + sust
            gene = "before the " + noun
        case 22:
            gens = "bajo " + sust
            gene = "under the " + noun
        case 23:
            gens = "alrededor de " + sust
            gene = "around the " + noun
        case 24:
            gens = "entre " + sust
            gene = "among the " + noun
        case 25:
            let modifiedItem = sust.replacingOccurrences(of: "^(el |la )", with: "", options: .regularExpression)
            gens = "tal " + modifiedItem
            gene = "such a " + noun
        case 26:
            gens = "dentro de " + sust
            gene = "within the " + noun
        case 27:
            gens = "a través de " + sust
            gene = "across the " + noun
        case 28:
            gens = "hacia " + sust
            gene = "toward the " + noun
        case 29:
            gens = "separado de " + sust
            gene = "off the " + noun
        case 30:
            gens = "incluyendo " + sust
            gene = "including the " + noun
        case 31:
            gens = "detrás de " + sust
            gene = "behind the " + noun
        case 32:
            gens = "a lo largo de " + sust
            gene = "along the " + noun
        case 33:
            gens = "arriba de " + sust
            gene = "up the " + noun
        case 34:
            gens = "según " + sust
            gene = "according to the " + noun
        default:
            break
        }
        currentIndex += 1
        if currentIndex == 35 {
            currentIndex = 0
        }
    }
    
    func GenIntPorPrep() {
        let n = Int.random(in: 0..<nouns.count)
        let n2 = Int.random(in: 0..<nouns.count)
        let noun = nouns[n]
        let sust = nounsSpanish[n]
        verbsObject.GenIntPorSujeto()
        
        switch currentIndex {
        case 0:
            gens = "en " + sust + verbsObject.gens
            gene = verbsObject.gene + " in the " + noun
            gene2 = verbsObject.gene2 + " in the " + noun
        case 1:
            gens = "para " + sust + verbsObject.gens
            gene = verbsObject.gene + " for the " + noun
            gene2 = verbsObject.gene2 + " for the " + noun
        case 2:
            gens = "con " + sust + verbsObject.gens
            gene = verbsObject.gene + " with the " + noun
            gene2 = verbsObject.gene2 + " with the " + noun
        case 3:
            gens = "sobre " + sust + verbsObject.gens
            gene = verbsObject.gene + " on the " + noun
            gene2 = verbsObject.gene2 + " on the " + noun
        case 4:
            gens = "cerca de " + sust + verbsObject.gens
            gene = verbsObject.gene + " by the " + noun
            gene2 = verbsObject.gene2 + " by the " + noun
        case 5:
            gens = "como " + sust + verbsObject.gens
            gene = verbsObject.gene + " like the " + noun
            gene2 = verbsObject.gene2 + " like the " + noun
        case 6:
            gens = "a través de " + sust + verbsObject.gens
            gene = verbsObject.gene + " through the " + noun
            gene2 = verbsObject.gene2 + " through the " + noun
        case 7:
            gens = "entre " + sust + " y " + nounsSpanish[n2] + verbsObject.gens
            gene = verbsObject.gene + " between the " + noun + " and the " + nouns[n2]
            gene2 = verbsObject.gene2 + " between the " + noun + " and the " + nouns[n2]
        case 8:
            gens = "fuera de " + sust + verbsObject.gens
            gene = verbsObject.gene + " out of the " + noun
            gene2 = verbsObject.gene2 + " out of the " + noun
        case 9:
            gens = "sin " + sust + verbsObject.gens
            gene = verbsObject.gene + " without the " + noun
            gene2 = verbsObject.gene2 + " without the " + noun
        case 10:
            gens = "alrededor de " + sust + verbsObject.gens
            gene = verbsObject.gene + " around the " + noun
            gene2 = verbsObject.gene2 + " around the " + noun
        case 11:
            gens = "detrás de " + sust + verbsObject.gens
            gene = verbsObject.gene + " behind the " + noun
            gene2 = verbsObject.gene2 + " behind the " + noun
        default:
            break
        }
        currentIndex += 1
        if currentIndex == 12 {
            currentIndex = 0
        }
    }
    
    func genPronoun(pronounParm: String) {
        let prep = Int.random(in: 0..<prepositionsEng.count)
        let engPrep = prepositionsEng[prep]
        let spPrep = preposicionesEsp[prep]
        
        switch pronounParm {
        case "them ":
            gens = spPrep + "ellos "
            gene = engPrep + pronounParm
        case "me ":
            gens = spPrep + "mi "
            gene = engPrep + pronounParm
        case "him ":
            gens = spPrep + "él "
            gene = engPrep + pronounParm
        case "one ":
            gens = spPrep + "uno "
            gene = engPrep + pronounParm
        case "her ":
            gens = spPrep + "ella "
            gene = engPrep + pronounParm
        case "us ":
            gens = spPrep + "nosotros "
            gene = engPrep + pronounParm
        case "something ":
            gens = spPrep + "algo "
            gene = engPrep + pronounParm
        case "nothing ":
            gens = spPrep + "nada "
            gene = engPrep + pronounParm
        case "anything ":
            gens = spPrep + "cualquier cosa "
            gene = engPrep + pronounParm
        case "himself ":
            gens = spPrep + "él mismo "
            gene = engPrep + pronounParm
        case "everything ":
            gens = spPrep + "todo "
            gene = engPrep + pronounParm
        case "someone ":
            gens = spPrep + "alguien "
            gene = engPrep + pronounParm
        case "themselves ":
            gens = spPrep + "ellos mismos "
            gene = engPrep + pronounParm
        default:
            gens = "error"
            gene = "error"
        }
    }
    
    func nounGen(engNoun: String, spNoun: String) {
        verbsObject.genVerbAndObject(object: engNoun, objeto: spNoun)
        gene = verbsObject.gene
        gens = verbsObject.gens
    }
    
    func adjectiveGen(adjParamEng: String, adjParamSpM: String, adjParamSpF: String) {
        let n = Int.random(in: 0..<nouns.count)
        let parts = nounsSpanish[n].split(separator: " ", maxSplits: 1, omittingEmptySubsequences: true)
        let article = parts[0]
        let noun = parts[1]
        
        if article == "la" {
            gens = article + " " + adjParamSpF + noun
        } else {
            gens = article + " " + adjParamSpM + noun
        }
        gene = "The " + adjParamEng + nouns[n]
    }
    
    func adjectiveGen2(adjParamEng: String, adjParamSpM: String, adjParamSpF: String) {
        let n = Int.random(in: 0..<nouns.count)
        let parts = nounsSpanish[n].split(separator: " ", maxSplits: 1, omittingEmptySubsequences: true)
        let article = parts[0]
        let noun = parts[1]
        
        if article == "la" {
            gens = article + " " + noun + adjParamSpF
        } else {
            gens = article + " " + noun + adjParamSpM
        }
        gene = "The " + adjParamEng + nouns[n]
    }
    
//    func generateQuestion(verbPos: Int, verPos2: Int) -> String {
//        let auxiliaryVerb = auxiliaryVerbs.randomElement()!
//        let subjectPronoun = choosePronoun(auxiliary: auxiliaryVerb)
//        let verbForm = chooseVerbForm(auxiliary: auxiliaryVerb, verbIndex: verbPos)
//        let questionWord = chooseQuestionWord(verbForm: verbForm)
//        let objectOfVerb = chooseVerbObject(verbPosition: verbPos, verPos2: verPos2)
//        
//        if auxiliaryVerb == "1was" {
//            auxiliaryVerb = "was"
//        }
//        return "\(questionWord) \(auxiliaryVerb) \(subjectPronoun) \(verbForm.trimmingCharacters(in: .whitespaces)) \(objectOfVerb)"
//    }
    
    private func chooseVerbObject(verbPosition: Int, verPos2: Int) -> String {
        return verbsObject.verbObjects[verbPosition][verPos2]
    }
    
//    private func choosePronoun(auxiliary: String) -> String {
//        if auxiliary == "does" || auxiliary == "is" || auxiliary == "was" || auxiliary == "has" {
//            return thirdPersonPronouns.randomElement()!
//        } else if auxiliary == "am" || auxiliary == "1was" {
//            return "I"
//        } else if auxiliary == "are" || auxiliary == "were" {
//            return otherPronouns.randomElement()!
//        } else {
//            return otherOtherPronouns.randomElement()!
//        }
//    }
    
    private func chooseVerbForm(auxiliary: String, verbIndex: Int) -> String {
        switch auxiliary {
        case "do", "does", "should", "could", "can", "must":
            return verbsObject.verbs[verbIndex]
        case "have", "has", "had":
            return verbsObject.verbsParticiple[verbIndex]
        case "is", "are", "was", "were", "1was", "am":
            return verbsObject.verbsIng[verbIndex]
        default:
            return verbsObject.verbs[verbIndex]
        }
    }
    
//    private func chooseQuestionWord(verbForm: String) -> String {
//        if verbForm.hasPrefix("T") {
//            return questionWordsTransitive.randomElement()!
//        } else {
//            return questionWordsIntransitive.randomElement()!
//        }
//    }
    
    func genSpanishQuestion(engQuestion: String, verbPos: Int, v2: Int) -> String {
        let questionParts = engQuestion.split(separator: " ")
        let palabraDePregunta = genSpanishQuestionWord(engQuestionWord: String(questionParts[0]))
        let questionSubject = genSpanishPronoun(engPronoun: String(questionParts[2]))
        let questionAux = String(questionParts[1])
        let completeQuestion = completeQuestion(palabraDePregunta: palabraDePregunta, spPronoun: questionSubject, engAux: questionAux, objectOfVerb: chooseVerbObjectSpanish(verbPosition: verbPos, verPos2: v2), verbPos: verbPos)
        return completeQuestion
    }
    
    func genSpanishQuestionWord(engQuestionWord: String) -> String {
        switch engQuestionWord {
        case "What":
            return "Qué"
        case "When":
            return "Cuándo"
        case "Where":
            return "Dónde"
        case "Why":
            return "Por qué"
        case "Who":
            return "Quién"
        case "How":
            return "Cómo"
        case "How much":
            return "Cuánto"
        case "How many":
            return "Cuántos"
        default:
            return "Unknown"
        }
    }
    
    func genSpanishPronoun(engPronoun: String) -> String {
        switch engPronoun {
        case "I":
            return "yo"
        case "you":
            return "tú"
        case "he":
            return "él"
        case "she":
            return "ella"
        case "it":
            return "eso"
        case "we":
            return "nosotros"
        case "they":
            return "ellos"
        default:
            return "unknown"
        }
    }
    
    func completeQuestion(palabraDePregunta: String, spPronoun: String, engAux: String, objectOfVerb: String, verbPos: Int) -> String {
        var aux = ""
        var verb = ""
        
        switch spPronoun {
        case "yo":
            switch engAux {
            case "do":
                verb = verbsObject.verbsSpanishFirstPerson[verbPos]
            case "did":
                verb = verbsObject.verbsSpanishFirstPersonPast[verbPos]
            case "will":
                verb = verbsObject.verbsSpanishFirstPersonFuture[verbPos]
            case "would":
                verb = verbsObject.verbsSpanishHypothetical[verbPos]
            case "could":
                aux = "podría"
                verb = verbsObject.verbsSpanish[verbPos]
            case "should":
                aux = "debería"
                verb = verbsObject.verbsSpanish[verbPos]
            case "can":
                aux = "puedo"
                verb = verbsObject.verbsSpanish[verbPos]
            case "must":
                aux = "debo"
                verb = verbsObject.verbsSpanish[verbPos]
            case "have":
                aux = "he "
                verb = verbsObject.verbsParticipleSpanish[verbPos]
            case "has":
                verb = verbsObject.verbsParticipleSpanish[verbPos]
            case "had":
                aux = "había"
                verb = verbsObject.verbsParticipleSpanish[verbPos]
            case "am":
                aux = "estoy"
                verb = verbsObject.verbosConGerundio[verbPos]
            case "is":
                aux = "está"
                verb = verbsObject.verbosConGerundio[verbPos]
            case "was":
                aux = "estaba"
                verb = verbsObject.verbosConGerundio[verbPos]
            default:
                break
            }
        case "tú":
            switch engAux {
            case "do":
                verb = verbsObject.verbsSpanishSecondPerson[verbPos]
            case "did":
                verb = verbsObject.verbsSpanishSecondPersonSingularPast[verbPos]
            case "will":
                verb = verbsObject.verbsSpanishSecondPersonFuture[verbPos]
            case "would":
                verb = verbsObject.verbsSpanishHypotheticalSecondPerson[verbPos]
            case "could":
                aux = "podrías"
                verb = verbsObject.verbsSpanish[verbPos]
            case "should":
                aux = "deberías"
                verb = verbsObject.verbsSpanish[verbPos]
            case "can":
                aux = "puedes"
                verb = verbsObject.verbsSpanish[verbPos]
            case "must":
                aux = "debes"
                verb = verbsObject.verbsSpanish[verbPos]
            case "have":
                aux = "has"
                verb = verbsObject.verbsParticipleSpanish[verbPos]
            case "has":
                verb = verbsObject.verbsParticipleSpanish[verbPos]
            case "had":
                aux = "habías"
                verb = verbsObject.verbsParticipleSpanish[verbPos]
            case "is":
                verb = verbsObject.verbosConGerundio[verbPos]
            case "are":
                aux = "estás"
                verb = verbsObject.verbosConGerundio[verbPos]
            case "was":
                aux = "estabas"
                verb = verbsObject.verbosConGerundio[verbPos]
            default:
                break
            }
        case "él", "ella", "eso":
            switch engAux {
            case "did":
                verb = verbsObject.verbsSpanishThirdPersonSingularPast[verbPos]
            case "will":
                verb = verbsObject.verbsSpanishThirdPersonFuture[verbPos]
            case "would":
                verb = verbsObject.verbsSpanishHypothetical[verbPos]
            case "could":
                aux = "podría"
                verb = verbsObject.verbsSpanish[verbPos]
            case "should":
                aux = "debería"
                verb = verbsObject.verbsSpanish[verbPos]
            case "can":
                aux = "puede"
                verb = verbsObject.verbsSpanish[verbPos]
            case "must":
                aux = "debe"
                verb = verbsObject.verbsSpanish[verbPos]
            case "has":
                aux = "ha"
                verb = verbsObject.verbsParticipleSpanish[verbPos]
            case "had":
                aux = "había"
                verb = verbsObject.verbsParticipleSpanish[verbPos]
            case "is":
                aux = "está"
                verb = verbsObject.verbosConGerundio[verbPos]
            case "was":
                aux = "estaba"
                verb = verbsObject.verbosConGerundio[verbPos]
            default:
                break
            }
        case "nosotros":
            switch engAux {
            case "do":
                verb = verbsObject.verbsSpanishFirstPersonPlural[verbPos]
            case "did":
                verb = verbsObject.verbsSpanishFirstPersonPluralPast[verbPos]
            case "will":
                verb = verbsObject.verbsSpanishFirstPersonPluralFuture[verbPos]
            case "would":
                verb = verbsObject.verbsSpanishHypotheticalFirstPlural[verbPos]
            case "could":
                aux = "podríamos"
                verb = verbsObject.verbsSpanish[verbPos]
            case "should":
                aux = "deberíamos"
                verb = verbsObject.verbsSpanish[verbPos]
            case "can":
                aux = "podemos"
                verb = verbsObject.verbsSpanish[verbPos]
            case "must":
                aux = "debemos"
                verb = verbsObject.verbsSpanish[verbPos]
            case "have":
                aux = "hemos"
                verb = verbsObject.verbsParticipleSpanish[verbPos]
            case "had":
                aux = "habíamos"
                verb = verbsObject.verbsParticipleSpanish[verbPos]
            case "are":
                aux = "estamos"
                verb = verbsObject.verbosConGerundio[verbPos]
            case "were":
                aux = "estábamos"
                verb = verbsObject.verbosConGerundio[verbPos]
            default:
                break
            }
        case "ellos":
            switch engAux {
            case "do":
                verb = verbsObject.verbsSpanishThirdPersonPlural[verbPos]
            case "did":
                verb = verbsObject.verbsSpanishThirdPersonPluralPast[verbPos]
            case "will":
                verb = verbsObject.verbsSpanishThirdPersonPluralFuture[verbPos]
            case "would":
                verb = verbsObject.verbsSpanishHypotheticalThirdPlural[verbPos]
            case "could":
                aux = "podrían"
                verb = verbsObject.verbsSpanish[verbPos]
            case "should":
                aux = "deberían"
                verb = verbsObject.verbsSpanish[verbPos]
            case "can":
                aux = "pueden"
                verb = verbsObject.verbsSpanish[verbPos]
            case "must":
                aux = "deben"
                verb = verbsObject.verbsSpanish[verbPos]
            case "have":
                aux = "han"
                verb = verbsObject.verbsParticipleSpanish[verbPos]
            case "had":
                aux = "habían"
                verb = verbsObject.verbsParticipleSpanish[verbPos]
            case "are":
                aux = "están"
                verb = verbsObject.verbosConGerundio[verbPos]
            case "were":
                aux = "estaban"
                verb = verbsObject.verbosConGerundio[verbPos]
            default:
                break
            }
        default:
            break
        }
        
        return "\(palabraDePregunta) \(aux) \(verb)\(objectOfVerb) \(spPronoun)?"
    }
    
    private func chooseVerbObjectSpanish(verbPosition: Int, verPos2: Int) -> String {
        return verbsObject.verbObjectsSpanish[verbPosition][verPos2]
    }
    
    func GenRelativeClauses() {
        let sus = Int.random(in: 0..<nounsSpanish.count)
        let v = Int.random(in: 0..<verbsObject.verbosConGerundio.count)
        let v2 = Int.random(in: 0..<verbsObject.verbosConGerundio.count)
        let o = Int.random(in: 0..<verbsObject.verbObjects[v].count)
        let o2 = Int.random(in: 0..<verbsObject.verbObjects[v2].count)
        let sust = nounsSpanish[sus] + " que está "
        let noun = "The " + nouns[sus] + " that is "
        
        gens = sust + verbsObject.verbosConGerundio[v] + verbsObject.verbObjectsSpanish[v][o].trimmingCharacters(in: .whitespaces) + ", " + verbsObject.verbsSpanishThirdPerson[v2] + verbsObject.verbObjectsSpanish[v2][o2]
        gene = noun + verbsObject.verbsIng[v] + verbsObject.verbObjects[v][o] + verbsObject.verbsThirdPerson[v2] + verbsObject.verbObjects[v2][o2]
    }
    
//    func GenWish(wishType: Int) {
//        switch wishType {
//        case 0:
//            verbsObject.GenPastSimp()
//            gens = "ojalá " + verbsObject.gens2
//            gene = "I wish " + verbsObject.gene
//            gene2 = "I wish " + AuxModalNegator.negatePastSimple(sentence: verbsObject.gene2)
//        case 1:
//            verbsObject.GenWould()
//            gens = "ojalá " + verbsObject.gens2
//            gene = "I wish " + verbsObject.gene
//            gene2 = "I wish " + AuxModalNegator.negateFirstAuxOrModalContracted(sentence: verbsObject.gene)
//        case 2:
//            verbsObject.GenPerfectTenses(had: "had ", hubiera: "hubiera ", hubieras: "hubieras ", hubieramos: "hubiéramos ", hubieran: "hubieran ")
//            gens = "ojalá " + verbsObject.gens
//            gene = "I wish " + verbsObject.gene
//            gene2 = "I wish " + AuxModalNegator.negateFirstAuxOrModalContracted(sentence: verbsObject.gene)
//        default:
//            gens = "no such number"
//        }
//    }
    
    func GenJustPhrasalVerbs() {
        let pv = Int.random(in: 0..<justEnglishPhrasalVerbs.count)
        gens = justSpanishPhrasalVerbs[pv]
        gene = justEnglishPhrasalVerbs[pv]
    }
}
