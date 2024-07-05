//
//  EstrucExplaData.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 3/7/24.
//

import Foundation



let LearnStrucArray: [LearnStrucTypes] = [
    LearnStrucTypes(title: "Present Simple",definition: "Qué pasa?",explanation: simplePresentDefinition,level: 1,lessonNumber: 1),
    LearnStrucTypes(title: "Present Continuous",definition: "Qué está pasando?",explanation: presentContinuousDef,level: 1, lessonNumber: 2),
    LearnStrucTypes(title: "Present Perfect",definition: "Qué Ha Pasado?",explanation: presentPerfectExplanation,level: 1, lessonNumber: 3),
    LearnStrucTypes(title: "Present Perfect Continuous",definition: "Qué ha estado pasando?",explanation: presentPerfectContinuousExplanation,level: 1, lessonNumber: 4),

    LearnStrucTypes(title: "Past Simple",definition: "Qué pasó?",explanation: simplePastExplanation,level: 1, lessonNumber: 5),
    LearnStrucTypes(title: "Past Continuous",definition: "Qué estaba pasando?",explanation: pastContinuousExplanation,level: 1, lessonNumber: 6),
    LearnStrucTypes(title: "Past Perfect",definition: "Qué había pasado?",explanation: pastPerfectExplanation,level: 1, lessonNumber: 7),
    LearnStrucTypes(title: "Past Perfect Continuous",definition: "Qué había estado pasando?",explanation: pastPerfectContinuousExplanation,level: 1, lessonNumber: 8),

    LearnStrucTypes(title: "Future Simple",definition: "Qué pasará?",explanation: futureSimpleExplanation,level: 1, lessonNumber: 9),
    LearnStrucTypes(title: "Future Continuous",definition: "Qué estará pasando?",explanation: futureContinuousExplanation,level: 1, lessonNumber: 10),
    LearnStrucTypes(title: "Future Perfect",definition: "Qué habrá pasado?",explanation: futurePerfectExplanation,level: 1, lessonNumber: 11),
    LearnStrucTypes(title: "Future Perfect Continuous",definition: "Qué habrá estado pasando?",explanation: futurePerfectContinuousExplanation,level: 1, lessonNumber: 12),

    LearnStrucTypes(title: "Would Simple",definition: "Qué pasaría?",explanation: wouldVerbExplanation,level: 1, lessonNumber: 13),
    LearnStrucTypes(title: "Would Continuous",definition: "Qué estaría pasando?",explanation: wouldContinuousExplanation,level: 1, lessonNumber: 14),
    LearnStrucTypes(title: "Would Perfect",definition: "Qué habría pasado?",explanation: wouldPerfectExplanation,level: 1, lessonNumber: 15),
    LearnStrucTypes(title: "Would Perfect Continuous",definition: "Qué habría estado pasando?",explanation: wouldHaveBeenWorkingExplanation,level: 1, lessonNumber: 16),

    LearnStrucTypes(title: "Could Simple",definition: "Qué podría pasar?",explanation: couldVerbExplanation,level: 1, lessonNumber: 17),
    LearnStrucTypes(title: "Could Continuous",definition: "Qué podría estar pasando?",explanation: couldContinuousExplanation,level: 1, lessonNumber: 18),
    LearnStrucTypes(title: "Could Perfect",definition: "Qué podría haber pasado?",explanation: couldHaveParticipleExplanation,level: 1, lessonNumber: 19),
    LearnStrucTypes(title: "Could Perfect Continuous",definition: "Qué podría haber estado pasando?",explanation: couldHaveBeenVerbingExplanation,level: 1, lessonNumber: 20),

    LearnStrucTypes(title: "Should Simple",definition: "Qué debería pasar?",explanation: shouldVerbExplanation,level: 1, lessonNumber: 21),
    LearnStrucTypes(title: "Should Continuous",definition: "Qué debería estar pasando?",explanation: shouldBeVerbingExplanation,level: 1, lessonNumber: 22),
    LearnStrucTypes(title: "Should Perfect",definition: "Qué debió haber?",explanation: shouldHaveParticipleExplanation,level: 1, lessonNumber: 23),
    LearnStrucTypes(title: "Should Perfect Continuous",definition: "Qué debío haber estado pasando?",explanation: shouldHaveBeenVerbingExplanation,level: 1, lessonNumber: 24),

    LearnStrucTypes(title: "Might Simple",definition: "Qué quiza pase?",explanation: mightDef,level: 1, lessonNumber: 25),
    LearnStrucTypes(title: "Might Continuous",definition: "Qué quiza esté pasando?",explanation: mightContinuousDef,level: 1, lessonNumber: 26),
    LearnStrucTypes(title: "Might Perfect",definition: "Qué quiza haya?",explanation: mightHaveParticipleDef,level: 1, lessonNumber: 27),
    LearnStrucTypes(title: "Might Perfect Continuous",definition: "Qué quiza haya estado?",explanation: mightHaveBeenVerbingDef,level: 1, lessonNumber: 28),

    LearnStrucTypes(title: "Can Simple",definition: "Qué puede pasar?",explanation: canVerbDef,level: 1, lessonNumber: 29),
    LearnStrucTypes(title: "Can Continuous",definition: "Qué puede estar pasando?",explanation: canBeVerbingDef,level: 1, lessonNumber: 30),

    LearnStrucTypes(title: "Must Simple",definition: "Qué debe pasar?",explanation: mustVerbDef,level: 1, lessonNumber: 31),
    LearnStrucTypes(title: "Must Continuous",definition: "Qué debe estar pasando?",explanation: mustBeVerbingDef,level: 1, lessonNumber: 32),

    LearnStrucTypes(title: "Present Simple Passive",definition: "que es hecho?",explanation: isAreParticipleDef,level: 1, lessonNumber: 33),
    LearnStrucTypes(title: "Present Continuous Passive",definition: "Qué estado siendo hecho?",explanation: isAreBeingVerbingDef,level: 1, lessonNumber: 34),
    LearnStrucTypes(title: "Present Perfect Passive",definition: "Qué ha sido hecho?",explanation: haveBeenHasBeenParticipleDef,level: 1, lessonNumber: 35),

    LearnStrucTypes(title: "Past Simple Passive",definition: "Qué fue hecho?",explanation: wasWereParticipleDef,level: 1, lessonNumber: 36),
    LearnStrucTypes(title: "Past Continuous Passive",definition: "Qué estaba siendo hecho?",explanation: wasBeingPassive,level: 1, lessonNumber: 37),
    LearnStrucTypes(title: "Past Perfect Passive",definition: "Qué había sido hecho?",explanation: hadBeenPassive,level: 1, lessonNumber: 38),

    LearnStrucTypes(title: "Future Simple Passive",definition: "Qué será hecho?",explanation: willBeParticipleDef,level: 1, lessonNumber: 39),
    LearnStrucTypes(title: "Would Simple Passive",definition: "Qué sería hecho?",explanation: objectWouldBeParticipleDef,level: 1, lessonNumber: 40),

    //done
    LearnStrucTypes(title: "For Object To",definition: "para que alguien haga que?",explanation: forNounToVerbExplanation,level: 1, lessonNumber: 41),
    LearnStrucTypes(title: "Be Used To",definition: "a que esta acostumbrado alguien?",explanation: isAreAmUsedToVerbDef,level: 1, lessonNumber: 42),
    LearnStrucTypes(title: "Used To",definition: "que solía pasar?",explanation: subjectUsedToVerbDef,level: 1, lessonNumber: 43),
    LearnStrucTypes(title: "There Be",definition: "Qué hay?",explanation: thereBeDef,level: 1, lessonNumber: 44),

    LearnStrucTypes(title: "Have To",definition: "Qué tiene que pasar?",explanation: subjectHaveToVerbDef,level: 1, lessonNumber: 45),
    LearnStrucTypes(title: "Going To Present",definition: "Qué va a pasar?",explanation: goingToDef,level: 1, lessonNumber: 46),
    LearnStrucTypes(title: "Going To Past",definition: "Qué iba a pasar?",explanation: goingToPastDef,level: 1, lessonNumber: 47),
    LearnStrucTypes(title: "Feel like",definition: "Qué se tiene ganas de hacer",explanation: feellikeDef,level: 1, lessonNumber: 48),
    LearnStrucTypes(title: "Supposed To Present",definition: "Qué se supone que tiene que pasar?",explanation: subjectAmAreIsSupposedToVerbDef,level: 1, lessonNumber: 49),
    LearnStrucTypes(title: "Supposed To Past",definition: "Qué se suponía que tenía que pasar?",explanation: subjectWasWereSupposedToDef,level: 1, lessonNumber: 50),
    LearnStrucTypes(title: "Get Structures",definition: "se hace, se vuelve, se pone",explanation: subjectGetObjectToVerbDef,level: 1, lessonNumber: 51),

    LearnStrucTypes(title: "P-V-PP",definition: "quien le hace que a quien?",explanation: pvppDef,level: 1, lessonNumber: 52),
    LearnStrucTypes(title: "Reflexive Structures",definition: "Qué se hace alguien a si mismo?",explanation: reflexivoDef,level: 1, lessonNumber: 53),
    LearnStrucTypes(title: "Causative Have",definition: "Qué causas que suceda?",explanation: subjectCausativeHaveObjectVerbDef,level: 1, lessonNumber: 54),
    LearnStrucTypes(title: "Verbos Juntos",definition: "verbos como sujeto y objeto",explanation: verbosJuntosDef,level: 1, lessonNumber: 55),
    LearnStrucTypes(title: "Noun Adjectives",definition: "sustantivos como adjetivos",explanation: nounNounNounDef,level: 1, lessonNumber: 56),
    LearnStrucTypes(title: "Verbal Adjectives",definition: "verbos como adjetivos",explanation: verbalAdjectivesDef,level: 1, lessonNumber: 57),

    LearnStrucTypes(title: "Wish + Past Simple",definition: "ojala que algo pasara seguido",explanation: wishPastSimpleDef,level: 1, lessonNumber: 58),
    LearnStrucTypes(title: "Wish + Would Simple",definition: "ojalá algo pasara hipotéticamente",explanation: wishWouldDef,level: 1, lessonNumber: 59),
    LearnStrucTypes(title: "Wish + Past Perfect",definition: "ojalá algo hubiera pasado",explanation: wishHadParticipleDef,level: 1, lessonNumber: 60),

    LearnStrucTypes(title: "Comparativos",definition: "mas que o menos que",explanation: comparativoDef,level: 1, lessonNumber: 61),
    LearnStrucTypes(title: "Question Structures",definition: "preguntas",explanation: questionWordAuxSubjectVerbDef,level: 1, lessonNumber: 62),
    LearnStrucTypes(title: "Phrasal Verbs",definition: "verbos compuestos",explanation: phrasalVerbsDef,level: 1, lessonNumber: 63),

    //LearnStrucTypes("Reported Speech","Quien dijo que",discursoReportadoDef,1),
    //LearnStrucTypes("Able To","poder en futuro",ableToDef,1),
    //LearnStrucTypes("Incremento Parallelo","entre mas algo mas otra cosa",incrementoParaleloDef,1),
    //LearnStrucTypes("Relative Clauses","clausulas de adjetivo",clausulasRelativasDef,1),
    LearnStrucTypes(title: "Just Phrasal Verbs",definition: "practica verbos solos",explanation: phrasalVerbsDef,level: 1, lessonNumber: 64),
    //LearnStrucTypes("Want Agent To","El sujeto quiere que el objeto haga algo",wantToDef,1),
];

        

