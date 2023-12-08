import Foundation
class Arrays{
    
    let structuresP = [
        "Tutorial",
        "Present Simple",
        "Present Continuous",
        "Present Perfect",
        "Present Perfect Continuous",
        
        "Past Simple",
        "Past Continuous",
        "Past Perfect",
        "Past Perfect Continuous",
        
        "Future Simple",
        "Future Continuous",
        "Future Perfect",
        "Future Perfect Continuous",
        
        "Would Simple",
        "Would Continuous",
        "Would Perfect",
        "Would Perfect Continuous",
        
        "Could Simple",
        "Could Continuous",
        "Could Perfect",
        "Could Perfect Continuous",
        
        
        "Might Simple",
        "Might Continuous",
        "Might Perfect",
        "Might Perfect Continuous",
        
        "Should Simple",
        "Should Continuous",
        "Should Perfect",
        "Should Perfect Continuos",
        
        "Can Simple",
        "Can Continuous",
        "Must Simple",
        "Must Continuous",
        
        "What Simple",
        "What Continuous",
        "What Perfect",
        "What Modals Simple",
        "What Modals Continuous",
        "What Modals Perfect",
        "When Simple",
        "When Continuous",
        "When Perfect",
        "When Modals Simple",
        "When Modals Continuous",
        "When Modals Perfect",
        "Where Simple",
        "Where Continuous",
        "Where Perfect",
        "Where Modals Simple",
        "Where Modals Continuous",
        "Where Modals Perfect",
        "Why Simple",
        "Why Continuous",
        "Why Perfect",
        "Why Modals Simple",
        "Why Modals Continuous",
        "Why Modals Perfect",
        "How Simple",
        "How Continuous",
        "How Perfect",
        "How Modals Simple",
        "How Modals Continuous",
        "How Modals Perfect",
        
        
        "Able To",
        
        "Reported Speech",
        "Incremento Paralelo",
        "Verbal Adjectives",
        "Relative Clause",
        "Want To",
        "For To",
        "Supposed To Present",
        "Wish Past Perfect",
        "Used To",
        "Be Used To",
        "feel like"
        //interferencias y con conetor?
    ]
    let videoURLs = [
        "https://adrianlealcaldera.com/structurastut.mp4",
        
        "https://adrianlealcaldera.com/presentesimple.mp4",
        "https://adrianlealcaldera.com/presentecontinuo.mp4",
        "https://adrianlealcaldera.com/presenteperfecto.mp4",
        "https://adrianlealcaldera.com/presenteperfectoconti.mp4",
        
        "https://adrianlealcaldera.com/pasadosimple.mp4",
        "https://adrianlealcaldera.com/pasadocont.mp4",
        "https://adrianlealcaldera.com/pasadoperf.mp4",
        "https://adrianlealcaldera.com/pasadoperfcon.mp4",
        
        "https://adrianlealcaldera.com/futurosimp1.mp4",
        "https://adrianlealcaldera.com/futuroconti.mp4",
        "https://adrianlealcaldera.com/futuroperf.mp4",
        "https://adrianlealcaldera.com/futuroperfcon.mp4",
        
        "https://adrianlealcaldera.com/wouldsimp.mp4",
        "https://adrianlealcaldera.com/wouldconti.mp4",
        "https://adrianlealcaldera.com/wouldperf.mp4",
        "https://adrianlealcaldera.com/wouldperf.mp4",
        
        //empieza numero 17 16 en array
        "https://adrianlealcaldera.com/couldsimp.mp4",
        "https://adrianlealcaldera.com/couldconti.mp4",
        "https://adrianlealcaldera.com/couldperf.mp4",
        "https://adrianlealcaldera.com/couldperf.mp4",
        // This URL is repeated intentionally
        //empieza 21 en array
        "https://adrianlealcaldera.com/modalsimple.mp4",
        "https://adrianlealcaldera.com/modalconti.mp4",
        "https://adrianlealcaldera.com/modalperf.mp4",
        "https://adrianlealcaldera.com/modalperfcont.mp4",
        
        //estos van al should
        "https://adrianlealcaldera.com/modalsimple.mp4",
        "https://adrianlealcaldera.com/modalconti.mp4",
        "https://adrianlealcaldera.com/modalperf.mp4",
        "https://adrianlealcaldera.com/modalperfcont.mp4",

        "https://adrianlealcaldera.com/modalsimple.mp4",
        "https://adrianlealcaldera.com/modalconti.mp4",
        "https://adrianlealcaldera.com/modalsimple.mp4",
        "https://adrianlealcaldera.com/modalconti.mp4",
    
        "https://adrianlealcaldera.com/EstructuraPregunta.mp4",
        "https://adrianlealcaldera.com/EstructuraPregunta.mp4",
        "https://adrianlealcaldera.com/EstructuraPregunta.mp4",
        "https://adrianlealcaldera.com/EstructuraPregunta.mp4",
        "https://adrianlealcaldera.com/EstructuraPregunta.mp4",
        "https://adrianlealcaldera.com/EstructuraPregunta.mp4",
        "https://adrianlealcaldera.com/EstructuraPregunta.mp4",
        "https://adrianlealcaldera.com/EstructuraPregunta.mp4",
        "https://adrianlealcaldera.com/EstructuraPregunta.mp4",
        "https://adrianlealcaldera.com/EstructuraPregunta.mp4",
        
        "https://adrianlealcaldera.com/EstructuraPregunta.mp4",
        "https://adrianlealcaldera.com/EstructuraPregunta.mp4", "https://adrianlealcaldera.com/EstructuraPregunta.mp4", "https://adrianlealcaldera.com/EstructuraPregunta.mp4", "https://adrianlealcaldera.com/EstructuraPregunta.mp4", "https://adrianlealcaldera.com/EstructuraPregunta.mp4", "https://adrianlealcaldera.com/EstructuraPregunta.mp4", "https://adrianlealcaldera.com/EstructuraPregunta.mp4", "https://adrianlealcaldera.com/EstructuraPregunta.mp4", "https://adrianlealcaldera.com/EstructuraPregunta.mp4",
        
        "https://adrianlealcaldera.com/EstructuraPregunta.mp4", "https://adrianlealcaldera.com/EstructuraPregunta.mp4", "https://adrianlealcaldera.com/EstructuraPregunta.mp4", "https://adrianlealcaldera.com/EstructuraPregunta.mp4", "https://adrianlealcaldera.com/EstructuraPregunta.mp4", "https://adrianlealcaldera.com/EstructuraPregunta.mp4", "https://adrianlealcaldera.com/EstructuraPregunta.mp4", "https://adrianlealcaldera.com/EstructuraPregunta.mp4", "https://adrianlealcaldera.com/EstructuraPregunta.mp4", "https://adrianlealcaldera.com/EstructuraPregunta.mp4",
        
        "https://adrianlealcaldera.com/ableto.mp4",
        
        
        
        "https://adrianlealcaldera.com/reportedspeech.mp4",
        
        "https://adrianlealcaldera.com/incrementoParalelo.mp4",
        
            "https://adrianlealcaldera.com/verlbaladjectives.mp4",
        
        "https://adrianlealcaldera.com/relativeclauses.mp4",
        
        "https://adrianlealcaldera.com/WantTo.mp4",
        "https://adrianlealcaldera.com/ForTo.mp4",
        
      "https://adrianlealcaldera.com/SupposedTo.mp4",
        "https://adrianlealcaldera.com/WishPast.mp4",
        "https://adrianlealcaldera.com/UsedTo.mp4",
        "https://adrianlealcaldera.com/UsedTo.mp4",
        "https://adrianlealcaldera.com/Feel%20Like.mp4"
    ];

    init(){}
}

