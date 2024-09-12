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
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F4.%20Presente%20simple.mp4?alt=media&token=0e482b5a-9c5b-42bc-928f-0ace6cf5fb16");
            
        case "Present Continuous":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F5.%20Presente%20continuo.mp4?alt=media&token=833c19a7-b7a6-490a-878b-3268c35bfaa1");
            
        case "Present Perfect":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F6.%20Presente%20Perfecto.mp4?alt=media&token=b4165290-0432-4c5f-88ec-d67010502d0b");
            
        case "Present Perfect Continuous":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F7.%20Presente%20Perfecto%20Continuo.mp4?alt=media&token=2c3142b8-4446-40b4-82c7-1e9a3cea7ad9");
            
            
            //PAST
        case "Past Simple":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F9.%20Pasado%20simple.mp4?alt=media&token=a1f5c158-5c9e-4733-9d72-08903454c41c");
            
        case "Past Continuous":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F10.%20Pasado%20continuo.mp4?alt=media&token=7eb20736-5434-4184-bc4f-e94ac0427570");
            
        case "Past Perfect":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F11.%20Pasado%20perfecto.mp4?alt=media&token=370783d1-b71b-40a2-91e4-e83b244cb358");
            
        case "Past Perfect Continuous":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F12.%20Pasado%20perfecto%20continuo.mp4?alt=media&token=7be7b5b3-6c07-4631-9d05-fb678fa3e8f3");
            
            
            //FUTURE
        case "Future Simple":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F13.%20Modal%20simple.mp4?alt=media&token=a18ea82e-7f10-45a2-abdf-e97f98a07181");
            
        case "Future Continuous":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F14.%20Modal%20continuo.mp4?alt=media&token=9a111eac-b885-4e11-8b93-32e6ead8d78b");
            
        case "Future Perfect":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F15.%20Modal%20perfecto.mp4?alt=media&token=5d6c8a67-afe1-421b-8658-7b21ca8b7bce");
            
        case "Future Perfect Continuous":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F16.%20Modal%20perfecto%20continuo.mp4?alt=media&token=131d9da0-14c4-419c-a21a-772022cc82e6");
            
            
            //MODAL WOILD
        case "Would Simple":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F13.%20Modal%20simple.mp4?alt=media&token=a18ea82e-7f10-45a2-abdf-e97f98a07181");
            
        case "Would Continuous":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F14.%20Modal%20continuo.mp4?alt=media&token=9a111eac-b885-4e11-8b93-32e6ead8d78b");
            
        case "Would Perfect":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F15.%20Modal%20perfecto.mp4?alt=media&token=5d6c8a67-afe1-421b-8658-7b21ca8b7bce");
            
        case "Would Perfect Continuous":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F16.%20Modal%20perfecto%20continuo.mp4?alt=media&token=131d9da0-14c4-419c-a21a-772022cc82e6");
            
            
            //MODAL COULD
        case "Could Simple":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F13.%20Modal%20simple.mp4?alt=media&token=a18ea82e-7f10-45a2-abdf-e97f98a07181");
            
        case "Could Continuous":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F14.%20Modal%20continuo.mp4?alt=media&token=9a111eac-b885-4e11-8b93-32e6ead8d78b");
            
        case "Could Perfect":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F15.%20Modal%20perfecto.mp4?alt=media&token=5d6c8a67-afe1-421b-8658-7b21ca8b7bce");
            
        case "Could Perfect Continuous":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F16.%20Modal%20perfecto%20continuo.mp4?alt=media&token=131d9da0-14c4-419c-a21a-772022cc82e6");
            
            
            //MODAL MIGHT
        case "Might Simple":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F13.%20Modal%20simple.mp4?alt=media&token=a18ea82e-7f10-45a2-abdf-e97f98a07181");
            
        case "Might Continuous":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F14.%20Modal%20continuo.mp4?alt=media&token=9a111eac-b885-4e11-8b93-32e6ead8d78b");
            
        case "Might Perfect":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F15.%20Modal%20perfecto.mp4?alt=media&token=5d6c8a67-afe1-421b-8658-7b21ca8b7bce");
            
        case "Might Perfect Continuous":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F16.%20Modal%20perfecto%20continuo.mp4?alt=media&token=131d9da0-14c4-419c-a21a-772022cc82e6");
            
            
            //MODAL SHOULD
        case "Should Simple":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F13.%20Modal%20simple.mp4?alt=media&token=a18ea82e-7f10-45a2-abdf-e97f98a07181");
            
        case "Should Continuous":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F14.%20Modal%20continuo.mp4?alt=media&token=9a111eac-b885-4e11-8b93-32e6ead8d78b");
            
        case "Should Perfect":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F15.%20Modal%20perfecto.mp4?alt=media&token=5d6c8a67-afe1-421b-8658-7b21ca8b7bce");
            
        case "Should Perfect Continuous":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F16.%20Modal%20perfecto%20continuo.mp4?alt=media&token=131d9da0-14c4-419c-a21a-772022cc82e6");
            
            
            //MODAL CAN
        case "Can Simple":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F13.%20Modal%20simple.mp4?alt=media&token=a18ea82e-7f10-45a2-abdf-e97f98a07181");
            
        case "Can Continuous":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F14.%20Modal%20continuo.mp4?alt=media&token=9a111eac-b885-4e11-8b93-32e6ead8d78b");
            
            
            //MODAL MUST
        case "Must Simple":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F13.%20Modal%20simple.mp4?alt=media&token=a18ea82e-7f10-45a2-abdf-e97f98a07181");
            
        case "Must Continuous":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F14.%20Modal%20continuo.mp4?alt=media&token=9a111eac-b885-4e11-8b93-32e6ead8d78b");
            
            
            //FOR TO
        case "For Object To":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F31.%20For%20me%20to.mp4?alt=media&token=cac7511a-b8be-4f20-aad3-2d6fb16a57d9");
            
            
        case "Be Used To":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F26.%20Used%20to.mp4?alt=media&token=a07713a0-1ed4-4904-bf85-9b48eb830b37");
            
            //USED TO
        case "Used To":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F26.%20Used%20to.mp4?alt=media&token=a07713a0-1ed4-4904-bf85-9b48eb830b37");
            
        case "Feel like":
            return URL(string:"https://adrianlealcaldera.com/Feel%20Like.mp4");
            
            //WANT TO
        case "Want To":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F29.%20Want%20you%20to.mp4?alt=media&token=2e655d45-22ac-4074-b4f2-9a9c26922f0d");
            
            //WISH
        case "Wish Past":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F30.%20Wish.mp4?alt=media&token=6ad3331d-505f-424a-ad0c-bb6025f5b780");
            
        case "Wish Past Perfect":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F30.%20Wish.mp4?alt=media&token=6ad3331d-505f-424a-ad0c-bb6025f5b780");
            
        case "Wish Would":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F30.%20Wish.mp4?alt=media&token=6ad3331d-505f-424a-ad0c-bb6025f5b780");
            
        case "Incremento Paralelo":
            return URL(string:"https://adrianlealcaldera.com/incrementoParalelo.mp4");
            
            
        case "Verbal Adjectives":
            return URL(string:"https://adrianlealcaldera.com/verlbaladjectives.mp4");
            
            
        case "Reported Speech":
            return URL(string:"https://adrianlealcaldera.com/reportedspeech.mp4");
            
            
            //QUESTIONS STRUCTURE RANDOM
        case "Question Structures":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F34.%20Estructura%20de%20preguntas.mp4?alt=media&token=4fe8ca31-280c-4e69-bb47-901b7c54996d");
            
            
            
        case "Phrasal Verbs":
            return URL(string:"https://adrianlealcaldera.com/phrasalverbs.mp4");
            
        case "Supposed To":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F28.%20Supposed%20to.mp4?alt=media&token=ad82d175-3583-4efa-9a09-316f40b56208");
            
        case "Able To":
            return URL(string:"https://adrianlealcaldera.com/ableto.mp4");
            
            
        case "There Be":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/reels%2Ftherebehighdef.mp4?alt=media&token=05d3cc4f-b53b-4248-ab7e-5b5049ec56ef");
            
            
        case "Verbos Juntos":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/reels%2Fverbsjuntoshd.mp4?alt=media&token=81fb4d3b-cdb1-4cf6-b741-c36ebf61cbf3");
            
            
        case "Present Simple Passive":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/reels%2Fpasivahd.mp4?alt=media&token=2831d2a7-d259-44f3-be67-e66fc6df77b9");
            
            
        case "Present Continuous Passive":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/reels%2Fpasivahd.mp4?alt=media&token=2831d2a7-d259-44f3-be67-e66fc6df77b9");
            
            
        case "Present Perfect Passive":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/reels%2Fpasivahd.mp4?alt=media&token=2831d2a7-d259-44f3-be67-e66fc6df77b9");
            
            
        case "Past Simple Passive":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/reels%2Fpasivahd.mp4?alt=media&token=2831d2a7-d259-44f3-be67-e66fc6df77b9");
            
            
        case "Past Continuous Passive":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/reels%2Fpasivahd.mp4?alt=media&token=2831d2a7-d259-44f3-be67-e66fc6df77b9");
            
            
        case "Past Perfect Passive":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/reels%2Fpasivahd.mp4?alt=media&token=2831d2a7-d259-44f3-be67-e66fc6df77b9");
            
            
        case "Future Simple Passive":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/reels%2Fpasivahd.mp4?alt=media&token=2831d2a7-d259-44f3-be67-e66fc6df77b9");
            
            
        case "Would Simple Passive":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/reels%2Fpasivahd.mp4?alt=media&token=2831d2a7-d259-44f3-be67-e66fc6df77b9");
            
            
        case "Going To":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/reels%2Fgoingtohd.mp4?alt=media&token=9729df29-5204-4cec-b0ad-a6e6c3254445");
            
        case "Going To Past":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/reels%2Fwasgoingtosd.mp4?alt=media&token=7e704751-c63a-43fd-a029-5e5e50bbc152");
            
            
        case "Reflexive Structure":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/reels%2Freflexivehd.mp4?alt=media&token=265309fb-a467-4eb2-88b5-405678c4a714");
            
            
        case "Have To":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/reels%2Fhavetohd.mp4?alt=media&token=4e62f3b5-7ac4-4b98-82b7-ee259a7d7507");
            
            
        case "Causative Have":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/reels%2Fcausativashdd.mp4?alt=media&token=e407dc0d-06bb-485a-9a1b-f6470ff8db12");
            
        case "Get Structures":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/reels%2Fgetsd.mp4?alt=media&token=5044a231-23d2-4fff-b72c-85c66faf86ae");
        case "Noun Adjectives":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/reels%2Fnounsd.mp4?alt=media&token=13447d1d-4b36-4970-9cf1-c19870263e90");
        case "P-V-PP":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/reels%2Fpvppsd.mp4?alt=media&token=1282dd49-c8ea-4741-882d-f0e61bc8ff4e");
        case "Comparativos":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/reels%2Fcomphd.mp4?alt=media&token=9c23090f-fb0a-40ae-8271-072fbe750433");
            
        case "Relative Clauses":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/reels%2Fthathd.mp4?alt=media&token=6ecf06c6-af9d-4c6b-a98b-cdeadafa4f33");
            
        case "Just Phrasal Verbs":
            return URL(string:"https://adrianlealcaldera.com/phrasalverbs.mp4");
            
        case "Supposed To Past":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/reels%2Fwassupposedtohd.mp4?alt=media&token=01d31fa8-af5c-4559-930f-3385ccc98b2d");
        default:
            return URL(string: "https://adrianlealcaldera.com/examenexpl.mp4")
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
        case "Sustantivos":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F42.%20Vocabulario%2051%20-%20100.mp4?alt=media&token=4ecf44db-09a1-4341-b3e6-7a26c4e3ff8c");
        case "Verbos":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F42.%20Vocabulario%2051%20-%20100.mp4?alt=media&token=4ecf44db-09a1-4341-b3e6-7a26c4e3ff8c");
        case "Adverbios":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F42.%20Vocabulario%2051%20-%20100.mp4?alt=media&token=4ecf44db-09a1-4341-b3e6-7a26c4e3ff8c");
        case "Adjetivos":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F42.%20Vocabulario%2051%20-%20100.mp4?alt=media&token=4ecf44db-09a1-4341-b3e6-7a26c4e3ff8c");
        case "Preposiciones":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F42.%20Vocabulario%2051%20-%20100.mp4?alt=media&token=4ecf44db-09a1-4341-b3e6-7a26c4e3ff8c");
            
            
        case "Function Words":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/clasebasica.mp4?alt=media&token=aa040ec8-7699-4d54-a614-0742ea8c4d32");
        case "Palabras comunes":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/clasebasica.mp4?alt=media&token=aa040ec8-7699-4d54-a614-0742ea8c4d32");
            
        case "Present Simple":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F4.%20Presente%20simple.mp4?alt=media&token=0e482b5a-9c5b-42bc-928f-0ace6cf5fb16");
            
        case "Nivel Basico":
            return URL(string:"https://adrianlealcaldera.com/basico.mp4");
            
            
        case "Nivel No-Basicas":
            return URL(string:"https://adrianlealcaldera.com/no-basico.mp4");
            
            
        case "Nivel Interferencias":
            return URL(string:"https://adrianlealcaldera.com/interferncia.mp4");
            
            
        case "Test":
            return URL(string:"https://adrianlealcaldera.com/examenexpl.mp4");
            
            
        case "Tutorial":
            return URL(string:"https://adrianlealcaldera.com/vocabtut.mp4");
            
            
        case "0 to 50":
            return URL(string:"https://adrianlealcaldera.com/vocablowq.mp4");
            
        case "50 to 100":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F42.%20Vocabulario%2051%20-%20100.mp4?alt=media&token=4ecf44db-09a1-4341-b3e6-7a26c4e3ff8c");
            
        case "100 to 150":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F43.%20Vocabulario%20101%20-%20200.mp4?alt=media&token=532b6e14-6ef5-41d7-822f-d6765c9526f7");
            
        case "150 to 200":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F43.%20Vocabulario%20101%20-%20200.mp4?alt=media&token=532b6e14-6ef5-41d7-822f-d6765c9526f7");
            
        case "200 to 250":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F44.%20Vocabulario%20201%20-%20250.mp4?alt=media&token=1ffddef4-eb31-4b3b-8c99-68e72822e09b");
            
        case "250 to 300":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F45.%20Vocabulario%20251%20-%20300.mp4?alt=media&token=a88a2564-86d7-4267-86dd-c53e3118ce48");
            
        case "300 to 350":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F46.%20Vocabulario%20301%20-%20350.mp4?alt=media&token=6cc9bc56-9c83-4530-973d-cd5239012a05");
            
        case "350 to 400":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F47.%20Vocabulario%20351%20-%20400.mp4?alt=media&token=e54e1d01-8b40-452a-bdef-2ea834430dd2");
            
        case "400 to 500":
            return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F48.%20Vocabulario%20401%20-%20500.mp4?alt=media&token=94715e42-f0a4-411b-ab3e-b181dd0104f4");
            
            
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
            return URL(string:"https://adrianlealcaldera.com/blackfathers.mp4");
            
        case "Is America Racist?":
            return URL(string:"https://adrianlealcaldera.com/isamericaracist.mp4");
            
        case "Don't Compare Yourself to Others":
            return URL(string:"https://adrianlealcaldera.com/DontCompareYourselftoOthersPrag.mp4");
            
        case "Fix Yourself":
            return URL(string:"https://adrianlealcaldera.com/FixYourself.mp4");
            
            //Are Men and Women Different?
        case "Are Men and Women Different?":
            return URL(string:"https://adrianlealcaldera.com/Are%20Men%20and%20Women%20Different.mp4");
            
        case "Don't Waste Your Time":
            return URL(string:"https://adrianlealcaldera.com/Dating%20Dont%20Waste%20Your%20Time.mp4");
            
        case "How to Make Our Cities Safer":
            return URL(string:"https://adrianlealcaldera.com/How%20to%20Make%20Our%20Cities%20Safer.mp4");
            
        case "How to End Systemic Racism":
            return URL(string:"https://adrianlealcaldera.com/How%20to%20End%20Systemic%20Racism.mp4");
            
        case "Should Government Bail Out Big Banks?":
            return URL(string:"https://adrianlealcaldera.com/Should%20Government%20Bail%20Out%20Big%20Banks.mp4");
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
        
    case "SpaInt":
        switch(option){
            case "Por Preposicion":
                return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F36.%20Interferencia%20por%20preposici%C3%B3n.mp4?alt=media&token=163ff6e6-b737-4fb8-8cde-c33e0bba07a8")
                
            case "Por Sujeto":
                return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F37.%20Interferencia%20por%20verbo.mp4?alt=media&token=372612cc-668c-410e-90e3-2ae06a44dd1f")
                
            case "Por Objeto":
                return URL(string: "https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F38.%20Interferencia%20de%20objeto.mp4?alt=media&token=21bab41d-eb20-4c67-bffd-128484c4630c")
                
            case "Interferencia Reflexiva":
                return URL(string:"https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F39.%20Interferencias%20reflexivas.mp4?alt=media&token=2d50912f-a232-4ca5-b89a-3aafc678e418")
                
            case "Interferencia Pasiva":
                return URL(string: "https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F40.%20Interferencias%20pasivas.mp4?alt=media&token=890f35ff-c3e7-4a29-9d14-eedc500c999e")
            default:
                return nil
            
        }
    default:
        return nil
    }
}