let simplePresentDefinition = """
El presente simple en inglés es un tiempo verbal usado para describir acciones habituales, hechos generales, verdades universales, y situaciones permanentes. Se forma con la base del verbo para todas las personas, excepto en la tercera persona singular donde se añade -s o -es. Ejemplos incluyen 'I walk' (Yo camino), 'She reads' (Ella lee), y 'It rains' (Llueve). También se usa para expresar horarios o eventos futuros programados.
"""

let presentContinuousDef = """
El tiempo presente continuo se utiliza para expresar acciones que están ocurriendo justo en este momento o para hablar de planes futuros. Se forma con el verbo 'to be' como auxiliar (am, is, are) seguido del verbo principal con la terminación '-ing'. Por ejemplo, 'I am watching TV' indica una acción en curso, mientras que 'I am meeting a friend tomorrow' habla de un plan futuro. Este tiempo verbal es crucial para destacar la continuidad de una acción en el presente o la certeza de un evento planificado.
"""

let presentPerfectExplanation = """
El tiempo presente perfecto se usa para hablar de acciones o experiencias que han ocurrido en un momento indefinido del pasado, pero que tienen relevancia o efecto en el presente. Se forma con el verbo auxiliar 'have' (para 'I', 'you', 'we', 'they') o 'has' (para 'he', 'she', 'it'), seguido del participio pasado del verbo principal. Por ejemplo, 'I have worked' (Yo he trabajado) indica una experiencia laboral que ocurrió en el pasado pero es relevante en el presente. Otros ejemplos incluyen 'She has visited Paris' (Ella ha visitado París), mostrando una experiencia de vida, o 'They have eaten' (Ellos han comido), indicando una acción pasada que afecta el estado actual.
"""

let presentPerfectContinuousExplanation = """
El presente perfecto continuo se utiliza para hablar de acciones que comenzaron en el pasado y siguen ocurriendo en el presente o que acaban de terminar, pero su efecto continúa. Se forma con 'have/has been' y el gerundio del verbo principal (-ing). Por ejemplo, 'I have been working' (He estado trabajando) indica trabajo continuado hasta ahora. 'They have been studying English' (Han estado estudiando inglés) resalta la duración del estudio hasta el presente.
"""

// Past Tense Definitions

let simplePastExplanation = """
El pasado simple se utiliza para hablar de acciones o eventos completados en un momento específico del pasado. No está conectado al presente. Se forma usando el verbo en su forma pasada para verbos regulares (añadiendo -ed al final) y formas irregulares para verbos irregulares. Por ejemplo, 'I worked yesterday' (Trabajé ayer) usa un verbo regular, mientras que 'She went to the store' (Ella fue a la tienda) usa un verbo irregular. Este tiempo es esencial para narrar eventos pasados en secuencia o hablar de hábitos pasados.
"""

let pastContinuousExplanation = """
El pasado continuo se usa para describir acciones que estaban ocurriendo en un momento específico del pasado. Se forma con el verbo 'to be' en pasado (was para 'I', 'he', 'she', 'it'; were para 'you', 'we', 'they') seguido del gerundio del verbo principal (-ing). Por ejemplo, 'I was watching TV at 8 pm' (Estaba viendo la televisión a las 8 pm) indica una acción en progreso en ese momento específico. Este tiempo a menudo se usa para establecer una escena en el pasado o para hablar de dos acciones ocurriendo simultáneamente.
"""

