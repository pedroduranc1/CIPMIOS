import Foundation

struct TextEntry {
    let title: String
    let content: String
}

struct CatPreg: Codable {
    let nombre: String
    let pregs: [pregStruc]
}

struct pregStruc: Codable{
    let preg: String
    let preg1: String
    let preg2: String
    let preg3: String
    let preg4: String
    let respCorrec: String
}

struct Texts {
    static let shared = Texts()
    
    let entries: [String: TextEntry]
    
    private init() {
        entries = [
            "Black Fathers": TextEntry(
                title: "Black Fathers",
                content: """
                Years ago, I interviewed Kweisi Mfume, then the president of the NAACP. “As between the presence of white racism and the absence of black fathers,” I asked, “Which poses the bigger threat to the black community?” Without missing a beat, he said, “The absence of black fathers.

                "It was President Barack Obama who said, \"We all know the statistics. That children who grow up without a father are five times more likely to live in poverty and commit crime; nine times more likely to drop out of school and 20 times more likely to end up in prison.”

                "The Journal of Research on Adolescence confirms that even after controlling for varying levels of household income, kids in father-absent homes are more likely to end up in jail. And kids who never had a father in the house are the most likely to wind up behind bars.

                "In 1960, 5 percent of America's children entered the world without a mother and father married to each other. By 1980 it was 18 percent, by 2000 it had risen to 33 percent, and fifteen years later, the number reached 41 percent.

                "For blacks, even during slavery when marriage for slaves was illegal, black children were more likely than today to be raised by both their mother and father. Economist Walter Williams has written that, according to census data, from 1890 to 1940, a black child was more likely to grow up with married parents than a white child.

                "For blacks, out-of-wedlock births have gone from 25 percent in 1965 to 73 percent in 2015. For whites, from less than 5 percent to over 25 percent. And for Hispanics, out-of-wedlock births have risen to 53 percent.

                "What happened to fathers?

                "The answer is found in a basic law of economics: If you subsidize undesirable behavior you will get more undesirable behavior. In 1949, the nation’s poverty rate was 34 percent. By 1965, it was cut in half, to 17 percent -- all before President Lyndon Johnson’s so-called War on Poverty. But after that war began in 1965, poverty began to flat line. From 1965 until now, the government has spent over $20 trillion to fight poverty.

                "The poverty rate has remained unchanged, but the relationship between poor men and women has changed – dramatically. That’s because our generous welfare system allows women, in effect, to marry the government. And this makes it all too easy for men to abandon their traditional moral and financial responsibilities. Psychologists call such dependency \"learned helplessness.

                "How do we know that the welfare state creates disincentives that hurt the very people we are trying to help? They tell us.

                "In 1985, the Los Angeles Times asked both the poor and the non-poor whether poor women \"often\"have children to get additional benefits. Most of the non-poor respondents said no. However, 64 percent of poor respondents said yes. Now, who do you think is in a better position to know?

                "Tupac Shakur, the late rapper, once said: \"I know for a fact that had I had a father, I'd have some discipline. I'd have more confidence.\"He admitted he began running with gangs because he wanted the things a father gives to a child, especially to a boy: structure and protection.

                "“Your mother cannot calm you down the way a man can,” Shakur said. “You need a man to teach you how to be a man.

                "In my book \"Dear Father, Dear Son,\"I write about my rough, tough World War II Marine staff sergeant dad. Born in the Jim Crow South of Athens, Ga., he was 14 at the start of the Great Depression. Growing up, I watched my father work two full-time jobs as a janitor. He also cooked for a rich family on the weekends--and somehow managed to go to night school to get his GED. When I was 10, my father opened a small restaurant that he ran until he retired in his mid-80s.

                "He was never angry or bitter--and insisted that today’s America was very different from the world of racial segregation and limited opportunity in which he grew up. \"Hard work wins,” he told me and my brothers. “You get out of life what you put into it. You can’t control the outcome, but you are 100% in control of the effort. And before blaming other people, go to the nearest mirror and ask yourself, ‘what could I have done to change the outcome?’” This advice shaped my life.

                "Fathers matter. Until we have a government policy that makes that its first priority, nothing will change.

                "I’m Larry Elder for Prager University.
"""
            ),
            "IsAmericaRacist": TextEntry(
                title: "Is America Racist",
                content: """
                Is racism still a major problem in America? President Barack Obama certainly thinks so. He said that racism is “in our DNA.” Really? If racism is in our DNA, doesn’t that mean it's immutable, unchangeable?
                            
                
                "But America has changed -- and dramatically so. In 1960, 60% of Americans said they would never vote for a black president. Almost 50 years later, the black man who said racism is in America’s DNA was elected president, and four years later re-elected. That’s only the most obvious example of racial progress. There are many others."
                            
                "Take inter-racial marriage. As William H. Frey of the Brookings Institution wrote, “Sociologists have traditionally viewed multiracial marriage as a benchmark for the ultimate stage of assimilation of a particular group into society.” Black-white marriages were still illegal in 16 states until 1967. And a 1958 Gallup poll found that only 4% of Americans approved of black-white marriages. Today that number is 87%. In 1960, of all marriages by blacks, only 1.7 percent were black-white. Today, it’s 12 percent and rising."
                
                "Now what about “racial profiling” and abuse of blacks by police? Doesn’t that prove that racism remains a major problem? In the summer of 2014, Ferguson, Missouri became ground zero for this accusation when a white policeman shot and killed an unarmed black teenager.  While a Department of Justice investigation of the incident cleared the officer of any wrongdoing, it did accuse the city’s police department of racial bias."
                
                "But what was the Justice Department report’s most headline grabbing stat? The gap between the percentage of blacks living in Ferguson -- 67% -- and the percentage of those stopped by police for traffic violation who are black -- 85%. An 18 point discrepancy."
                
                "Racism, right? Not so fast." +
                            
                "Blacks comprise 25% of New York City, but account for 55% of those stopped for traffic offenses -- a 30-point discrepancy, far bigger than that of Ferguson. Why isn’t the NYPD, a department that is now majority minority, considered even more institutionally racist than the Ferguson PD? The answer is you cannot have an honest discussion about police conduct without an honest discussion of black crime."
                
                "Though blacks are 13% of the population, they commit 50% of the nation’s homicides, and almost always the victim is another black person, just as most white homicides are against other whites. In 2012, according to the Center for Disease Control, police killed 123 blacks, while, by the way, killing over twice that many whites. But that same year blacks killed over 6,000 people -- again, mostly other blacks."
                
                "What about traffic stops? Unlike when responding to dispatch calls, police officers exercise more discretion when it comes to traffic stops. Therefore “racist” cops can have a field day when it comes to traffic stops, right?"
                
                "Actually, no."
                
                "The National Institute of Justice is the research agency of the Department of Justice. In 2013, the National Institute of Justice published a study called \"Race, Trust and Police Legitimacy.\" Three out of four black drivers admitted that they were stopped by the police for a \"legitimate reason.\" Blacks, compared to whites, were on average more likely to commit speeding and other traffic offenses. The Institute wrote, “Seatbelt usage is chronically lower among black drivers. If a law enforcement agency aggressively enforces seatbelt violations, police will stop more black drivers.\"
                
                "The NIJ’s conclusion? These numerical disparities result from \"differences in offending\" -- in other words, not because of racism."
                
                "Similarly, the National Highway Traffic Safety Administration also found that blacks violate traffic laws at higher rates than whites -- in every offense, whether it’s driving without a license, not wearing a seat belt, not using a child safety seat or speeding."
                
                "Is there still racism in America? Of course, there is. But racism is not in America’s DNA. Recent history and a lot of research and data prove it."
                
                "As liberal Harvard sociologist Orlando Patterson said, America, “is now the least racist white-majority society in the world; has a better record of legal protections of minorities than any other society, white or black; offers more opportunities to a greater number of black persons than any other society, including all of those of Africa.\"
                
                "Patterson, by the way, is black."
                
                "I’m Larry Elder for Prager University."
                """
            ),
            "Don't Compare Yourself to Others":TextEntry(
                title:"Don't Compare Yourself to Others",
                content:"""
                        "Do you ever look at the lives of people around you and say, “Man, I wish that was me!”?"
            
                        "You know you do. Everybody does. But I bet you never compared yourself to me. Haven’t heard of me? I do have my own TV show...in the middle of the night."
            
                        "When I started I wanted to be as big as Jerry Seinfeld. I’m not. And yet, I’m a pretty happy guy. Here’s why: I stopped comparing myself to other people. Seriously, that’s the whole trick."
            
                        "Here’s what I mean."
            
                        "If my happiness were based on being the biggest comedian in the business, I’d be mad at whoever was getting more Netflix specials than me. (I have zero.) If it were based on having the best TV ratings, I’d be mad at Jimmy Fallon. He beats me every night. And if it were based on being rich, I’d be mad at a lot of people. And even if I were rich – really rich, like #10 on the Forbes 400 rich – I’d be mad that there were nine other people richer than me. It never ends. Comparing yourself to others creates a totally unrealistic measure for what constitutes success. And I know, because the entertainment business is all about unrealistic expectations."
            
                        "All through my career I’d meet with satisfied customers after my shows and they’d say,“Hey, you’re good! Maybe someday you’ll be successful like Jerry Seinfeld.” He’s the measure of success? The top guy?"
            
                        "When someone tells you they’re a doctor, you don’t say, “Well, maybe someday you’ll cure a disease and save millions of lives, just like Jonas Salk did for polio.”"
            
                        "Or a lawyer: “Oh, wow, so what’s your ultimate goal? The Supreme Court?”"
            
                        "Do you see how crazy that sounds?"
            
                        "Professional success is about making a living, pursuing excellence, and finding meaning in what you do."
            
                        "When I first started doing standup, I was a nobody. It took more than a decade of playing in front of tuned-out crowds before it started paying the bills. Ten years is a lot of time to tell jokes for no money to people who aren’t laughing."
            
                        "In those days, I spent a lot of time thinking about the comedians I admired. The guys at the top. I wanted those big, sold out houses I wasn’t playing. The big paydays I wasn’t making. TheTV specials I wasn’t doing."
            
                        "And not just their success; their talent. I’d look at comics like George Carlin, Robin Williams and Louis C.K. They were all able to turn their dark, personal struggles into brilliant comedy. I envy their talent, but I wouldn’t want the dark personal struggles that went along with it."
            
                        "If you don’t factor in everything about whoever you’re comparing yourself to, you’re playing a sort of mix-and-match game that doesn’t exist in the real world."
            
                        "Here’s one of life’s little truths: everyone is a package deal. You can’t view one element of someone else’s life in isolation. That’s cheating."
            
                        "You can’t say, “I want Louis C.K.’s money and fame, Jay Leno’s car collection and Tom Shillue’s wife and kids.” That person doesn’t exist! If he did, he’d be pretty cool. I would definitely want to hang with him."
            
                        "Everyone has pain in their lives. Think of anybody who you know really well. You know the awful stuff they’ve had to deal with -- the demons they battle. How many dead rock stars, movie stars and, yes, comedians does it take to convince us all that everyone’s life is hard?"
            
                        "Face it."
            
                        "You really don’t want someone else’s life. You want your own life -- only better. But that’s the thing. You can make your life better by not doing something – comparing yourself to other people."
            
                        "Back when I was a nobody, I wanted to sell out the biggest venues and have a prime-time TV show with millions of viewers. Now I sell out small venues and I’m on in the middle of the night with half a million viewers. And I appreciate every one of them."
            
                        "I guess when I compare myself now to myself then, I’m doing okay. You should try it."
            
                        "I’m Tom Shillue for Prager University. "
            """)
            // Add other entries here following the same pattern
        ]
    }
    