let pastPerfectExplanation = """
El pasado perfecto se utiliza para hablar de una acción que se completó antes de otro momento o acción en el pasado. Se forma con 'had' seguido del participio pasado del verbo principal. Este tiempo verbal ayuda a establecer un orden temporal entre dos eventos pasados. Por ejemplo, 'I had finished my homework when he called' (Había terminado mi tarea cuando él llamó) muestra que la tarea se completó antes de la llamada. Es útil para narrar eventos en una secuencia donde el tiempo es crucial para comprender la relación entre los eventos.
"""

let pastPerfectContinuousExplanation = """
El pasado perfecto continuo se utiliza para hablar de una acción que comenzó en el pasado y continuó hasta otro punto también en el pasado. Se forma con 'had been' seguido del gerundio del verbo principal (-ing). Este tiempo enfatiza la duración de la acción antes de un momento específico en el pasado. Por ejemplo, 'I had been studying for hours before the exam' (Había estado estudiando durante horas antes del examen) indica un período prolongado de estudio que precede al momento del examen. Es útil para destacar la continuidad y la duración de las acciones en el pasado.
"""

// Future Tense Definitions

let futureSimpleExplanation = """
El futuro simple se usa para hablar de acciones o eventos que ocurrirán en el futuro. Se forma con el auxiliar 'will' seguido del verbo principal en su forma base. Este tiempo verbal expresa decisiones espontáneas, promesas, predicciones sin evidencia y ofertas en el momento de hablar. Por ejemplo, 'I will call you later' (Te llamaré más tarde) muestra una decisión tomada en el momento. 'It will rain tomorrow' (Lloverá mañana) es una predicción. Es flexible y se usa comúnmente para hablar sobre el futuro en términos generales.
"""

let futureContinuousExplanation = """
El futuro continuo se utiliza para hablar de acciones que estarán ocurriendo en un momento específico en el futuro. Se forma con 'will be' seguido del gerundio del verbo principal (-ing). Este tiempo verbal es útil para expresar una acción en progreso en un momento futuro determinado. Por ejemplo, 'I will be working at 10 AM tomorrow' (Estaré trabajando a las 10 AM mañana) indica que en ese momento específico del futuro, la acción de trabajar estará en curso. Es ideal para hablar de planes o situaciones que se desarrollarán en el transcurso del tiempo futuro.
"""

let futurePerfectExplanation = """
El futuro perfecto se usa para hablar de una acción que se completará antes de un momento específico en el futuro. Se forma con 'will have' seguido del participio pasado del verbo principal. Este tiempo verbal es útil para expresar la finalización de una acción en relación con otro evento futuro. Por ejemplo, 'By next year, I will have graduated' (Para el próximo año, me habré graduado) indica que la graduación ocurrirá antes del próximo año. Es ideal para establecer plazos o para hablar de logros que se anticipan en el futuro.
"""

let futurePerfectContinuousExplanation = """
El futuro perfecto continuo se utiliza para hablar de una acción que comenzará en el pasado o en el presente y continuará hasta un momento específico en el futuro. Se forma con 'will have been' seguido del gerundio del verbo principal (-ing). Este tiempo verbal enfatiza la duración de la acción hasta un punto futuro. Por ejemplo, 'By 10 AM tomorrow, I will have been working for three hours' (Para las 10 AM de mañana, habré estado trabajando durante tres horas) muestra que la acción de trabajar no solo continúa hasta ese futuro, sino que también resalta cuánto tiempo habrá transcurrido hasta entonces. Es útil para destacar la continuidad de una acción y su duración hasta un momento futuro específico.
"""

// Modal Verbs Definitions

let wouldVerbExplanation = """
'Would' es un verbo modal utilizado para hablar de situaciones hipotéticas, pedidos educados, deseos, preferencias o acciones repetidas en el pasado. No se refiere a un tiempo verbal específico, sino a la actitud hacia la acción. Por ejemplo, 'I would go if I were you' (Yo iría si fuera tú) expresa una situación hipotética. 'Would you like some coffee?' (¿Te gustaría un poco de café?) es un pedido educado. En el contexto del pasado, 'When we were kids, we would play outside all day' (Cuando éramos niños, jugábamos afuera todo el día) indica una acción repetida en el pasado. Es versátil y esencial para expresar cortesía, hipótesis y recuerdos.
"""

let wouldContinuousExplanation = """
'Would be + verbo en gerundio' se utiliza para hablar sobre acciones hipotéticas o situaciones que podrían ocurrir bajo ciertas condiciones en el pasado, presente o futuro. Es la forma continua de 'would' y agrega una dimensión de continuidad a la hipótesis. Por ejemplo, 'I would be working now if I hadn't lost my job' (Estaría trabajando ahora si no hubiera perdido mi trabajo) expresa una situación hipotética en el presente. También se puede usar para hablar de preferencias en situaciones hipotéticas, como en 'On a rainy day, I would be reading at home' (En un día lluvioso, estaría leyendo en casa). Destaca la naturaleza continuada o prolongada de la acción bajo condiciones específicas.
"""

let wouldPerfectExplanation = """
'Would have + participio pasado del verbo' se utiliza para hablar de acciones que podrían haber ocurrido en el pasado bajo diferentes circunstancias. Es la forma perfecta de 'would' y se usa para expresar arrepentimiento, condiciones no cumplidas o especulaciones sobre eventos pasados. Por ejemplo, 'I would have gone to the party if I hadn't been sick' (Habría ido a la fiesta si no hubiera estado enfermo) muestra una acción que no ocurrió debido a una condición específica. Este tiempo verbal es esencial para hablar sobre situaciones hipotéticas pasadas y las consecuencias de decisiones o circunstancias alternativas.
"""

let wouldHaveBeenWorkingExplanation = """
'Would have been + verbo en gerundio' se usa para hablar sobre situaciones hipotéticas en el pasado que no ocurrieron, pero que habrían continuado durante algún tiempo si se hubieran dado ciertas condiciones. Es la forma perfecta continua de 'would' y se utiliza para expresar acciones que habrían tenido una duración en el pasado bajo diferentes circunstancias. Por ejemplo, 'I would have been working in that company for five years now if they had not closed it' (Habría estado trabajando en esa empresa durante cinco años ahora si no la hubieran cerrado) indica una acción prolongada que no sucedió debido a una condición específica. Este uso es ideal para reflexionar sobre cómo ciertas acciones habrían progresado en el tiempo si las circunstancias hubieran sido diferentes.
"""

let couldVerbExplanation = """
'Could' es un verbo modal utilizado para hablar de habilidades en el pasado, posibilidades, y para hacer solicitudes o sugerencias de manera educada. No indica un tiempo verbal específico, sino más bien una capacidad o posibilidad. Por ejemplo, 'When I was younger, I could run very fast' (Cuando era más joven, podía correr muy rápido) se refiere a una habilidad pasada. 'Could you help me, please?' (¿Podrías ayudarme, por favor?) es una forma educada de pedir ayuda. También se usa para expresar posibilidades, como en 'It could rain later' (Podría llover más tarde). 'Could' añade un tono de cortesía, especulación o habilidad pasada a la conversación.
"""

let couldContinuousExplanation = """
'Could be + verbo en gerundio' se utiliza para hablar de posibilidades hipotéticas o situaciones potenciales en el presente o futuro. Refleja una acción que podría estar sucediendo ahora o que podría suceder bajo ciertas condiciones. Por ejemplo, 'I could be working right now instead of wasting time' (Podría estar trabajando ahora mismo en lugar de perder el tiempo) sugiere una alternativa posible a la situación actual. Esta forma es útil para especular sobre situaciones presentes o futuras y para considerar diferentes posibilidades o cursos de acción bajo condiciones específicas.
"""

let couldHaveParticipleExplanation = """
'Could have + participio pasado del verbo' se utiliza para hablar sobre acciones que eran posibles en el pasado pero no ocurrieron. Es una forma de especular sobre resultados alternativos o expresar posibilidad de acción en el pasado. Por ejemplo, 'I could have won the race if I had trained harder' (Podría haber ganado la carrera si hubiera entrenado más duro) indica que había una posibilidad de ganar, pero no se concretó. Este uso de 'could have' es útil para reflexionar sobre oportunidades pasadas, decisiones no tomadas, o para considerar cómo las acciones podrían haber llevado a diferentes resultados.
"""

let couldHaveBeenVerbingExplanation = """
'Could have been + verbo en gerundio' se utiliza para hablar de situaciones hipotéticas en el pasado que no ocurrieron, pero que tenían la posibilidad de estar ocurriendo durante un tiempo. Esta estructura sugiere que había una posibilidad de que una acción estuviera en progreso en un momento específico del pasado, pero por alguna razón, no fue así. Por ejemplo, 'I could have been working at that company, but I turned down the offer' (Podría haber estado trabajando en esa empresa, pero rechacé la oferta) implica que había una oportunidad o posibilidad de estar en medio de esa acción, pero no se materializó. Es útil para reflexionar sobre cómo ciertas decisiones o circunstancias afectaron posibles estados o acciones en el pasado.
"""

let shouldVerbExplanation = """
'Should + verbo' se utiliza para dar consejos, hacer recomendaciones, o expresar obligaciones leves. Indica lo que se considera correcto, apropiado o deseable en una situación específica. Por ejemplo, 'I should go now' (Debería irme ahora) sugiere que es el momento apropiado o correcto para irse. 'You should eat more vegetables' (Deberías comer más verduras) es una recomendación para mejorar la dieta. Esta estructura ayuda a expresar juicios de valor sobre las acciones y es comúnmente usada para aconsejar o sugerir lo que se cree que es la mejor acción a tomar.
"""

let shouldBeVerbingExplanation = """
'Should be + verbo en gerundio' se utiliza para dar consejos o hacer recomendaciones sobre acciones que se espera que estén ocurriendo en el presente o que ocurran de manera continua. Implica que la acción es deseable o necesaria bajo las circunstancias actuales. Por ejemplo, 'You should be studying for your exams' (Deberías estar estudiando para tus exámenes) sugiere que estudiar es la acción recomendada en el momento actual. 'I should be working out more often' (Debería hacer ejercicio más a menudo) indica que hacer ejercicio de manera regular es una acción aconsejable. Esta estructura es útil para enfatizar la importancia de una acción continua o en progreso en el presente.
"""

let shouldHaveParticipleExplanation = """
'Should have + participio pasado del verbo' se utiliza para expresar arrepentimiento sobre algo que no se hizo en el pasado, o para indicar que una acción era deseable o recomendable pero no se realizó. Por ejemplo, 'I should have studied more for the exam' (Debería haber estudiado más para el examen) muestra arrepentimiento por no haber dedicado suficiente tiempo al estudio. 'You should have called earlier' (Deberías haber llamado antes) sugiere que llamar antes era la acción recomendada. Esta estructura es útil para reflexionar sobre decisiones pasadas y expresar la idea de que se habría preferido un curso de acción diferente.
"""

let shouldHaveBeenVerbingExplanation = """
'Should have been + verbo en gerundio' se utiliza para expresar que una acción continua era esperada, recomendada, o deseable en el pasado pero no ocurrió. Implica un sentido de obligación o expectativa no cumplida. Por ejemplo, 'I should have been studying instead of watching TV' (Debería haber estado estudiando en vez de ver la televisión) muestra arrepentimiento por no haber estado realizando una acción considerada más productiva o adecuada. 'You should have been saving money for this trip' (Deberías haber estado ahorrando dinero para este viaje) indica que ahorrar dinero era la acción recomendada durante un periodo previo. Esta estructura es útil para criticar acciones pasadas o la falta de ellas, especialmente cuando se esperaba un comportamiento diferente.
"""

let mightDef = """
La construcción gramatical 'sujeto + might + verbo' en inglés se utiliza para expresar una posibilidad o probabilidad. La palabra 'might' funciona de manera similar a 'quizá' en español y hace que el verbo se use en forma subjuntiva. Por ejemplo, 'I might go' se traduciría como 'Yo quizá vaya'. Es importante notar que 'might' no tiene una traducción directa que indique modo subjuntivo en inglés, pero su uso implica una acción que no es segura, sino que es posible. Esta construcción se utiliza frecuentemente para hablar sobre situaciones futuras inciertas, ofreciendo una manera de expresar duda o indecisión sobre la realización de una acción.
"""

let mightContinuousDef = """
La construcción 'might + be + verbo en gerundio' en inglés se utiliza para expresar una posibilidad o probabilidad en el contexto de una acción que está ocurriendo en el momento presente o que se espera que ocurra en el futuro cercano. Funciona de manera similar a expresar 'quizá esté' seguido de un verbo en gerundio en español. Por ejemplo, 'He might be working' se traduciría como 'Él quizá esté trabajando'. Esta forma es útil para hablar sobre situaciones inciertas o hipotéticas que están en curso o que podrían desarrollarse. Al usar 'might' en esta construcción, se comunica que la acción no es un hecho confirmado, sino una posibilidad abierta a la incertidumbre.
"""

let mightHaveParticipleDef = """
La construcción 'sujeto + might + have + participio pasado' en inglés se utiliza para hablar de la posibilidad de que una acción haya ocurrido en el pasado. Similar a cómo en español se podría decir 'quizá haya' seguido de un participio, esta estructura sugiere que algo pudo haber sucedido, pero no se tiene certeza. Por ejemplo, 'She might have left' se traduciría como 'Ella quizá haya salido'. Esta forma es especialmente útil para expresar duda o especulación sobre eventos pasados, permitiendo al hablante comunicar incertidumbre sobre si una acción se realizó o no.
"""

let mightHaveBeenVerbingDef = """
La construcción 'might + have + been + verbo en gerundio' en inglés se utiliza para expresar la posibilidad de que una acción estuviera ocurriendo en un momento específico en el pasado. Es equivalente a decir 'quizá estuviera' o 'quizá hubiera estado' seguido de un verbo en gerundio en español. Por ejemplo, 'They might have been working' se traduce como 'Ellos quizá estuvieran trabajando' o 'Ellos quizá hubieran estado trabajando'. Esta estructura permite al hablante especular sobre situaciones pasadas continuas, indicando que una acción podría haber estado en proceso en algún punto pasado, sin afirmar con certeza que así fue.
"""

let canVerbDef = """
La construcción 'sujeto + can + verbo' en inglés se utiliza para expresar la capacidad o habilidad de realizar una acción, así como la posibilidad de hacer algo. En español, se traduce como 'poder hacer algo'. Por ejemplo, 'I can swim' se traduce como 'Yo puedo nadar'. Esta estructura es fundamental para hablar sobre habilidades, permisos, y posibilidades. 'Can' indica que el sujeto tiene la habilidad física o mental para realizar la acción o que existe la posibilidad de que la acción ocurra. Es una forma directa y común de hablar sobre lo que es posible o lo que alguien es capaz de hacer.
"""