    func entry(forKey key: String) -> TextEntry? {
        return entries[key]
    }
}

// Example of how to access an entry
//if let blackFathersText = Texts.shared.entry(forKey: "BlackFathers") {
//    print(blackFathersText.title)
//    print(blackFathersText.content)
//}

let DatosPregRachel: [CatPreg] = [
    CatPreg(nombre: "Black Fathers", pregs: [
        pregStruc(preg: "Who did the author interview years ago?", preg1: "Martin Luther King Jr", preg2: "Al Sharpton", preg3: "Kweisi Mfume, the president of the NAACP", preg4: "Jesse Jackson", respCorrec: "Kweisi Mfume, the president of the NAACP"),
        pregStruc(preg: "According to President Barack Obama, what are the statistics for children who grow up without a father?",
                  preg1: "They are five times more likely to live in poverty and commit crime; nine times more likely to drop out of school and 20 times more likely to end up in prison",
                  preg2: "They are three times more likely to live in poverty and commit crime; six times more likely to drop out of school and 15 times more likely to end up in prison",
                  preg3: "They are four times more likely to live in poverty and commit crime; eight times more likely to drop out of school and 18 times more likely to end up in prison",
                  preg4: "They are six times more likely to live in poverty and commit crime; 10 times more likely to drop out of school and 25 times more likely to end up in prison",
                  respCorrec: "They are five times more likely to live in poverty and commit crime; nine times more likely to drop out of school and 20 times more likely to end up in prison"),
        pregStruc(preg: "What does the Journal of Research on Adolescence confirm about kids in father-absent homes?",
                  preg1: "They are less likely to engage in risky behavior",
                  preg2: "They are more likely to graduate from college",
                  preg3: "They are more likely to have stable relationships",
                  preg4: "They are more likely to end up in jail",
                  respCorrec: "They are more likely to end up in jail"),
        pregStruc(
            preg: "What is the current percentage of America's children who enter the world without a mother and father married to each other?",
            preg1: "50 percent",
            preg2: "60 percent",
            preg3: "41 percent",
            preg4: "70 percent",
            respCorrec: "41 percent"
        ),
        pregStruc(
            preg: "Were black children more likely to grow up with married parents during slavery than today?",
            preg1: "No, they were less likely",
            preg2: "Yes, but only slightly",
            preg3: "Yes, significantly more likely",
            preg4: "Yes, according to economist Walter Williams",
            respCorrec: "Yes, according to economist Walter Williams"
        ),
        pregStruc(
            preg: "What is the percentage of out-of-wedlock births for blacks in 2015?",
            preg1: "53 percent",
            preg2: "73 percent",
            preg3: "63 percent",
            preg4: "83 percent",
            respCorrec: "73 percent"
        ),
        pregStruc(
            preg: "What does the author attribute the decline in the presence of fathers to?",
            preg1: "The rise of feminism",
            preg2: "The decrease in religious values",
            preg3: "The welfare system that allows women to marry the government",
            preg4: "The welfare system that allows women to marry the government",
            respCorrec: "The welfare system that allows women to marry the government"
        ),
        pregStruc(
            preg: "What is the name of the late named rapper?",
            preg1: "Lil Wayne",
            preg2: "Tupac Shakur",
            preg3: "Drake",
            preg4: "Asap Rocky",
            respCorrec: "Tupac Shakur"),
        pregStruc(
            preg: "What do psychologists call the dependency that arises from the welfare system?",
            preg1: "Learned helplessness",
            preg2: "Enabling behavior",
            preg3: "Codependency",
            preg4: "Social welfare syndrome",
            respCorrec: "Learned helplessness"
        ),
        pregStruc(
            preg: "What did a 1985 Los Angeles Times survey find about poor women having children to get additional benefits?",
            preg1: "Most of the non-poor respondents said yes",
            preg2: "50 percent of poor respondents said yes",
            preg3: "64 percent of poor respondents said yes",
            preg4: "75 percent of poor respondents said yes",
            respCorrec: "64 percent of poor respondents said yes"
        ),
        pregStruc(
            preg: "What did Tupac Shakur say he missed out on by not having a father?",
            preg1: "Material possessions",
            preg2: "A mother's love",
            preg3: "A Grandma's love",
            preg4: "Discipline and confidence",
            respCorrec: "Discipline and confidence"
        ),
        pregStruc(
            preg: "What did Shakur say a man can provide that a mother cannot?",
            preg1: "The ability to calm a child down and teach them how to be a man",
            preg2: "The ability to teach a child how to fight",
            preg3: "The ability to teach a child how to be a gentleman",
            preg4: "The ability to teach a child how to be a man",
            respCorrec: "The ability to teach a child how to be a man"
        ),
        pregStruc(
            preg: "What was the author's father's occupation during the Great Depression?",
            preg1: "Lawyer",
            preg2: "Teacher",
            preg3: "Fireman",
            preg4: "Janitor",
            respCorrec: "Janitor"
        ),
        pregStruc(
            preg: "What did the author's father tell him and his brothers about life?",
            preg1: "That hard work doesn't pay off",
            preg2: "all of the above",
            preg3: "That success is all about who you know",
            preg4: "That hard work wins, and you get out of life what you put into it",
            respCorrec: "That hard work wins, and you get out of life what you put into it"
        ),
        pregStruc(
            preg: "According to the author, what is necessary for change in the absence of fathers?",
            preg1: "A government policy that prioritizes the importance of fathers",
            preg2: "Increased government welfare benefits",
            preg3: "More government-funded job training programs",
            preg4: "leave everything as is",
            respCorrec: "A government policy that prioritizes the importance of fathers"
        ),
        pregStruc(
            preg: "Who is the author of the essay?",
            preg1: "Cornel West",
            preg2: "Michael Eric Dyson",
            preg3: "Larry Elder",
            preg4: "Barack Obama",
            respCorrec: "Larry Elder"
        )
    ]),
    CatPreg(nombre: "Is America Racist?", pregs: [
        pregStruc(preg: "According to the text, what percentage of Americans in 1960 said they would never vote for a black president?",
                  preg1: "30%",
                  preg2: "40%",
                  preg3: "50%",
                  preg4: "60%",
                  respCorrec: "60%"),
        pregStruc(preg: "In 1958, what percentage of Americans approved of black-white marriages?",
                  preg1: "4%",
                  preg2: "14%",
                  preg3: "24%",
                  preg4: "34%",
                  respCorrec: "4%"),
        pregStruc(preg: "Today, what percentage of Americans approve of black-white marriages?",
                  preg1: "47%",
                  preg2: "67%",
                  preg3: "87%",
                  preg4: "97%",
                  respCorrec: "87%"),
        pregStruc(preg: "What percentage of all marriages by blacks were black-white in 1960?",
                  preg1: "0.7%",
                  preg2: "1.7%",
                  preg3: "2.7%",
                  preg4: "3.7%",
                  respCorrec: "1.7%"),
        pregStruc(preg: "What is the current percentage of black-white marriages among all marriages by blacks?",
                  preg1: "8%",
                  preg2: "10%",
                  preg3: "12%",
                  preg4: "14%",
                  respCorrec: "12%"),
        pregStruc(preg: "In 2012, according to the CDC, how many blacks were killed by the police?",
                  preg1: "63",
                  preg2: "123",
                  preg3: "183",
                  preg4: "243",
                  respCorrec: "123"),
        pregStruc(preg: "In the same year, how many whites were killed by the police according to the CDC?",
                  preg1: "123",
                  preg2: "246",
                  preg3: "369",
                  preg4: "492",
                  respCorrec: "246"),
        pregStruc(preg: "What is the research agency of the Department of Justice called?",
                  preg1: "National Institute of Justice",
                  preg2: "National Highway Traffic Safety Administration",
                  preg3: "Federal Bureau of Investigation",
                  preg4: "Central Intelligence Agency",
                  respCorrec: "National Institute of Justice"),
        pregStruc(preg: "What is the title of the 2013 study published by the National Institute of Justice?",
                  preg1: "Race, Crime, and Policing",
                  preg2: "Race, Trust, and Police Legitimacy",
                  preg3: "Racial Disparities in Traffic Stops",
                  preg4: "The Impact of Race on Police Behavior",
                  respCorrec: "Race, Trust, and Police Legitimacy"),
        pregStruc(preg: "What percentage of black drivers admitted that they were stopped by the police for a legitimate reason?",
                  preg1: "25%",
                  preg2: "50%",
                  preg3: "75%",
                  preg4: "100%",
                  respCorrec: "75%"),
        pregStruc(preg: "According to the National Highway Traffic Safety Administration, do blacks or whites violate traffic laws at higher rates?",
                  preg1: "Blacks",
                  preg2: "Whites",
                  preg3: "Both have the same rate",
                  preg4: "The study does not specify",
                  respCorrec: "Blacks"),
        pregStruc(preg: "What is the gap between the percentage of blacks living in Ferguson and the percentage of those stopped by police for traffic violations who are black?",
                  preg1: "8 points",
                  preg2: "12 points",
                  preg3: "18 points",
                  preg4: "24 points",
                  respCorrec: "18 points"),
        pregStruc(preg: "What percentage of blacks admitted they were stopped by the police for a legitimate reason according to the 2013 National Institute of Justice study?",
                  preg1: "50%",
                  preg2: "75%",
                  preg3: "90%",
                  preg4: "25%",
                  respCorrec: "75%"),
        pregStruc(preg: "Which institution found that blacks violate traffic laws at higher rates than whites in every offense?",
                  preg1: "National Institute of Justice",
                  preg2: "National Highway Traffic Safety Administration",
                  preg3: "Department of Justice",
                  preg4: "Federal Bureau of Investigation",
                  respCorrec: "National Highway Traffic Safety Administration"),
        pregStruc(preg: "According to Orlando Patterson, what does America offer more of to black persons compared to any other society?",
                  preg1: "Educational opportunities",
                  preg2: "Legal protections",
                  preg3: "Job opportunities",
                  preg4: "Social integration",
                  respCorrec: "Legal protections"),
        pregStruc(preg: "What is the ethnicity of Orlando Patterson?",
                  preg1: "White",
                  preg2: "Black",
                  preg3: "Hispanic",
                  preg4: "Asian",
                  respCorrec: "Black")
        
    ]),
    CatPreg(nombre: "Don't Compare Yourself to Others", pregs: [
        pregStruc(preg: "What is the main message of this speech?",
                  preg1: "Always compare yourself to others",
                  preg2: "Pursue fame and fortune",
                  preg3: "Stop comparing yourself to others",
                  preg4: "Only compare yourself to the best",
                  respCorrec: "Stop comparing yourself to others"),
        pregStruc(preg: "Who did the speaker want to be as big as when starting their career?",
                  preg1: "Tom Shillue",
                  preg2: "Jimmy Fallon",
                  preg3: "George Carlin",
                  preg4: "Jerry Seinfeld",
                  respCorrec: "Jerry Seinfeld"),
        pregStruc(preg: "Which comedian has a late-night TV show?",
                  preg1: "Jerry Seinfeld",
                  preg2: "Tom Shillue",
                  preg3: "Jimmy Fallon",
                  preg4: "Louis C.K",
                  respCorrec: "Jimmy Fallon"),
        pregStruc(preg: "How long did it take the speaker to make a living from standup comedy?",
                  preg1: "5 years",
                  preg2: "10 years",
                  preg3: "15 years",
                  preg4: "20 years",
                  respCorrec: "10 years"),
        pregStruc(preg: "What is the speaker's definition of professional success?",
                  preg1: "Being famous",
                  preg2: "Making a living, pursuing excellence, and finding meaning in what you do",
                  preg3: "Being rich",
                  preg4: "Having a prime-time TV show",
                  respCorrec: "Making a living, pursuing excellence, and finding meaning in what you do"),
        pregStruc(preg: "What did the speaker envy about comedians like George Carlin, Robin Williams, and Louis C.K.?",
                  preg1: "Their fame and fortune",
                  preg2: "Their ability to turn dark personal struggles into brilliant comedy",
                  preg3: "Their lifestyles",
                  preg4: "Their TV shows",
                  respCorrec: "Their ability to turn dark personal struggles into brilliant comedy"),
        pregStruc(preg: "What is the main reason comparing yourself to others is problematic?",
                  preg1: "It leads to jealousy",
                  preg2: "It creates unrealistic expectations",
                  preg3: "It's a waste of time",
                  preg4: "It's discouraging",
                  respCorrec: "It creates unrealistic expectations"),
        pregStruc(preg: "According to the speaker, what should you consider when comparing yourself to someone else?",
                  preg1: "Their income",
                  preg2: "Their success",
                  preg3: "The complete package of their life",
                  preg4: "Their talents",
                  respCorrec: "The complete package of their life"),
        pregStruc(preg: "What does the speaker say about everyone's life?",
                  preg1: "It's easy",
                  preg2: "It's hard",
                  preg3: "It's filled with success",
                  preg4: "It's filled with happiness",
                  respCorrec: "It's hard"),
        pregStruc(preg: "What did the speaker initially want in terms of venue size and TV show timings?",
                  preg1: "Small venues and late-night shows",
                  preg2: "Small venues and prime-time shows",
                  preg3: "Big venues and late-night shows",
                  preg4: "Big venues and prime-time shows",
                  respCorrec: "Big venues and prime-time shows"),
        pregStruc(preg: "What does the speaker appreciate now in their career?",
                  preg1: "Selling out small venues and having a late-night show with half a million viewers",
                  preg2: "Being on a prime-time TV show",
                  preg3: "Being the most famous comedian",
                  preg4: "Having a Netflix special",
                  respCorrec: "Selling out small venues and having a late-night show with half a million viewers"),
        pregStruc(preg: "What is one of life's little truths according to the speaker?",
                  preg1: "Everyone has an easy life",
                  preg2: "Everyone is a package deal",
                  preg3: "Success comes easily",
                  preg4: "Comparing yourself to others is necessary",
                  respCorrec: "Everyone is a package deal"),
        pregStruc(preg: "According to the speaker, what is professional success about?",
                  preg1: "Being the best in your field",
                  preg2: "Making a living, pursuing excellence, and finding meaning in what you do",
                  preg3: "Having fame and fortune",
                  preg4: "Surpassing your competition",
                  respCorrec: "Making a living, pursuing excellence, and finding meaning in what you do"),
        pregStruc(preg: "How long did it take for the speaker's stand-up comedy to start paying the bills?",
                  preg1: "5 years",
                  preg2: "10 years",
                  preg3: "15 years",
                  preg4: "20 years",
                  respCorrec: "10 years"),
        pregStruc(preg: "What is the common mistake people make when comparing themselves to others?",
                  preg1: "Not considering the whole package of someone else's life",
                  preg2: "Not being ambitious enough",
                  preg3: "Only comparing themselves to less successful people",
                  preg4: "Ignoring their own talents and abilities",
                  respCorrec: "Not considering the whole package of someone else's life"),
        pregStruc(preg: "What is the message the speaker wants to convey at the end of the speech?",
                  preg1: "To keep striving for more success",
                  preg2: "To compare yourself only to the past version of yourself",
                  preg3: "To be envious of others' success",
                  preg4: "To focus on fame and fortune",
                  respCorrec: "To compare yourself only to the past version of yourself")
        
    ]),
    CatPreg(nombre: "Fix Yourself", pregs: [
        pregStruc(preg: "What topic does the psychologist discuss?",
                  preg1: "Make people change to live better",
                  preg2: "Blaming people makes you the problem",
                  preg3: "Divorcing a partner takes courage",
                  preg4: "Being miserable makes us blame people",
                  respCorrec: "Blaming people makes you the problem"),
        pregStruc(preg: "Repressing your feelings so that your beliefs can remain. What causes?",
                  preg1: "Encourage their anger and alteration of reason or senses",
                  preg2: "Happiness and calm",
                  preg3: "Loss of person",
                  preg4: "All of the above",
                  respCorrec: "Encourage their anger and alteration of reason or senses"),
        pregStruc(preg: "What questions should be asked of your own conscience?",
                  preg1: "What should you eat tomorrow? What did you eat yesterday?",
                  preg2: "What time do I have to work? What should I bring?",
                  preg3: "What is the dog doing?",
                  preg4: "What are you doing that is wrong, from your own perspective? What could you fix, right now?",
                  respCorrec: "What are you doing that is wrong, from your own perspective? What could you fix, right now?"),
        pregStruc(preg: "What are the two attitudes towards life and its sorrows?",
                  preg1: "Blaming people and not accepting their mistakes",
                  preg2: "The search for answers and why everything goes wrong",
                  preg3: "The first attitude blame the world. The second ask what they could do differently",
                  preg4: "Crying and not accepting mistakes",
                  respCorrec: "The first attitude blame the world. The second ask what they could do differently"),
        pregStruc(preg: "What goes through the mind of the unhappy and embittered husband?",
                  preg1: "All the bad things he's done",
                  preg2: "Try to forgive the things your wife did",
                  preg3: "Not accepting help and feeling like you did nothing wrong",
                  preg4: "The memory of the terrible things his wife has done and why he can't live with her anymore",
                  respCorrec: "The memory of the terrible things his wife has done and why he can't live with her anymore"),
        pregStruc(preg: "What does the harassed and disappointed wife think?",
                  preg1: "Think of all the ways her husband let her down",
                  preg2: "In all the mistakes you've had",
                  preg3: "In the problems that her husband has",
                  preg4: "How will your life be",
                  respCorrec: "Think of all the ways her husband let her down"),
        pregStruc(preg: "Why is his prospect of reconciliation so bleak?",
                  preg1: "Because no one seeks to improve personally",
                  preg2: "Due to the fact that they want to change the other person instead of changing themselves",
                  preg3: "By the opinions of outsiders",
                  preg4: "For the problems caused by the two",
                  respCorrec: "Due to the fact that they want to change the other person instead of changing themselves"),
        pregStruc(preg: "It is much easier and more rewarding for your lower desires:",
                  preg1: "Blame someone else for your misery",
                  preg2: "Accept the situation",
                  preg3: "Blame yourself",
                  preg4: "Ignore the situation",
                  respCorrec: "Blame someone else for your misery"),
        pregStruc(preg: "What work is mentioned by the poet T.S Eliot?",
                  preg1: "The odyssey",
                  preg2: "The Cocktail Party",
                  preg3: "Romeo and Juliet",
                  preg4: "Romance of the Three Kingdoms",
                  respCorrec: "The Cocktail Party"),
        pregStruc(preg: "What does the character say to the psychiatrist?",
                  preg1: "Who feels that everything is family fault",
                  preg2: "Who needs help to improve",
                  preg3: "She hopes that her suffering is her fault. because you can do something about it",
                  preg4: "She hates everyone around her",
                  respCorrec: "She hopes that her suffering is her fault. because you can do something about it"),
        pregStruc(preg: "There are people who seem to be doomed to a terrible fate, but:",
                  preg1: "Never looking for ways to improve",
                  preg2: "They always look for a way to excuse themselves to others",
                  preg3: "But there are ways to improve",
                  preg4: "Most of us have the opportunity to improve our lives",
                  respCorrec: "Most of us have the opportunity to improve our lives"),
        pregStruc(preg: "The right way to fix the world is:",
                  preg1: "Change people",
                  preg2: "Don't fix the world, there's no reason to. But you can fix yourself. You will not do by doing",
                  preg3: "Improving the political party",
                  preg4: "Taking care of the environment",
                  respCorrec: "Don't fix the world, there's no reason to. But you can fix yourself. You will not do by doing"),
        pregStruc(preg: "Do you waste time asking what you are doing right or wrong?",
                  preg1: "You have to know what you are doing",
                  preg2: "You don't always know what you're doing",
                  preg3: "You can know that something is right or wrong without knowing why",
                  preg4: "It's always good to ask",
                  respCorrec: "You can know that something is right or wrong without knowing why"),
        pregStruc(preg: "What would happen if I start to improve and fix what I'm doing wrong?",
                  preg1: "If you do those things, your life will improve. You will become more peaceful, productive and desirable",
                  preg2: "It would be better than before",
                  preg3: "I wouldn't change a thing, I'm fine like that",
                  preg4: "He would love me more",
                  respCorrec: "If you do those things, your life will improve. You will become more peaceful, productive and desirable"),
        pregStruc(
            preg: "What happens after careful effort is made for a few days, weeks, or months?",
            preg1: "Nothing is achieved if you don't feel",
            preg2: "The mind will become clearer, life will become less tragic and more confident",
            preg3: "Problems accumulate and you explode",
            preg4: "Sores to a peace of mind",
            respCorrec: "The mind will become clearer, life will become less tragic and more confident"),
        pregStruc(
            preg: "Where is the psychology teacher from?",
            preg1: "Toronto",
            preg2: "California",
            preg3: "Texas",
            preg4: "Los Angeles",
            respCorrec: "Toronto")
    ]),
    CatPreg(nombre: "Are Men and Women Different?", pregs: [
        pregStruc(preg: "What is the analogy of the beach ball used for in the speech?",
                  preg1: "To describe the differences between men and women",
                  preg2: "To illustrate the difficulty of learning a new skill",
                  preg3: "To show the importance of having fun at the beach",
                  preg4: "To explain the physics of buoyancy",
                  respCorrec: "To describe the differences between men and women"),
        pregStruc(preg: "What does the speaker believe about men and women's natures?",
                  preg1: "They are basically the same",
                  preg2: "They are completely different",
                  preg3: "They are determined by socialization",
                  preg4: "They are interchangeable",
                  respCorrec: "They are completely different"),
        pregStruc(preg: "Who would the speaker agree with more, great-grandmother or a gender studies PhD?",
                  preg1: "Great-grandmother",
                  preg2: "Gender studies PhD",
                  preg3: "Both equally",
                  preg4: "Neither",
                  respCorrec: "Great-grandmother"),
        pregStruc(preg: "What does the speaker claim is a delusion?",
                  preg1: "Believing men and women are different",
                  preg2: "Believing men and women are the same",
                  preg3: "Believing gender roles are natural",
                  preg4: "Believing gender roles are socially constructed",
                  respCorrec: "Believing men and women are the same"),
        pregStruc(preg: "What story does the New York pediatrician George Lazarus share?",
                  preg1: "A story about a girl who turned her toy trucks into weapons",
                  preg2: "A story about a girl who pretended her toy trucks were sleeping",
                  preg3: "A story about a boy who turned his toy trucks into weapons",
                  preg4: "A story about a boy who pretended his toy trucks were sleeping",
                  respCorrec: "A story about a girl who pretended her toy trucks were sleeping"),
        pregStruc(preg: "According to the speaker, do men and women want the same things from sex?",
                  preg1: "Yes, always",
                  preg2: "No, never",
                  preg3: "Sometimes, depending on the individual",
                  preg4: "It is impossible to know",
                  respCorrec: "No, never"),
        pregStruc(preg: "How does the speaker describe the way college students view sex today?",
                  preg1: "As a sacred act between committed partners",
                  preg2: "As a casual form of entertainment",
                  preg3: "As a strictly regulated activity",
                  preg4: "As a dangerous and risky behavior",
                  respCorrec: "As a casual form of entertainment"),
        pregStruc(preg: "What does Jennifer Lawrence's quote in the speech indicate about her feelings towards intimate scenes?",
                  preg1: "She feels empowered",
                  preg2: "She feels indifferent",
                  preg3: "She feels vulnerable",
                  preg4: "She feels excited",
                  respCorrec: "She feels vulnerable"),
        pregStruc(preg: "What does the speaker believe about sex within marriage compared to sex outside of marriage?",
                  preg1: "It is less satisfying in all aspects",
                  preg2: "It is equally satisfying",
                  preg3: "It is more satisfying emotionally, psychologically, physically, and spiritually",
                  preg4: "It depends on the individual's personal beliefs",
                  respCorrec: "It is more satisfying emotionally, psychologically, physically, and spiritually"),
        pregStruc(preg: "According to the speaker, who is pushing the agenda that men and women are basically the same?",
                  preg1: "The media and entertainment industry",
                  preg2: "The religious institutions",
                  preg3: "The government and politicians",
                  preg4: "The academic and intellectual community",
                  respCorrec: "The academic and intellectual community"),
        pregStruc(preg: "Who is Sean McDowell?",
                  preg1: "A Hollywood actor",
                  preg2: "A gender studies PhD",
                  preg3: "An Associate Professor of Theology and Philosophy at Biola University",
                  preg4: "A New York pediatrician",
                  respCorrec: "An Associate Professor of Theology and Philosophy at Biola University"),
        pregStruc(preg: "What is the main message of the speech?",
                  preg1: "To embrace modern ideas about gender and sexuality",
                  preg2: "To trust common sense and recognize the differences between men and women",
                  preg3: "To argue that gender roles should be abolished",
                  preg4: "To promote a more casual attitude towards sex",
                  respCorrec: "To trust common sense and recognize the differences between men and women"),
        pregStruc(preg: "According to the speaker, why would a woman feel violated by an uninvited touch?",
                  preg1: "Because it's physically painful",
                  preg2: "Because it has no meaning",
                  preg3: "Because sex and intimacy have deeper meaning for women",
                  preg4: "Because men and women are basically the same",
                  respCorrec: "Because sex and intimacy have deeper meaning for women"),
        pregStruc(preg: "In the speech, why did the couple buy their daughter a set of toy trucks?",
                  preg1: "Because she asked for them",
                  preg2: "To avoid conforming to gender stereotypes",
                  preg3: "Because they were on sale",
                  preg4: "To encourage her interest in mechanics",
                  respCorrec: "To avoid conforming to gender stereotypes"),
        pregStruc(preg: "What example does the speaker use to illustrate that boys will turn any object into a weapon?",
                  preg1: "A story about a boy turning a toy truck into a weapon",
                  preg2: "A story about a boy using a stick as a weapon",
                  preg3: "A story about a boy turning a stuffed animal into a weapon",
                  preg4: "A story about a boy using a pillow as a weapon",
                  respCorrec: "A story about a boy turning a toy truck into a weapon"),
        pregStruc(preg: "What does the speaker believe is the reason that sex has traditionally been confined to marriage?",
                  preg1: "Because it is a big deal with deep emotional, psychological, and physical implications",
                  preg2: "Because society wanted to control women's sexuality",
                  preg3: "Because it was more convenient for inheritance purposes",
                  preg4: "Because of religious dogma",
                  respCorrec: "Because it is a big deal with deep emotional, psychological, and physical implications")
    ]),
    CatPreg(nombre: "Don't Waste Your Time", pregs: [
        pregStruc(preg: "According to the text, what is the purpose of dating for women?",
                  preg1: "To have fun and enjoy casual flings",
                  preg2: "To find someone to marry",
                  preg3: "To meet new people",
                  preg4: "To explore common interests",
                  respCorrec: "To find someone to marry"),
        pregStruc(preg: "What is the problem with assuming that relationships progress like levels in a video game?",
                  preg1: "It leads to unrealistic expectations",
                  preg2: "It is too predictable",
                  preg3: "It does not take into account the importance of shared values",
                  preg4: "It can lead to miscommunication about the ideal outcome of the relationship",
                  respCorrec: "It can lead to miscommunication about the ideal outcome of the relationship"),
        pregStruc(preg: "What are some of the factors that may lead people to live together?",
                  preg1: "Real love and a tryout for marriage",
                  preg2: "Desire for a roommate or lack of other opportunities",
                  preg3: "Inability to afford a single apartment",
                  preg4: "All of the above",
                  respCorrec: "All of the above"),
        pregStruc(preg: "According to the text, what are people looking for in a good marriage?",
                  preg1: "Someone who wants to build a shared life",
                  preg2: "Someone who shares their values and beliefs",
                  preg3: "Someone who views them as a partner",
                  preg4: "All of the above",
                  respCorrec: "All of the above"),
        pregStruc(preg: "What is the problem with getting distracted by superficial compatibility?",
                  preg1: "It can lead to misunderstandings about the long-term future of the relationship",
                  preg2: "It is not a valid basis for a serious relationship",
                  preg3: "It can lead to boredom and a lack of excitement in the relationship",
                  preg4: "All of the above",
                  respCorrec: "It can lead to misunderstandings about the long-term future of the relationship"),
        pregStruc(preg: "According to the text, what should you do if a relationship does not look like it has a future?",
                  preg1: "End it",
                  preg2: "Wait and see if things improve",
                  preg3: "Try harder to make it work",
                  preg4: "Take a break from each other",
                  respCorrec: "End it"),
        pregStruc(preg: "Why do many women get stuck in dead-end relationships, according to the text?",
                  preg1: "They do not articulate what they really want",
                  preg2: "They are too picky",
                  preg3: "They are afraid of commitment",
                  preg4: "They do not know what they want",
                  respCorrec: "They do not articulate what they really want"),
        pregStruc(preg: "What are three reasons why women crave marriage, according to the text?",
                  preg1: "Protection, commitment, and love",
                  preg2: "Financial security, companionship, and emotional stability",
                  preg3: "Adventure, excitement, and passion",
                  preg4: "None of the above",
                  respCorrec: "Protection, commitment, and love"),
        pregStruc(preg: "According to the text, what is the difference between living with someone and marriage?",
                  preg1: "There is no difference",
                  preg2: "Marriage involves more commitment, obligations, and expectations",
                  preg3: "Living together is more romantic",
                  preg4: "Marriage is more about having fun",
                  respCorrec: "Marriage involves more commitment, obligations, and expectations"),
        pregStruc(preg: "How should you respond to someone who says that a marriage license is just a piece of paper?",
                  preg1: "Agree with them",
                  preg2: "Ask them why they are so reluctant to sign it",
                  preg3: "Tell them they are wrong",
                  preg4: "None of the above",
                  respCorrec: "Ask them why they are so reluctant to sign it"),
        pregStruc(preg: "According to the text, how should you think about the kind of relationship you want?",
                  preg1: "As much as you think about what kind of career you want",
                  preg2: "More than what kind of career you want",
                  preg3: "More than what kind of career you want",
                  preg4: "Not at all",
                  respCorrec: "As much as you"),
        pregStruc(preg: "According to the text, how should you think about the kind of relationship you want?",
                  preg1: "Living together is more fun",
                  preg2: "Living together is a tryout for marriage",
                  preg3: "Dating is a tryout for marriage",
                  preg4: "There is no difference",
                  respCorrec: "Living together is a tryout for marriage"),
        pregStruc(preg: "What does Lauren Chen suggest women should do on a first date?",
                  preg1: "Discuss their values and beliefs",
                  preg2: "Talk about marriage",
                  preg3: "Wait until the pizza is served to discuss marriage",
                  preg4: "Have fun",
                  respCorrec: "Discuss their values and beliefs"),
        pregStruc(preg: "What does Lauren Chen suggest as a good rule of thumb for thinking about relationships?",
                  preg1: "To think about them as much as you think about your career",
                  preg2: "To prioritize relationships over your career",
                  preg3: "To only focus on your career",
                  preg4: "To think about relationships less than your career",
                  respCorrec: "To think about them as much as you think about your career"),
        pregStruc(preg: "What does a woman look for in a marriage?",
                  preg1: "Hate",
                  preg2: "Money",
                  preg3: "Love",
                  preg4: "Nothing",
                  respCorrec: "Love"),
        pregStruc(preg: "What is the narrator's name?",
                  preg1: "Adolfo Peñaloza",
                  preg2: "Alejandro Berry",
                  preg3: "Lauren Chen",
                  preg4: "Adriana Monsalve",
                  respCorrec: "Lauren Chen")
    ]),
    CatPreg(nombre: "How to End Systemic Racism", pregs: [
        pregStruc(
            preg: "What is the main point of the speech?",
            preg1: "Systemic racism is a thing of the past in America",
            preg2: "There is no racism against people of color in America",
            preg3: "The woke left is responsible for systemic racism in America",
            preg4: "Racism in America is solely perpetuated by the right",
            respCorrec:"The woke left is responsible for systemic racism in America"
        ),
        
        pregStruc(
            preg: "What does the speaker mean when they say ¨No truth. No peace¨?",
            preg1: "Without truth, there can be no justice or equality",
            preg2: "Without truth, there can be no progress or improvement",
            preg3: "Without truth, there can be no understanding or unity",
            preg4: "Without truth, there can be no peace or harmony",
            respCorrec:"Without truth, there can be no peace or harmony"
        ),
        
        pregStruc(
            preg: "According to the speech, what are some examples of systemic racism in America?",
            preg1: "State governments put regulations in place that make it harder for minorities to start businesses",
            preg2: "Black students are told that math is a white construct in Oregon",
            preg3: "City councils demonize their own police departments, then vote to cut police budgets",
            preg4: "All of the above",
            respCorrec:"All of the above"
        ),
        
        pregStruc(
            preg: "What does the speaker suggest is the real cause of the racism problem in America?",
            preg1: "The policies and attitudes of the right",
            preg2: "Small-minded individuals",
            preg3: "The ideology of the left",
            preg4: "The demand for racism exceeds the supply",
            respCorrec:"The ideology of the left"
        ),
        
        pregStruc(
            preg: "According to the speech, what is the ¨race hoax epidemic¨?",
            preg1: "An epidemic of racism against people of color in America",
            preg2: "An epidemic of fake claims of racism against people of color",
            preg3: "An epidemic of racism hoaxes perpetuated by the right",
            preg4: "An epidemic of microaggressions against people of color",
            respCorrec:"An epidemic of fake claims of racism against people of color"
        ),
        
        pregStruc(
            preg: "What does the speaker say about George Floyd?",
            preg1: "The incident had nothing to do with Floyd being black",
            preg2: "The incident was entirely racially motivated",
            preg3: "The incident was a hoax",
            preg4: "The incident was the result of systemic racism",
            respCorrec:"The incident had nothing to do with Floyd being black"
        ),
        
        pregStruc(
            preg: "What does the speaker say about education standards for young students of color?",
            preg1: "They are the same as for other students",
            preg2: "They are higher than for other students",
            preg3: "They are lower than for other students",
            preg4: "They are irrelevant to the issue of systemic racism",
            respCorrec:"They are lower than for other students"
        ),
        
        pregStruc(
            preg: "What does the speaker suggest is a better way to create an equitable society?",
            preg1: "Government programs",
            preg2: "Judging each person on their merits, not their skin color",
            preg3: "Affirmative action",
            preg4: "Separating people by race",
            respCorrec:"Judging each person on their merits, not their skin color"
        ),
        
        pregStruc(
            preg: "According to the speech, what is the goal of the elites who have instigated systemic racism?",
            preg1: "To create a more just society",
            preg2: "To hold people of color back",
            preg3: "To promote equality and unity",
            preg4: "To eliminate racism altogether",
            respCorrec:"To hold people of color back"
        ),
        
        pregStruc(
            preg: "What is the speaker's opinion on the ideology of the left?",
            preg1: "It is a beacon of tolerance and progress",
            preg2: "It is responsible for systemic racism in America",
            preg3: "It is irrelevant to the issue of racism",
            preg4: "It is the only solution to racism",
            respCorrec:"It is responsible for systemic racism in America"
        ),
        
        pregStruc(
            preg: "How does the speaker feel about the ideology of the left?",
            preg1: "The speaker agrees with the ideology of the left",
            preg2: "The speaker thinks the ideology of the left is well-intentioned but misguided",
            preg3: "The speaker believes the ideology of the left is responsible for systemic racism",
            preg4: "The speaker has never heard of the ideology of the left",
            respCorrec:"The speaker believes the ideology of the left is responsible for systemic racism"
        ),
        
        pregStruc(
            preg: "What does the speaker believe is the cause of the demand for racism exceeding the supply?",
            preg1: "The prevalence of small-minded people",
            preg2: "The creation of false race hoaxes by the left",
            preg3: "The success of anti-racism movements",
            preg4: "The lack of systemic racism in America",
            respCorrec:"The creation of false race hoaxes by the left"
        ),
        
        pregStruc(
            preg: "According to the speaker, what is the attitude of the left towards unconscious racism and microaggressions?",
            preg1: "They are real and should be addressed",
            preg2: "They are a figment of people's imaginations",
            preg3: "They are intentional acts of racism",
            preg4: "They are exaggerated by the right to discredit the left",
            respCorrec:"They are real and should be addressed"
        ),
        
        pregStruc(
            preg: "What does the speaker believe is the best way to create an equitable society?",
            preg1: "Judging each person on their merits, not their skin color",
            preg2: "Implementing a hundred government programs",
            preg3: "Encouraging people to embrace unconscious racism and microaggressions",
            preg4: "Expecting less from people based on their race",
            respCorrec:"Judging each person on their merits, not their skin color"
        ),
        
        pregStruc(
            preg: "According to the speech, where does the speaker believe systemic racism is coming from?",
            preg1: "The right",
            preg2: "The left",
            preg3: "Both the right and the left",
            preg4: "The speaker does not believe in systemic racism",
            respCorrec:"The left"
        ),
        
        pregStruc(
            preg: "How does the speaker suggest that leftists re-examine their beliefs?",
            preg1: "By avoiding any questioning of their beliefs",
            preg2: "By dismissing the possibility of systemic racism",
            preg3: "By questioning whether certain beliefs are helping or hurting Black people",
            preg4: "By doubling down on their beliefs and pushing for more extreme policies",
            respCorrec:"By questioning whether certain beliefs are helping or hurting Black people"
        ),
        
    ]),
    CatPreg(nombre: "How to Make Our Cities Safer", pregs: [
        pregStruc(
            preg: "What is the main cause of the recent rise in violent crime in the United States?",
            preg1: "A lack of gun control laws",
            preg2: "The increase in drug use",
            preg3: "Economic inequality",
            preg4: "The speech does not mention a specific cause",
            respCorrec: "The speech does not mention a specific cause"
        ),
        
        pregStruc(
            preg: "According to the speech, what was the increase in homicides in the United States in 2020?",
            preg1: "20 percent",
            preg2: "25 percent",
            preg3: "30 percent",
            preg4: "35 percent",
            respCorrec: "30 percent"
        ),
        
        pregStruc(
            preg: "Which group of criminals is responsible for the majority of violent crimes in any given city?",
            preg1: "The Power Few",
            preg2: "The Criminal Elite",
            preg3: "The Dangerous Many",
            preg4: "The speech does not mention a specific group",
            respCorrec: "The Power Few"
        ),
        
        pregStruc(
            preg: "What is the benefit of targeting drug dealers according to the speech?",
            preg1: "It reduces drug addiction rates",
            preg2: "It helps law enforcement gather information about other crimes",
            preg3: "It reduces gang violence",
            preg4: "It prevents burglaries",
            respCorrec: "It helps law enforcement gather information about other crimes"
        ),
        
        pregStruc(
            preg: "What is vertical prosecution?",
            preg1: "A type of drug rehabilitation program",
            preg2: "A form of criminal defense strategy",
            preg3: "A concept where police and prosecutors collaborate from the beginning of an investigation",
            preg4: "The speech does not define the term",
            respCorrec: "A concept where police and prosecutors collaborate from the beginning of an investigation"
        ),
        
        pregStruc(
            preg: "What is the conclusion of the United States Sentencing Commission's analysis of prison sentences?",
            preg1: "Prison sentences have no significant impact on reducing crime rates",
            preg2: "Longer prison sentences lead to an increase in crime rates",
            preg3: "The longer the prison sentence, the less likely the criminal will commit another crime",
            preg4: "The speech does not mention the conclusion of the analysis",
            respCorrec: "The longer the prison sentence, the less likely the criminal will commit another crime"
        ),
        
        pregStruc(
            preg: "What is the age-crime curve?",
            preg1: "A graph that shows the relationship between age and crime rates",
            preg2: "A theory that argues that older people commit more crimes",
            preg3: "A criminal defense strategy based on the defendant's age",
            preg4: "The speech does not define the term",
            respCorrec: "A graph that shows the relationship between age and crime rates"
        ),
        
        pregStruc(
            preg: "According to the speech, what is the best way to reduce crime rates in a city?",
            preg1: "Implement more gun control laws",
            preg2: "Increase social welfare programs",
            preg3: "Target high-frequency offenders and keep them in jail",
            preg4: "The speech does not mention a specific solution",
            respCorrec: "Target high-frequency offenders and keep them in jail"
        ),
        
        pregStruc(
            preg: "Why is collaboration between police and prosecutors important in investigations?",
            preg1: "It saves time and resources",
            preg2: "It helps to determine the order of witnesses in trial",
            preg3: "It minimizes legal errors and ensures justice is done",
            preg4: "The speech does not mention a specific benefit",
            respCorrec: "It minimizes legal errors and ensures justice is done"
        ),
        
        pregStruc(
            preg: "What is the main goal of the solutions proposed in the speech?",
            preg1: "To punish criminals",
            preg2: "To reduce crime rates in cities",
            preg3: "To increase police presence in communities",
            preg4: "The speech does not mention a specific goal",
            respCorrec: "To reduce crime rates in cities"
        ),
        
        pregStruc(
            preg: "What is the term used in the speech to refer to criminals who are likely to commit and be victims of violent crimes?",
            preg1: "The High-Risk Group",
            preg2: "The Violent Offenders",
            preg3: "The Power Few",
            preg4: "The speech does not mention a specific term",
            respCorrec: "The Power Few"
        ),
        
        pregStruc(
            preg: "According to the speech, what is the benefit of targeting the Power Few?",
            preg1: "It reduces crime rates in a specific area only",
            preg2: "It helps to identify drug dealers and gun-toting felons",
            preg3: "It substantially reduces violent crime rates throughout an entire city",
            preg4: "The speech does not mention a specific benefit",
            respCorrec: "It substantially reduces violent crime rates throughout an entire city"
        ),
        
        pregStruc(
            preg: "What is the main message of the speech?",
            preg1: "The United States needs to implement more social welfare programs",
            preg2: "Law enforcement should focus on punishing all criminals equally",
            preg3: "Targeting high-frequency offenders and keeping them in jail can substantially reduce crime rates in cities",
            preg4: "The speech does not have a clear main message",
            respCorrec: "Targeting high-frequency offenders and keeping them in jail can substantially reduce crime rates in cities"
        ),
        
        pregStruc(
            preg: "What is the United States Sentencing Commission?",
            preg1: "An organization that promotes gun control laws",
            preg2: "A federal agency that analyzes the impact of prison sentences on reducing crime rates",
            preg3: "A group of criminal defense lawyers",
            preg4: "The speech does not define the term",
            respCorrec: "A federal agency that analyzes the impact of prison sentences on reducing crime rates"
        ),
        
        pregStruc(
            preg: "Why do most law enforcement officials believe that longer prison sentences reduce crime rates?",
            preg1: "Because they believe that punishment is an effective deterrent to crime",
            preg2: "Because they believe that rehabilitation programs are ineffective",
            preg3: "Because they believe that prison sentences have no impact on crime rates",
            preg4: "The speech does not mention a specific reason",
            respCorrec: "Because they believe that punishment is an effective deterrent to crime"
        ),
        
        pregStruc(
            preg: "What is the benefit of keeping bad actors in jail according to the speech?",
            preg1: "It increases the prison population",
            preg2: "It reduces the number of potential victims on the street",
            preg3: "It is a cost-effective solution",
            preg4: "The speech does not mention a specific benefit",
            respCorrec: "It reduces the number of potential victims on the street"
        ),
        
    ]),
    CatPreg(nombre: "Should Government Bail Out Big Banks?", pregs: [
        pregStruc(
            preg:"What is the conventional wisdom about the cause of the 2008 financial meltdown?",
            preg1:"It was caused by three decades of bank de-regulation",
            preg2:"It was caused by too much government involvement in the financial industry",
            preg3:"It was caused by the banks becoming too large and powerful",
            preg4:"It was caused by a lack of oversight and regulation of the financial industry",
            respCorrec:"It was caused by three decades of bank de-regulation"
        ),
        
        pregStruc(
            preg:"What was the main reason for the credit-market freeze that occurred during the 2008 financial crisis?",
            preg1:"Banks stopped lending money to other banks",
            preg2:"The stock market crashed, causing a chain reaction throughout the financial industry",
            preg3:"General Electric was unable to pay its workers",
            preg4:"The government refused to bail out Lehman Brothers",
            respCorrec:"Banks stopped lending money to other banks"
        ),
        
        pregStruc(
            preg:"What was the purpose of the Troubled Asset Relief Program (TARP)?",
            preg1:"To bail out Lehman Brothers",
            preg2:"To pump taxpayer cash into America's banks and financial institutions",
            preg3:"To provide short-term credit to struggling companies",
            preg4:"To regulate the financial industry more closely",
            respCorrec:"To pump taxpayer cash into America's banks and financial institutions"
        ),
        
        pregStruc(
            preg:"What was the phrase \"too big to fail\"referring to in the context of the 1984 bailout of Continental Illinois?",
            preg1:"The bank had too much debt to be saved",
            preg2:"The bank was too large and powerful to be allowed to fail",
            preg3:"The bank was too risky to be bailed out",
            preg4:"The bank was too small to have a significant impact on the financial industry",
            respCorrec:"The bank was too large and powerful to be allowed to fail"
        ),
        
        pregStruc(
            preg:"How did the government's bailout of Continental Illinois in 1984 contribute to the 2008 financial crisis?",
            preg1:"It led to a short-term panic in the financial markets",
            preg2:"It created a long-term expectation that the government would always bail out big banks",
            preg3:"It resulted in a decline in the number of investors willing to lend money to American banks",
            preg4:"It had no direct impact on the 2008 financial crisis",
            respCorrec:"It created a long-term expectation that the government would always bail out big banks"
        ),
        
        pregStruc(
            preg:"What was the government's response to the 1998 near-bankruptcy of Long-Term Capital Management?",
            preg1:"It allowed the hedge fund to fail, sending shockwaves through the financial industry",
            preg2:"It bailed out the hedge fund and several big banks that were at risk of failing",
            preg3:"It implemented new regulations to prevent future hedge fund failures",
            preg4:"It did not take any action",
            respCorrec:"It bailed out the hedge fund and several big banks that were at risk of failing"
        ),
        
        pregStruc(
            preg:"How did the government's response to the 1998 Long-Term Capital Management crisis contribute to the 2008 financial crisis?",
            preg1:"It led to an increase in regulation and oversight of the financial industry",
            preg2:"It sent a message to banks that they could take bigger risks because the government would bail them out",
            preg3:"It resulted in a decrease in investor confidence in the financial industry",
            preg4:"It had no direct impact on the 2008 financial crisis",
            respCorrec:"It sent a message to banks that they could take bigger risks because the government would bail them out"
        ),
        
        pregStruc(
            preg:"Why did the government not rescue Lehman Brothers during the 2008 financial crisis?",
            preg1:"The government did not have the funds to do so",
            preg2:"The government believed that Lehman Brothers was too risky to be saved",
            preg3:"The government wanted to send a message to the financial industry that it could not always rely on government bailouts",
            preg4:"The government believed that saving Lehman Brothers would have set a dangerous precedent",
            respCorrec:"The government believed that Lehman Brothers was too risky to be saved"
        ),
        
        pregStruc(
            preg:"What was the impact of the government's decision not to rescue Lehman Brothers during the 2008 financial crisis?",
            preg1:"It caused a short-term panic in the financial markets",
            preg2:"It led to a credit-market freeze",
            preg3:"It resulted in the failure of several other large financial institutions",
            preg4:"It had no direct impact on the financial industry",
            respCorrec:"It led to a credit-market freeze"
        ),
        
        pregStruc(
            preg:"What was the main solution proposed by the author to bring sanity back to the financial industry?",
            preg1:"Passing thousands of new regulations",
            preg2:"Allowing the big banks to fail",
            preg3:"Increasing government control over the financial industry",
            preg4:"The government must stop guaranteeing the big banks' losses",
            respCorrec:"The government must stop guaranteeing the big banks' losses"
        ),
        
        pregStruc(
            preg:"How did the government's bailout of Continental Illinois in 1984 introduce the phrase \"too big to fail\"to the financial media's vocabulary?",
            preg1:"The government believed that Continental Illinois was too risky to be saved",
            preg2:"The government wanted to send a message to the financial industry that it would always bail out big banks",
            preg3:"The government feared that if Continental Illinois failed, it would cause a panic in the financial markets",
            preg4:"The media coined the phrase to describe the government's response to the crisis",
            respCorrec:"The media coined the phrase to describe the government's response to the crisis"
        ),
        
        pregStruc(
            preg:"What was the impact of the government's decision to bail out Long-Term Capital Management in 1998?",
            preg1:"It led to an increase in regulation and oversight of the financial industry",
            preg2:"It sent a message to banks that they could take bigger risks because the government would bail them out",
            preg3:"It resulted in a decrease in investor confidence in the financial industry",
            preg4:"It had no direct impact on the financial industry",
            respCorrec:"It sent a message to banks that they could take bigger risks because the government would bail them out"
        ),
        
        pregStruc(
            preg:"What was the message that the government's rescue of Bear Stearns in 2008 sent to the financial industry?",
            preg1:"Banks should be more cautious and avoid taking big risks",
            preg2:"Banks should expect government bailouts in times of crisis",
            preg3:"The government is unable to save all financial institutions that are in trouble",
            preg4:"The financial industry should be more self-reliant and less dependent on government support",
            respCorrec:"Banks should expect government bailouts in times of crisis"
        ),
        
        pregStruc(
            preg:"What was the impact of the government's decision to rescue Fannie Mae and Freddie Mac in 2008?",
            preg1:"It led to an increase in regulation and oversight of the financial industry",
            preg2:"It sent a message to banks that they could take bigger risks because the government would bail them out",
            preg3:"It resulted in a decrease in investor confidence in the financial industry",
            preg4:"It had no direct impact on the financial industry",
            respCorrec:"It led to an increase in regulation and oversight of the financial industry"
        ),
        
        pregStruc(
            preg:"Why did President George W. Bush sign the Troubled Asset Relief Program (TARP) into law in 2008?",
            preg1:"Because he believed in government intervention in the financial industry",
            preg2:"Because he wanted to send a message to the financial industry that the government would always bail out big banks",
            preg3:"Because he believed that the global financial system was in danger of collapsing",
            preg4:"Because he wanted to gain political support from the financial industry",
            respCorrec:"Because he believed that the global financial system was in danger of collapsing"
        ),
        
        pregStruc(
            preg:"What is the author's view on how to prevent future financial crises?",
            preg1:"Increase government regulation of the financial industry",
            preg2:"Allow the big banks to fail",
            preg3:"Decrease government involvement in the financial industry",
            preg4:"Increase government support for the financial industry",
            respCorrec:"Decrease government involvement in the financial industry"
        ),
        
    ])
];