let canBeVerbingDef = """
La construcción 'sujeto + can + be + verbo en gerundio' en inglés se utiliza para hablar sobre la capacidad o la posibilidad de que una acción esté ocurriendo en el momento presente o que ocurra en un futuro cercano. Esta estructura se traduce al español como 'poder estar haciendo algo'. Por ejemplo, 'You can be waiting' se traduciría como 'Tú puedes estar esperando'. Es útil para expresar la posibilidad de que una acción esté en curso bajo ciertas condiciones o para indicar que alguien tiene la capacidad de empezar a realizar una acción en el presente o futuro. Esta forma enfatiza la flexibilidad o potencial de una situación o habilidad en un momento específico.
"""

let mustVerbDef = """
La construcción 'sujeto + must + verbo' en inglés se utiliza para expresar obligación o necesidad de realizar una acción. Equivale a decir 'deber' o 'tener que' en español. Por ejemplo, 'I must study' se traduce como 'Yo debo estudiar' o 'Yo tengo que estudiar'. Esta estructura comunica una fuerte recomendación o un requisito que el sujeto necesita cumplir, enfatizando la importancia de la acción a realizar.
"""

let mustBeVerbingDef = """
La construcción 'sujeto + must + be + verbo en gerundio' se usa para hablar sobre la obligación o la necesidad de que una acción esté ocurriendo en el momento presente. En español, se traduciría como 'deber estar haciendo algo'. Por ejemplo, 'He must be working' se traduce como 'Él debe estar trabajando'. Esta forma se utiliza para indicar que, dadas las circunstancias, se espera que la acción esté sucediendo en el presente, implicando una especie de necesidad o expectativa sobre el estado o actividad actual del sujeto.
"""

let isAreParticipleDef = """
La construcción 'objeto + is/are + participio pasado' en inglés se utiliza para formar la voz pasiva o para describir el estado de un objeto. 'Is' se usa con sustantivos singulares, mientras que 'are' se usa con sustantivos plurales o con el pronombre 'you'. Esta estructura se traduce al español como 'es/son + participio pasado'. Por ejemplo, 'The book is written' se traduce como 'El libro es escrito', aunque en español es más común decir 'El libro está escrito' para describir el estado. Se utiliza para enfocar la atención en el objeto de la acción más que en quien realiza la acción, o para describir una cualidad resultante de la acción. Es útil para expresar el resultado de acciones pasadas que afectan el estado presente del objeto.
"""

let isAreBeingVerbingDef = """
La construcción 'objeto + is being/are being + verbo en gerundio' en inglés se utiliza para formar la voz pasiva en tiempo presente continuo. 'Is being' se emplea con sustantivos singulares y 'are being' con plurales o con el pronombre 'you'. Esta estructura indica que una acción está siendo realizada sobre el objeto en el momento presente. Se traduce al español como 'está/están siendo + verbo en gerundio'. Por ejemplo, 'The house is being built' se traduce como 'La casa está siendo construida'. Esta forma es útil para enfocarse en el objeto que recibe la acción en un proceso que ocurre en el momento de hablar, destacando que la acción está en curso y no completada.
"""

let haveBeenHasBeenParticipleDef = """
La construcción 'objeto + have been/has been + participio pasado' en inglés se utiliza para formar la voz pasiva en tiempo presente perfecto. 'Has been' se usa con sustantivos singulares, y 'have been' con plurales o con el pronombre 'you'. Esta estructura indica que una acción fue realizada sobre el objeto en algún momento en el pasado y puede tener relevancia o efectos en el presente. Se traduce al español como 'ha/han sido + participio pasado'. Por ejemplo, 'The book has been published' se traduce como 'El libro ha sido publicado'. Esta forma es útil para enfocarse en el objeto que recibe la acción, destacando que la acción se completó en el pasado pero es relevante para el estado o situación actual del objeto.
"""

let wasWereParticipleDef = """
La construcción 'objeto + was/were + participio pasado' en inglés se utiliza para formar la voz pasiva en tiempo pasado simple. 'Was' se usa con sustantivos singulares y 'were' con sustantivos plurales o con el pronombre 'you'. Esta estructura indica que una acción fue realizada sobre el objeto en algún momento en el pasado. Se traduce al español como 'fue/ fueron + participio pasado'. Por ejemplo, 'The letter was written' se traduce como 'La carta fue escrita'. Esta forma es útil para enfocarse en el objeto que recibió la acción, resaltando que la acción ya se completó. Es comúnmente usada para hablar de eventos pasados, enfatizando el resultado de la acción sobre el objeto en lugar de quién realizó la acción.
"""

let wasBeingPassive = """
La construcción en inglés 'objeto + was/were + participio' se utiliza para formar oraciones en tiempo pasado pasivo. Significa que la acción fue realizada por alguien o algo, pero el foco está en la acción en sí, no en quien la realiza. Por ejemplo, 'The window was broken' (La ventana fue rota). Aquí, 'was' indica que es en pasado y se refiere a un sujeto singular ('the window'), mientras que 'broken' es el participio pasado del verbo 'to break'. Si el sujeto es plural, usaríamos 'were', como en 'The windows were broken' (Las ventanas fueron rotas). Esta estructura se centra en el estado del objeto después de que ocurrió la acción.
"""

let hadBeenPassive = """
La construcción 'objeto + had been + participio' en inglés se usa para expresar una acción que había sido completada en un momento específico del pasado, antes de otro evento pasado. Esta forma es conocida como el 'past perfect passive'. Se enfoca en el resultado de la acción sobre el objeto, más que en quién realizó la acción. Por ejemplo, 'The book had been written' (El libro había sido escrito) indica que, para un cierto momento en el pasado, el proceso de escribir el libro ya se había completado. Aquí, 'had been' actúa como el auxiliar, y 'written' es el participio pasado del verbo principal 'to write'. Este tiempo se utiliza para hablar de acciones pasadas que tienen relevancia o consecuencia en otro momento también pasado, como en 'By the time the award ceremony started, the book had been published' (Para cuando comenzó la ceremonia de premiación, el libro había sido publicado). La estructura pone énfasis en la acción completada y su efecto sobre el objeto, no en la acción en sí o quién la realizó.
"""

let willBeParticipleDef = """
La construcción 'objeto + will be + participio pasado' en inglés se utiliza para formar la voz pasiva en tiempo futuro. Esta estructura indica que una acción será realizada sobre el objeto en algún momento en el futuro. Se traduce al español como 'será + participio pasado'. Por ejemplo, 'The book will be published' se traduce como 'El libro será publicado'. Esta forma es útil para enfocarse en el objeto que recibirá la acción, destacando que la acción se llevará a cabo en un momento futuro. Permite al hablante hablar sobre eventos o acciones futuras que impactarán en el objeto mencionado, sin especificar quién realizará la acción.
"""

let objectWouldBeParticipleDef = """
La construcción 'objeto + would be + participio pasado' en inglés se utiliza para hablar sobre situaciones hipotéticas o condicionales, especialmente en contextos donde se imagina cómo sería un objeto bajo ciertas circunstancias. Esta estructura sugiere que si se dieran ciertas condiciones, el objeto alcanzaría el estado descrito por el participio pasado. Por ejemplo, 'The book would be published' implica que el libro sería publicado si se cumplieran ciertas condiciones previas. Es una forma efectiva de especular sobre posibilidades futuras o alternativas condicionales, permitiendo al hablante explorar diferentes resultados potenciales y expresar nociones de posibilidad o deseo respecto al estado o condición de un objeto en contextos hipotéticos.
"""

let forNounToVerbExplanation = """
La estructura 'for + sustantivo + to + verbo' se utiliza en inglés para expresar el propósito de una acción o la necesidad de que algo ocurra. Sirve para especificar quién necesita realizar la acción. Por ejemplo, 'It's important for me to go' (Es importante para mí ir) indica que es importante que el hablante realice la acción de ir. 'I need for Ana to listen' (Necesito que Ana escuche) muestra la necesidad de que Ana realice la acción de escuchar. Esta estructura es útil para enfocar en el sujeto que realiza la acción y clarificar el propósito o la necesidad de dicha acción.
"""

let isAreAmUsedToVerbDef = """
La construcción 'sujeto + is/are/am + used to + verbo' en inglés se utiliza para expresar que el sujeto está acostumbrado a realizar una acción o que una acción le resulta familiar debido a la experiencia o la práctica. 'Is' se usa con sustantivos singulares, 'are' con plurales o con el pronombre 'you', y 'am' con el pronombre 'I'. Esta estructura se traduce al español como 'estar acostumbrado/a a + verbo'. Por ejemplo, 'I am used to waking up early' se traduce como 'Estoy acostumbrado/a a despertarme temprano'. Esta forma es útil para hablar sobre hábitos o situaciones que son comunes y no representan una dificultad o desafío para el sujeto, debido a su familiaridad con la acción mencionada.
"""

let questionWordAuxSubjectVerbDef = """
La construcción 'palabra interrogativa + auxiliar + sujeto + verbo' en inglés es esencial para formular preguntas detalladas que requieren información específica, no solo respuestas de sí o no. La 'palabra interrogativa' (como quién, qué, dónde, cuándo, por qué, cómo) establece el tipo de información deseada. El 'auxiliar' (do, does, did, can, will, etc.) se ajusta al tiempo verbal y se sitúa antes del 'sujeto' para estructurar correctamente la pregunta. Por ejemplo, 'What do you think?' se traduce como '¿Qué piensas tú?'. Esta estructura promueve la claridad y precisión al buscar respuestas, facilitando la comunicación efectiva y el intercambio de información detallada. Es un pilar fundamental en el aprendizaje y uso del inglés, ya que permite a los hablantes indagar sobre aspectos específicos de una situación, evento o pensamiento, enriqueciendo así la interacción y el entendimiento entre interlocutores.
"""

let subjectUsedToVerbDef = """
La construcción 'sujeto + used to + verbo' en inglés se utiliza para hablar sobre acciones o situaciones que eran habituales en el pasado pero ya no ocurren en el presente. Esta estructura expresa que algo era una práctica común o un estado habitual en algún momento anterior de la vida del sujeto, pero que ha dejado de serlo. Por ejemplo, 'I used to play basketball' se traduce como 'Yo solía jugar al baloncesto'. Es una manera efectiva de contrastar el pasado con el presente, resaltando cambios en hábitos, comportamientos, o estados de ser. Esta construcción es clave para narrar experiencias personales, evocar nostalgia o subrayar cómo han cambiado las circunstancias o los individuos con el tiempo. Facilita la expresión de la continuidad y la discontinuidad de acciones y situaciones a lo largo de la vida, permitiendo una reflexión sobre el desarrollo personal y los cambios en el entorno o en las propias actividades.
"""

let subjectHaveToVerbDef = """
La construcción 'sujeto + have to + verbo' en inglés se utiliza para expresar obligación o necesidad de realizar una acción. Funciona de manera similar a 'tener que' en español. Indica que el sujeto está compelido por alguna circunstancia a llevar a cabo la acción especificada por el verbo. Por ejemplo, 'I have to work tomorrow' se traduce como 'Tengo que trabajar mañana'. Esta estructura es esencial para hablar sobre responsabilidades, deberes o requisitos que deben ser cumplidos. A diferencia de 'must', que también expresa obligación pero con un sentido más interno o personal, 'have to' a menudo sugiere una imposición externa o una necesidad práctica. Es útil para discutir situaciones en las que las acciones son dictadas por factores externos, tales como reglas, leyes, situaciones laborales, o exigencias académicas, reflejando la influencia de dichos factores en la vida cotidiana del sujeto.
"""

let subjectCausativeHaveObjectVerbDef = """
La construcción 'sujeto + causative have + objeto + verbo' en inglés se utiliza para indicar que el sujeto hace que otra persona realice una acción por él, implicando una delegación de tareas. Esta estructura, conocida como 'have causative', permite al hablante expresar que ha organizado, solicitado, o pagado a alguien para que realice una acción específica en su lugar. Por ejemplo, 'I had the car washed' se traduce como 'Hice que lavaran el coche' o 'Mandé a lavar el coche'. Es una forma eficaz de comunicar que la acción no fue realizada directamente por el sujeto, sino por otra persona bajo su instrucción o petición. La 'have causative' es particularmente útil para hablar sobre servicios profesionales, trabajos encargados, y situaciones en las que el sujeto se responsabiliza por el resultado de la acción sin realizarla personalmente, destacando la intermediación del sujeto en el proceso.
"""

let subjectGetObjectToVerbDef = """
La construcción 'sujeto + get + objeto + to + verbo' en inglés se utiliza para expresar que el sujeto persuade, convence o causa que otra persona realice una acción. Esta estructura sugiere una influencia o intervención del sujeto para que el objeto (otra persona) lleve a cabo una determinada acción. Por ejemplo, 'I got my friend to help me' se traduce como 'Conseguí que mi amigo me ayudara'. A diferencia de la forma causativa con 'have', que puede implicar organización o pago por un servicio, 'get' enfatiza más en la persuasión o motivación. Es útil para indicar el esfuerzo o la negociación realizada por el sujeto para lograr que la acción sea realizada por otro, destacando la dinámica de influencia y cooperación entre personas.
"""

let subjectAmAreIsSupposedToVerbDef = """
La construcción 'sujeto + am/are/is + supposed to + verbo' en inglés se utiliza para hablar sobre expectativas, obligaciones o lo que se espera que suceda según las normas, reglas o acuerdos. 'Am' se usa con el pronombre 'I', 'are' con sustantivos plurales o el pronombre 'you', y 'is' con sustantivos singulares. Esta estructura sugiere que hay una expectativa o requisito de que el sujeto realice la acción indicada por el verbo. Por ejemplo, 'You are supposed to wear a uniform' se traduce como 'Se supone que debes llevar uniforme'. Es útil para discutir responsabilidades asignadas, normas sociales o procedimientos estándar que deben ser seguidos. También puede indicar lo que se cree o se entiende que debería ocurrir en una situación dada, reflejando una combinación de deber y expectativa sobre el comportamiento o las acciones del sujeto.
"""

let subjectWasWereSupposedToDef = """
La construcción 'sujeto + was/were + supposed to + verbo' en inglés se utiliza para hablar sobre expectativas, obligaciones o acciones planeadas en el pasado que no se llevaron a cabo. 'Was' se usa con sustantivos singulares y 'were' con sustantivos plurales o con el pronombre 'you'. Esta estructura indica que había una expectativa o intención de que el sujeto realizara la acción indicada por el verbo, pero por alguna razón, la acción no se completó. Por ejemplo, 'I was supposed to attend the meeting' se traduce como 'Se suponía que debía asistir a la reunión'. Es útil para expresar planes o responsabilidades que no se cumplieron, permitiendo al hablante discutir situaciones pasadas donde las expectativas no se alinearon con los resultados reales, reflejando una discrepancia entre lo planeado y lo ocurrido.
"""

let subjectWantObjectToVerbDef = """
La construcción 'sujeto + want + objeto + to + verbo' en inglés se utiliza para expresar el deseo del sujeto de que otra persona realice una acción. Esta estructura comunica la esperanza o el deseo de que el objeto (generalmente otra persona) lleve a cabo la acción especificada por el verbo. Por ejemplo, 'She wants her team to win' se traduce como 'Ella quiere que su equipo gane'. Es una forma efectiva de expresar deseos, expectativas o preferencias sobre las acciones de otros, destacando la intención del sujeto hacia el resultado de una acción realizada por alguien más. Esta construcción es útil para hablar sobre deseos relacionados con otras personas o situaciones externas, enfatizando la influencia o el impacto deseado por el sujeto en el entorno o en las acciones de otros.
"""

let goingToDef = """
La construcción 'sujeto + am/are/is + going to + verbo' en inglés se utiliza para hablar sobre intenciones futuras o eventos que se consideran muy probables de suceder. 'Am' se usa con el pronombre 'I', 'are' con sustantivos plurales o el pronombre 'you', y 'is' con sustantivos singulares. Esta estructura indica planes o decisiones ya tomadas sobre el futuro, así como predicciones basadas en evidencia actual. Por ejemplo, 'She is going to study medicine' se traduce como 'Ella va a estudiar medicina'. Es útil para discutir intenciones específicas y predicciones concretas sobre lo que se cree que ocurrirá.
"""

let goingToPastDef = """
Por otro lado, 'sujeto + was/were + going to + verbo' se utiliza para hablar sobre planes o intenciones en el pasado que no necesariamente se realizaron. 'Was' se usa con sustantivos singulares y 'were' con plurales o con el pronombre 'you'. Indica que había una intención o planificación previa para realizar una acción, pero no especifica si la acción se llevó a cabo. Por ejemplo, 'I was going to call you' se traduce como 'Iba a llamarte'. Esta estructura es útil para hablar sobre planes pasados, mostrando la intención de realizar acciones que por alguna razón no se concretaron.
"""

let pvppDef = """
La construcción 'pronombre + verbo transitivo + pronombre de objeto (me, him, her, etc.)' en inglés se utiliza para formar oraciones donde el sujeto realiza una acción directamente sobre un objeto, que se expresa mediante un pronombre de objeto. Los verbos transitivos requieren de un objeto para completar su significado. Por ejemplo, 'She loves him' se traduce como 'Ella lo ama'. Esta estructura es fundamental para expresar acciones que tienen un impacto directo sobre otra persona o entidad, destacando la relación entre el sujeto, la acción y el receptor de dicha acción. Es útil para construir oraciones claras y directas que comunican la interacción entre diferentes sujetos, permitiendo expresar una amplia gama de actividades, sentimientos y relaciones interpersonales de manera concisa y precisa.
"""

let reflexivoDef = """
La construcción 'pronombre + verbo + pronombre reflexivo (myself, yourself, himself, etc.)' en inglés se utiliza para indicar que la acción del verbo recae sobre el mismo sujeto que la realiza. Los pronombres reflexivos se utilizan para enfatizar que el sujeto y el objeto de la acción son la misma persona o cosa. Por ejemplo, 'He teaches himself' se traduce como 'Él se enseña a sí mismo'. Esta estructura es crucial para expresar acciones auto-dirigidas o situaciones en las cuales el sujeto realiza la acción por y para sí mismo. Es útil para destacar la autonomía del sujeto en la acción, mostrando una capacidad de auto-suficiencia o auto-cuidado, y es comúnmente empleada para hablar sobre aprendizaje autodidacta, reflexión personal, o actividades que uno realiza sin la ayuda de otros.
"""

let comparativoDef = """
La construcción 'sustantivo + verbo copulativo + adjetivo comparativo + than + comparación' en inglés se utiliza para comparar dos elementos en términos de una cualidad o característica, donde el adjetivo en su forma comparativa indica que el sustantivo posee más o menos de esa cualidad en relación con el elemento de comparación. Los verbos copulativos más comunes son 'is', 'are', 'was', y 'were'. Por ejemplo, 'This book is more interesting than the other one' se traduce como 'Este libro es más interesante que el otro'. Esta estructura es fundamental para establecer comparaciones directas entre dos objetos, personas, lugares, o situaciones, permitiendo al hablante expresar diferencias en grado de cualidades o características específicas. Es útil para tomar decisiones, expresar preferencias, o simplemente para describir y contrastar dos elementos en una conversación o texto.
"""

let superlativoDef = """
La construcción 'sustantivo + verbo copulativo + the most + adjetivo' en inglés se utiliza para formar el superlativo de un adjetivo, indicando que el sustantivo posee una cualidad en el grado más alto en comparación con todos los demás en un grupo o categoría. Los verbos copulativos comunes incluyen 'is', 'are', 'was', y 'were'. Por ejemplo, 'She is the most talented in the class' se traduce como 'Ella es la más talentosa de la clase'. Esta estructura es esencial para destacar la singularidad o excepcionalidad de un sujeto o objeto dentro de un conjunto, señalando que supera a los demás en una cualidad específica. Es ampliamente usada para expresar admiración, hacer énfasis en la superioridad o simplemente para clasificar objetos o personas según sus características.
"""

let wishPastSimpleDef = """
La construcción 'wish + past simple' en inglés se utiliza para expresar un deseo sobre una situación que se quiere diferente en el presente. El uso del 'past simple' después de 'wish' no indica una acción pasada, sino un deseo actual de que las cosas fueran de otra manera. Por ejemplo, 'I wish I knew the answer' se traduce como 'Desearía saber la respuesta'. Esta estructura permite al hablante expresar remordimientos, deseos no cumplidos, o situaciones hipotéticas contrarias a la realidad actual, destacando un contraste entre lo que es y lo que el hablante desearía que fuera. Es una herramienta lingüística poderosa para comunicar anhelos, esperanzas o la insatisfacción con el estado actual de las cosas, invitando a la reflexión sobre alternativas deseables o situaciones imaginadas.
"""

let wishWouldDef = """
La construcción 'wish + would' en inglés se utiliza para expresar el deseo de que alguien más realice una acción específica en el futuro o deje de realizarla. A diferencia de 'wish + past simple', que se refiere a situaciones presentes o condiciones generales que el hablante quisiera que fueran diferentes, 'wish + would' se enfoca en acciones futuras y cambios de comportamiento en otras personas o situaciones. Por ejemplo, 'I wish you would stay' se traduce como 'Desearía que te quedaras'. Esta estructura es útil para expresar deseos relacionados con cambios en el comportamiento de otros o en el desarrollo de eventos futuros, reflejando la esperanza de una intervención que altere el curso de los acontecimientos actuales o futuros. Es importante notar que 'wish + would' no se usa para expresar deseos sobre las propias acciones del hablante, sino sobre las acciones de terceros o situaciones fuera del control directo del hablante.
"""

let wishHadParticipleDef = """
La construcción 'wish + had + participio pasado' en inglés se utiliza para expresar el deseo de que algo hubiera ocurrido de manera diferente en el pasado. Esta estructura refleja un arrepentimiento o una insatisfacción con respecto a eventos o acciones que ya sucedieron. Por ejemplo, 'I wish I had studied more' se traduce como 'Desearía haber estudiado más'. A diferencia de 'wish + past simple' o 'wish + would', que se enfocan en el presente o el futuro, 'wish + had + participio pasado' permite al hablante expresar deseos retrospectivos, imaginando un pasado alternativo. Es una herramienta lingüística valiosa para comunicar sentimientos de arrepentimiento o la contemplación de cómo las decisiones pasadas podrían haber llevado a diferentes resultados.
"""

let thereBeDef = """
La construcción 'there + be' en inglés se utiliza para indicar la existencia o presencia de algo o alguien en un lugar o situación. 'Be' se conjuga según el tiempo y el número; por ejemplo, 'is' para singular en presente, 'are' para plural en presente, 'was' para singular en pasado, y 'were' para plural en pasado. Esta estructura se traduce al español como 'hay' en presente, 'había' en pasado, etc. Por ejemplo, 'There is a book on the table' se traduce como 'Hay un libro en la mesa'. Es fundamental para introducir nuevos sujetos en una conversación o texto, estableciendo la existencia de personas, objetos, o situaciones sin especificar necesariamente quién o qué son esos sujetos. 'There + be' es una herramienta útil para describir escenarios, ambientes o para hacer inventarios de elementos presentes en un determinado contexto.
"""

let nounNounNounDef = """
La construcción 'sustantivo + sustantivo + sustantivo', comúnmente conocida como 'noun compounds' o compuestos nominales en inglés, se utiliza para formar unidades léxicas donde los sustantivos funcionan como modificadores de otros sustantivos, atribuyéndoles características específicas o definiendo una relación entre ellos. Este tipo de estructura es muy productiva en inglés para crear nuevos términos que describen objetos, conceptos o entidades de manera concisa. Por ejemplo, 'coffee table book' (libro de mesa de café) utiliza dos sustantivos ('coffee table') para modificar a un tercero ('book'), describiendo un tipo de libro grande y artístico diseñado para exhibirse en una mesa de café. Estos compuestos permiten la creación de términos específicos y detallados, facilitando la comunicación precisa de ideas complejas mediante la combinación de palabras simples.
"""

let verbalAdjectivesDef = """
Los adjetivos verbales en inglés, conocidos también como 'participios', son formas de los verbos que funcionan como adjetivos para describir sustantivos. Existen principalmente en dos formas: participios presentes, que terminan en '-ing' y describen una acción en curso o una cualidad derivada de la acción del verbo (por ejemplo, 'running water' - agua corriente), y participios pasados, que a menudo terminan en '-ed', '-d', '-t', '-en', o '-n' y describen un estado resultante de la acción del verbo (por ejemplo, 'broken glass' - vidrio roto). Estos adjetivos pueden indicar una variedad de estados o acciones relacionadas con el sustantivo que modifican, añadiendo una capa de significado relacionada con el tiempo, la condición, la percepción o la emoción. Son herramientas lingüísticas valiosas para enriquecer la descripción de sustantivos, permitiendo expresar en detalle las características o estados de los objetos o seres descritos.
"""

let verbosJuntosDef = """
La construcción 'sujeto + verbo + to + verbo' en inglés se utiliza para expresar la intención, la finalidad o el objetivo de una acción. Ejemplo de esto es 'I plan to travel', que se traduce como 'Planeo viajar', indicando la intención del sujeto de realizar una acción futura. Por otro lado, 'sujeto + verbo + verbo en gerundio' se utiliza para describir acciones concurrentes o características relacionadas con el sujeto. Un ejemplo sería 'I like running', que significa 'Me gusta correr', mostrando una preferencia o hábito del sujeto. Ambas estructuras son fundamentales en inglés para expresar propósitos, intenciones, gustos, y actividades en curso, permitiendo al hablante detallar no solo lo que hace o hará, sino también sus motivaciones y preferencias.
"""

let passiveCausativeStructureDef = """
The passive causative structure in English, typically following the pattern 'subject + have/get + object + past participle (+ by + agent),' is used to express that the subject arranges for someone else to perform an action on an object. This structure emphasizes the action being done to the object rather than who is performing the action. For example, 'She had the report written by a professional' indicates that she arranged for the report to be written by someone else, specifically a professional in this case. The inclusion of 'by + agent' is optional and used when the speaker wants to specify who performed the action. This construction is useful for highlighting the result of an action and the involvement of an external party in completing a task on behalf of the subject.
"""

let tagQuestionDef = """
Las preguntas con etiqueta (tag questions) son una forma corta de confirmar información en inglés. Se forman agregando una pequeña pregunta al final de una oración declarativa o imperativa. La etiqueta cambia dependiendo de si la oración principal es positiva o negativa. Por ejemplo: 'Está nevando, ¿verdad?' (Oración positiva + etiqueta negativa) o 'No te gusta el café, ¿verdad?' (Oración negativa + etiqueta positiva). Las preguntas con etiqueta ayudan a verificar información o buscar acuerdo en una conversación.
"""

let feellikeDef = """
La construcción sujeto + feel like + verbo en inglés se utiliza para expresar un estado de ánimo o una inclinación temporal hacia una acción. Se traduce literalmente como "sentirse como" pero no tiene un equivalente directo en español. Aquí te mostramos algunos ejemplos para que entiendas mejor su uso:
* I feel like dancing. (Tengo ganas de bailar.)
* She doesn't feel like talking. (Ella no tiene ganas de hablar.)
* We felt like going for a walk. (Teníamos ganas de salir a caminar.)

En estos ejemplos, feel like indica un deseo o una inclinación temporal, no una emoción permanente.
"""

let phrasalVerbsDef = """
Un phrasal verb es una combinación de un verbo común y una preposición o adverbio, creando un significado nuevo. Por ejemplo, 'look up' significa buscar información. Importante, algunos phrasal verbs pueden dividirse por el objeto (ej., 'put the book down'), mientras que otros no (ej., 'get along with'). Esto significa que con verbos divisibles, el objeto puede ir entre el verbo y la preposición/adverbio, o después de ambos. Con los no divisibles, el objeto siempre sigue al phrasal verb. Aprender esta distinción es crucial para el uso correcto de los phrasal verbs en inglés. Su uso es esencial para la comunicación efectiva, y aprenderlos en contexto facilita su memorización.
"""

let aslongasDef = """
La expresión 'as long as' se utiliza en inglés para establecer una condición necesaria para que algo ocurra. Equivale al 'siempre y cuando' en español. Por ejemplo, 'You can go out as long as you finish your homework' se traduce como 'Puedes salir siempre y cuando termines tus deberes'. Es una manera de conectar dos ideas donde la realización de la primera depende de cumplir con la condición que establece la segunda.
"""

let nowthatDef = """
'Now that' es un conector en inglés que se utiliza para referirse a una situación que ha cambiado y que permite o justifica una nueva acción o estado. Es similar al 'ahora que' en español. Por ejemplo, 'Now that you are here, we can start the meeting' se traduciría como 'Ahora que estás aquí, podemos comenzar la reunión'. Este conector se usa para introducir el contexto o la razón por la que algo es posible o relevante en el momento presente.
"""

let unlessDef = """
El conector 'unless' se utiliza en inglés para introducir una condición negativa, equivalente a 'a menos que' o 'salvo que' en español. Indica que algo solo ocurrirá si no se cumple la condición especificada por 'unless'. Por ejemplo, 'You will not pass the exam unless you study' se traduce como 'No aprobarás el examen a menos que estudies'. Es una forma de expresar que la realización de la acción principal está condicionada a no cumplirse lo que se indica después de 'unless'.
"""

