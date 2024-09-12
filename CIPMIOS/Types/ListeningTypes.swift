import Foundation

struct TextEntry {
    let title: String
    let content: String
}

struct CatPregSig: Codable{
    let pragger: String
    let praggerWord: [CatPregInd]
}

struct CatPregInd: Codable {
    let keyWord: String
    let significado: String
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

struct praggerText: Codable{
    let pragger:String
    let text:String
}

struct praggerTextInfo: Codable{
    let pragger: String
    let praggerWord: String
}

let DatosPragger: [praggerTextInfo] = [
    praggerTextInfo(pragger: "Black Fathers", praggerWord: """
                Years ago, I interviewed Kweisi Mfume, then the president of the NAACP. “As between the presence of white racism and the absence of black fathers,” I asked, “Which poses the bigger threat to the black community?” Without missing a beat, he said, “The absence of black fathers.

                "It was President Barack Obama who said, We all know the statistics. That children who grow up without a father are five times more likely to live in poverty and commit crime; nine times more likely to drop out of school and 20 times more likely to end up in prison.”

                "The Journal of Research on Adolescence confirms that even after controlling for varying levels of household income, kids in father-absent homes are more likely to end up in jail. And kids who never had a father in the house are the most likely to wind up behind bars.

                "In 1960, 5 percent of America's children entered the world without a mother and father married to each other. By 1980 it was 18 percent, by 2000 it had risen to 33 percent, and fifteen years later, the number reached 41 percent.

                "For blacks, even during slavery when marriage for slaves was illegal, black children were more likely than today to be raised by both their mother and father. Economist Walter Williams has written that, according to census data, from 1890 to 1940, a black child was more likely to grow up with married parents than a white child.

                "For blacks, out-of-wedlock births have gone from 25 percent in 1965 to 73 percent in 2015. For whites, from less than 5 percent to over 25 percent. And for Hispanics, out-of-wedlock births have risen to 53 percent.

                "What happened to fathers?

                "The answer is found in a basic law of economics: If you subsidize undesirable behavior you will get more undesirable behavior. In 1949, the nation’s poverty rate was 34 percent. By 1965, it was cut in half, to 17 percent -- all before President Lyndon Johnson’s so-called War on Poverty. But after that war began in 1965, poverty began to flat line. From 1965 until now, the government has spent over $20 trillion to fight poverty.

                "The poverty rate has remained unchanged, but the relationship between poor men and women has changed – dramatically. That’s because our generous welfare system allows women, in effect, to marry the government. And this makes it all too easy for men to abandon their traditional moral and financial responsibilities. Psychologists call such dependency learned helplessness.

                "How do we know that the welfare state creates disincentives that hurt the very people we are trying to help? They tell us.

                "In 1985, the Los Angeles Times asked both the poor and the non-poor whether poor women oftenhave children to get additional benefits. Most of the non-poor respondents said no. However, 64 percent of poor respondents said yes. Now, who do you think is in a better position to know?

                "Tupac Shakur, the late rapper, once said: I know for a fact that had I had a father, I'd have some discipline. I'd have more confidence.He admitted he began running with gangs because he wanted the things a father gives to a child, especially to a boy: structure and protection.

                "“Your mother cannot calm you down the way a man can,” Shakur said. “You need a man to teach you how to be a man.

                "In my book Dear Father, Dear Son,I write about my rough, tough World War II Marine staff sergeant dad. Born in the Jim Crow South of Athens, Ga., he was 14 at the start of the Great Depression. Growing up, I watched my father work two full-time jobs as a janitor. He also cooked for a rich family on the weekends--and somehow managed to go to night school to get his GED. When I was 10, my father opened a small restaurant that he ran until he retired in his mid-80s.

                "He was never angry or bitter--and insisted that today’s America was very different from the world of racial segregation and limited opportunity in which he grew up. Hard work wins,” he told me and my brothers. “You get out of life what you put into it. You can’t control the outcome, but you are 100% in control of the effort. And before blaming other people, go to the nearest mirror and ask yourself, ‘what could I have done to change the outcome?’” This advice shaped my life.

                "Fathers matter. Until we have a government policy that makes that its first priority, nothing will change.

                "I’m Larry Elder for Prager University.
"""),
    praggerTextInfo(pragger: "Is America Racist?", praggerWord: """
                    Is racism still a major problem in America? President Barack Obama certainly thinks so. He said that racism is “in our DNA.” Really? If racism is in our DNA, doesn’t that mean it's immutable, unchangeable?
                    
                    But America has changed -- and dramatically so. In 1960, 60% of Americans said they would never vote for a black president. Almost 50 years later, the black man who said racism is in America’s DNA was elected president, and four years later re-elected. That’s only the most obvious example of racial progress. There are many others.
                    
                    Take inter-racial marriage. As William H. Frey of the Brookings Institution wrote, “Sociologists have traditionally viewed multiracial marriage as a benchmark for the ultimate stage of assimilation of a particular group into society.” Black-white marriages were still illegal in 16 states until 1967. And a 1958 Gallup poll found that only 4% of Americans approved of black-white marriages. Today that number is 87%. In 1960, of all marriages by blacks, only 1.7 percent were black-white. Today, it’s 12 percent and rising.
                    
                    Now what about “racial profiling” and abuse of blacks by police? Doesn’t that prove that racism remains a major problem? In the summer of 2014, Ferguson, Missouri became ground zero for this accusation when a white policeman shot and killed an unarmed black teenager.  While a Department of Justice investigation of the incident cleared the officer of any wrongdoing, it did accuse the city’s police department of racial bias.
                    
                    But what was the Justice Department report’s most headline grabbing stat? The gap between the percentage of blacks living in Ferguson -- 67% -- and the percentage of those stopped by police for traffic violation who are black -- 85%. An 18 point discrepancy.
                    
                    Racism, right? Not so fast.
                    
                    Blacks comprise 25% of New York City, but account for 55% of those stopped for traffic offenses -- a 30-point discrepancy, far bigger than that of Ferguson. Why isn’t the NYPD, a department that is now majority minority, considered even more institutionally racist than the Ferguson PD? The answer is you cannot have an honest discussion about police conduct without an honest discussion of black crime.
                    
                    Though blacks are 13% of the population, they commit 50% of the nation’s homicides, and almost always the victim is another black person, just as most white homicides are against other whites. In 2012, according to the Center for Disease Control, police killed 123 blacks, while, by the way, killing over twice that many whites. But that same year blacks killed over 6,000 people -- again, mostly other blacks.
                    
                    What about traffic stops? Unlike when responding to dispatch calls, police officers exercise more discretion when it comes to traffic stops. Therefore “racist” cops can have a field day when it comes to traffic stops, right?
                    
                    Actually, no.
                    
                    The National Institute of Justice is the research agency of the Department of Justice. In 2013, the National Institute of Justice published a study called Race, Trust and Police Legitimacy. Three out of four black drivers admitted that they were stopped by the police for a legitimate reason. Blacks, compared to whites, were on average more likely to commit speeding and other traffic offenses. The Institute wrote, “Seatbelt usage is chronically lower among black drivers. If a law enforcement agency aggressively enforces seatbelt violations, police will stop more black drivers.
                    
                    The NIJ’s conclusion? These numerical disparities result from differences in offending -- in other words, not because of racism.
                    
                    Similarly, the National Highway Traffic Safety Administration also found that blacks violate traffic laws at higher rates than whites -- in every offense, whether it’s driving without a license, not wearing a seat belt, not using a child safety seat or speeding."
                    
                    Is there still racism in America? Of course, there is. But racism is not in America’s DNA. Recent history and a lot of research and data prove it."
                    
                    As liberal Harvard sociologist Orlando Patterson said, America, “is now the least racist white-majority society in the world; has a better record of legal protections of minorities than any other society, white or black; offers more opportunities to a greater number of black persons than any other society, including all of those of Africa.
                    
                    Patterson, by the way, is black.
                    
                    I’m Larry Elder for Prager University.
"""),
    praggerTextInfo(pragger: "Don't Compare Yourself to Others", praggerWord: """
                            Do you ever look at the lives of people around you and say, “Man, I wish that was me!”?
                            
                            You know you do. Everybody does. But I bet you never compared yourself to me. Haven’t heard of me? I do have my own TV show...in the middle of the night.
                            
                            When I started I wanted to be as big as Jerry Seinfeld. I’m not. And yet, I’m a pretty happy guy. Here’s why: I stopped comparing myself to other people. Seriously, that’s the whole trick.
                            
                            Here’s what I mean.
                            
                            If my happiness were based on being the biggest comedian in the business, I’d be mad at whoever was getting more Netflix specials than me. (I have zero.) If it were based on having the best TV ratings, I’d be mad at Jimmy Fallon. He beats me every night. And if it were based on being rich, I’d be mad at a lot of people. And even if I were rich – really rich, like #10 on the Forbes 400 rich – I’d be mad that there were nine other people richer than me. It never ends. Comparing yourself to others creates a totally unrealistic measure for what constitutes success. And I know, because the entertainment business is all about unrealistic expectations.
                            
                            All through my career I’d meet with satisfied customers after my shows and they’d say,“Hey, you’re good! Maybe someday you’ll be successful like Jerry Seinfeld.” He’s the measure of success? The top guy?
                            
                            When someone tells you they’re a doctor, you don’t say, “Well, maybe someday you’ll cure a disease and save millions of lives, just like Jonas Salk did for polio.”
                            
                            Or a lawyer: “Oh, wow, so what’s your ultimate goal? The Supreme Court?”
                            Do you see how crazy that sounds?
                            
                            Professional success is about making a living, pursuing excellence, and finding meaning in what you do.
                            
                            When I first started doing standup, I was a nobody. It took more than a decade of playing in front of tuned-out crowds before it started paying the bills. Ten years is a lot of time to tell jokes for no money to people who aren’t laughing.
                            
                            In those days, I spent a lot of time thinking about the comedians I admired. The guys at the top. I wanted those big, sold out houses I wasn’t playing. The big paydays I wasn’t making. TheTV specials I wasn’t doing.
                            
                            And not just their success; their talent. I’d look at comics like George Carlin, Robin Williams and Louis C.K. They were all able to turn their dark, personal struggles into brilliant comedy. I envy their talent, but I wouldn’t want the dark personal struggles that went along with it.
                            
                            If you don’t factor in everything about whoever you’re comparing yourself to, you’re playing a sort of mix-and-match game that doesn’t exist in the real world.
                            
                            Here’s one of life’s little truths: everyone is a package deal. You can’t view one element of someone else’s life in isolation. That’s cheating.
                            
                            You can’t say, “I want Louis C.K.’s money and fame, Jay Leno’s car collection and Tom Shillue’s wife and kids.” That person doesn’t exist! If he did, he’d be pretty cool. I would definitely want to hang with him.
                            
                            Everyone has pain in their lives. Think of anybody who you know really well. You know the awful stuff they’ve had to deal with -- the demons they battle. How many dead rock stars, movie stars and, yes, comedians does it take to convince us all that everyone’s life is hard?
                            
                            Face it.
                            
                            You really don’t want someone else’s life. You want your own life -- only better. But that’s the thing. You can make your life better by not doing something – comparing yourself to other people.
                            
                            Back when I was a nobody, I wanted to sell out the biggest venues and have a prime-time TV show with millions of viewers. Now I sell out small venues and I’m on in the middle of the night with half a million viewers. And I appreciate every one of them.
                            
                            I guess when I compare myself now to myself then, I’m doing okay. You should try it.
                            
                            I’m Tom Shillue for Prager University.
                """),
    praggerTextInfo(pragger: "Fix Yourself", praggerWord: """
                                Blaming others for your problems is a complete waste of time. When you do that, you don’t learn anything.
                                
                                You can’t grow, and you can’t mature. Thus, you can’t make your life better.
                                
                                In my three decades as a professor and clinical psychologist, I have learned that there are two fundamental attitudes toward life and its sorrows. Those with the first attitude blame the world. Those with the second ask what they could do differently.
                                
                                Imagine a couple on the brink of divorce. They’re hurt and angry. The unhappy, bitter husband recalls the terrible things his wife has done, and the reasons he can no longer live with her.
                                
                                The harried and disillusioned wife, in turn, can describe all the ways her husband let her down. Each has a long list of necessary changes — for the other person.
                                
                                Their prospects for reconciliation are grim. Why? Because other people aren’t the problem. You’re the problem. You can’t change other people, but you can change yourself. But it’s difficult. It takes courage to change, and it takes discipline. It’s much easier — and much more gratifying to your basest desires — to blame someone else for your misery.
                                
                                Consider the youthful activist, making a statement against the “corrupt” capitalist system by smashing in the storefront of a local business. What has he done, other than to bring harm to people who have nothing to do with his real problems?
                                
                                The guilt, doubt and shame he will inevitably feel in consequence will have to be suppressed so his beliefs can remain unchanged. And that suppression will do nothing but foster his anger and alienation.
                                Do you see how crazy that sounds?
                                
                                In the play “The Cocktail Party” by American-English poet T.S. Eliot, one of the characters is having a very hard time of it. She speaks of her profound unhappiness to her psychiatrist. She tells him that she hopes her suffering is all her own fault.
                                
                                Taken aback, the psychiatrist asks why. Because, she tells him, if it’s her fault, she can do something about it. If it’s in the nature of the world, however, she’s doomed. She can’t change everything else. But she could change herself.
                                
                                Now, there are people who seem to be consigned to a terrible fate. But most of us aren’t. Most of us have a chance to make our lives better.
                                
                                But how?
                                
                                Start small. Ask yourself a few questions: Have you taken full advantage of the opportunities offered to you? Are you working to your fullest capacity at school or at work? Have you, in other words, set your own house in order?
                                
                                If the answer is no, try this: stop doing what you know to be wrong. Stop today.
                                
                                Don’t waste time asking how you know that what you’re doing is wrong.
                                
                                Inopportune questioning can confuse without enlightening, and deflect you from action. You can know something is right or wrong without knowing why.
                                
                                Start paying attention: Do you procrastinate, show up late, spend money you don’t have, and drink more than you should?
                                
                                It’s not a matter of accepting some externally imposed morality. It’s a dialogue with your own conscience. What are you doing that’s wrong, from your own perspective? What could you put right right now?
                                
                                Get to work on time. Stop interrupting people. Make peace with your siblings and your parents. Diligently utilize everything you already have at hand. If you do those things, your life will improve. You’ll become more peaceful, productive and desirable.
                                
                                After some days, or weeks, or months of attentive effort, your mind will clear. Your life will become less tragic, and you will become more confident. You’ll start seeing right from wrong more clearly. The path in front of you will shine more brightly. You’ll stop getting in your own way. Instead of bringing trouble to yourself, your family, and your society, you’ll be a positive and reliable force.
                                
                                Your life will still be difficult. You’ll still suffer. That’s the price of being alive. But maybe you’ll become strong enough to accept that burden, and in that fashion even come to act nobly, and with purpose.
                                
                                The proper way to fix the world isn’t to fix the world. There’s no reason to assume that you’re even up to such a task. But you can fix yourself. You’ll do no one any harm by doing so.
                                
                                And in that manner, at least, you will make the world a better place.
                                
                                I’m Jordan Peterson, Professor of Psychology at the University of Toronto, for Prager University.
                                """),
    praggerTextInfo(pragger: "Are Men and Women Different?", praggerWord: """
                    Have you ever pushed a beach ball underwater? What happens? It pops right back up!
                    Because of its nature, a beach ball will not stay submerged.
                    
                    The same is true for men and women. Each has a distinct nature that will always rise to the surface.
                    
                    Simply put, men and women are different. They look different. They have different body parts. Different biology. Different hormones. They express emotions differently. They have different needs and desires.
                    
                    Now, if you told that to your great-grandmother who never went to college, never used an iPhone, never used social media, she would have asked, \"Why are you telling me something so obvious?\" But if you said the same thing to a graduate student in sociology or anthropology, let alone gender studies, they'd say you were wrong.
                    
                    Men and women are basically the same,\" the grad student would say. \"Sexuality exists on a spectrum. It's determined by people's internal feelings.\"
                    
                    Between great-granny and the gender studies PhD, I'm going with granny and her common sense.
                    
                    To believe that men and women are basically the same is to believe a delusion. A delusion is a belief that contradicts reality. You can say you're Napoleon, but that doesn't make you Napoleon. You can try to socialize girls into behaving like boys or boys into behaving like girls, but it won't work. You can push the beach ball underwater, but not for long.
                    
                    New York pediatrician George Lazarus tells the story of a couple who didn't want their young daughter to conform to the usual pink and blue stereotype. So they bought her a set of toy trucks. The father went to her room to check on her, and she told him to be quiet--the trucks were sleeping.
                    
                    A similar story about his twin daughters pretending their \"daddy truck\" was \"carrying the baby truck\" was told by the former president of Harvard University, Lawrence Summers. Give a little boy a truck--or just about any other object--and sooner or later he will turn it into a weapon. That's reality.
                    
                    Believing delusions makes people say and do foolish, self-destructive things.
                    
                    Here's an example: If men and women are basically the same, they want the same things from sex--right? But this isn't true. Women tend to be far more selective about partners with whom they choose to be intimate. That's female nature. Men tend to be, shall we say, far less discerning. That's male nature.
                    
                    Once, this was considered common sense. Nobody had to go to graduate school or do an academic study to figure it out. But now everything is upside down. We're trying to push the beach ball under water. Today, male and female college students who, 50 years ago, lived in separate buildings and had delusion now share the same dorm rooms and even the same bathrooms.
                    
                    And sex--well, it's just another form of college entertainment. It means nothing and has no consequences--emotionally, psychologically, or physically.
                    
                    But, certainly as far as most women are concerned, this just isn't true. If sex doesn't mean anything, why would any woman feel violated by an uninvited touch? Do you think a man whose Leg is touched by a woman he doesn't know feels as violated as a woman does when her leg is touched by a man she doesn't know?
                    
                    If sex doesn't mean anything, why did Jennifer Lawrence say to the Hollywood Reporter after filming an intimate scene with her co-star, Chris Pratt, in the movie Passengers:
                    
                    I knew it was my job, but I couldn't tell my stomach that... That was the most vulnerable I've ever been.\"
                    
                    She felt vulnerable in that scene, but not in others, because she knows even acting out in a movie scene, sex is a big deal. That's one of many reasons it has traditionally been confined to marriage. And why experience and research show that sex within marriage is more satisfying emotionally, psychologically, and physically--not to mention spiritually--than sex outside of marriage.
                    
                    Anyone who tells you that men and women are basically the same and that sex means as little to women as it can to many men is not telling you the truth. They're making stuff up. They're pushing an agenda--theirs, not yours.
                    
                    So, trust granny. Trust common sense. And remember the beach ball.
                    
                    I'm Sean McDowell, Associate Professor of Theology and Philosophy at Biola University, for Prager University.
                    """),
    praggerTextInfo(pragger: "Don't Waste Your Time", praggerWord: """
                Women, here’s a revolutionary idea: Date with a purpose. What purpose? Getting married.
                
                Whoa! Am I moving too fast for you? Making you uncomfortable? Dating, you say, is just—well, dating. You know—hook ups, casual flings, having fun.
                
                Yeah? Who said so?
                
                Don’t get me wrong. I’m all for fun, but I’m interested in something deeper here—like happiness. I’m certainly not saying that marriage should be the first topic of conversation. At least wait until the pizza is served (just kidding). But I am saying that you need to ask yourself this question: Why do you want to go on a date with someone? Physical attraction? That’s important. Common interest in something? Also important. But what else?
                
                Let’s face it, most of the time, we—and by “we” here, I’m referring to women—have no idea. We have no plan. That’s okay as far it goes. But “as far as it goes” is not very far. And, frankly, not very smart.
                
                But let’s play out the scenario. We too often assume that relationships have levels of commitment, progressing—if they progress at all—like video games. A hookup is level one, dating is level two; level three—living together. And then, after we’ve had those, maybe we’re ready for marriage.
                
                But in fact, relationships usually don’t progress that way. Hookups arise out of whim, impulse, or simple attraction. Dating is often based on compatibility or convenience, and sometimes on the hope that something serious might develop. Living together may be based on real love and a tryout for marriage. But it can also be based on less serious considerations, like lack of other opportunities, desire for a roommate, or the inability to afford a single apartment.
                
                But marriage is a different enterprise entirely. Those looking for a good marriage are looking for someone who wants to build a shared life. They’re looking for someone who shares their values and beliefs―moral, political, and, where applicable, religious. They view each other not only as a “partner,” but as something even more profound: husband and wife.
                
                The problem with so many dating relationships is that people enter them with completely different understandings of what the ideal outcome should be. He wants X, and she wants Y.
                
                And it’s easy to get distracted and fooled by superficial compatibility. They’re thrilled they both like kombucha, kayaking and karaoke on the weekends. That’s all great, but when do you get down to the stuff that really matters over the long run? Stuff like marriage, family, faith, and values.
                
                I say: the sooner, the better. If a relationship looks like it has a future, talk about it early on. And if doesn’t look like it has a future, what are you doing in it?
                
                I have no doubt the reason so many women get stuck in dead-end relationships is that it has become taboo―or, to be precise, not politically correct―for a woman to articulate what she really wants.
                
                Which takes me back to marriage, and why women crave it. Here are three reasons:
                
                Protection.
                
                Commitment.
                
                Love.
                
                Nothing wrong with wanting those things. It is something women have wanted—and great societies have valued—for thousands of years. It is something men still want, too. Little wonder: Study after study shows that those in good marriages are happier, healthier, even wealthier, than those who are not. Like anything you want, you have to work toward it. And anything that isn’t moving you toward your goal is a waste of time.
                
                What’s the difference between living with someone and marriage? It’s the difference between referring to the man in your life as “my boyfriend,” “significant other,” or “partner” and referring to him as “my husband.” And him referring to you as “my wife,” as compared with “my girlfriend.”
                
                Ask anyone who has taken the plunge and they’ll tell you living together and marriage have little in common. It’s sort of like the difference between living in a country and being a citizen of that country.  The latter, with its commitment, obligations, and expectations, means a lot more.
                
                To someone who tells you that a marriage license is trivial, “just a piece of paper,” here’s a good response: If it’s just a piece of paper, why are you so reluctant to sign it? The answer, of course, is that no one believes that it’s trivial. Everyone knows it’s the most important decision you’ll ever make. So treat it that way.
                
                Here’s a good rule of thumb: Think about the kind of relationship you want as much as you think about what kind of career you want.
                
                I’m not anti-career. I’m just pro-relationship. Specifically, pro-marriage. Because when you get it right, that’s the best relationship there is.
                
                And it starts with the first date.
                
                I’m Lauren Chen, host of Pseudo-Intellectual on BlazeTV, for Prager University.
"""),
    praggerTextInfo(pragger: "How to Make Our Cities Safer", praggerWord: """
            After two decades of relative peace, violent crime has again become a major issue in the United States.
            
            In 2020, homicides rose by 30 percent, a record for a one-year increase.
            
            In 2021 and 2022, homicides continued to climb, shattering records in several cities.
            
            We don’t have to live this way. Here are four practical solutions that will make our cities safer.
            
            None of these solutions are theoretical.
            
            They’re street-tested and backed by rigorous studies.
            
            They’re Constitutional and cost-effective.
            
            While each one will reduce crime on its own, taken together, they can transform a city—not in decades, but within a year or two.
            
            Here’s what we need to do.
            
            First: Target the Power Few
            
            Violent crime is highly concentrated.
            
            We know where violent crimes are likely to be committed: drug houses, gang hangouts, a problem bar. Crime “hot spots.”
            
            We know when violent crimes are likely to be committed: at night, on weekends, and during the hot summer months.
            
            But more importantly, we know who commits violent crimes: they’re called the Power Few.
            
            In any given city, just five percent of criminals are responsible for 50 percent of all violent crimes. I want to make this abundantly clear: it’s not five percent of the total population of a city that is driving the majority of violent crime; it’s five percent of the criminals—a subset of a subset. Targeting this small cohort of high-frequency offenders can substantially reduce violent crime rates throughout an entire city.
            
            Second: Go After the Drug Dealers and Gun-Toting Felons
            
            You don’t have to dig very deeply into crime statistics to discover that drug dealers and felons in possession of firearms are linked to many violent crimes, especially homicides.
            
            These are the people who are not only likely to kill but to be killed.
            
            So if law enforcement focuses on drug dealers and gun-toting felons, they’ll reduce the number of both potential killers and potential victims on the street.
            
            But targeting drug dealers has an added benefit, one that’s lost on the public, but well-known to law enforcement.
            
            Drug dealers, often part of drug gangs, have the best information about homicides and all sorts of other crimes.
            
            Any investigator who interrogates a drug-dealing gang member will likely soon discover that the defendant has witnessed or participated in multiple shootings, both fatal and non-fatal. In addition, that same defendant will know about a score of other crimes—everything from robberies to carjackings to organized retail theft rings. And if he is facing a long sentence, there’s a good chance he’ll give up that information.
            
            Third. Unite Cops and Prosecutors
            
            When police and prosecutors collaborate from the inception of an investigation, good things happen. This is a concept known as vertical prosecution.
            
            Working as a team, police and prosecutors discuss targets, timing of arrests, and legal issues like whether a search warrant is required. Once the investigation is completed, the police remain involved at the trial stage helping to determine the order of witnesses, trial themes, and even jury selection.
            
            This style of collaboration is resource and time intensive, but it pays big dividends. There’s no blaming each other for a poor investigation or bad trial strategy because everybody participated in all aspects of the case.
            
            When the prosecutors and police work together, particularly in major cases like homicides, the cases are better investigated, legal errors are minimized, the system works as intended. In short, justice is done.
            
            On the other hand, and this seems to be happening more and more in America today, when the prosecutors and police are actively hostile towards one another, the only people who win are the criminals.
            
            Fourth: Keep the Bad Actors in Jail
            
            Progressive politicians insist that the length of prison sentences plays no significant role in stopping crime. Most law enforcement officials strongly disagree.
            
            So, who’s right?
            
            In two separate studies, in 2020 and 2022, the United States Sentencing Commission, an independent federal agency, took up this question. Their analysis involved thousands of federal inmates over multiple decades.
            
            Their conclusion was clear: once prison sentences get to five years in length, the longer the prison sentence, the less likely the criminal will commit another crime.
            
            Your average citizen could tell you why incarceration matters.
            
            One, people don’t want to go back to prison. So criminals try not to commit more crimes.
            
            Two, the age-crime curve tells us that most violent criminals commit the majority of their crimes from their late teens into their 20s. Prison sentences of over five years simply take these violent criminals out of circulation when they are at their most dangerous.
            
            So, let’s review:
            
            Target the Power Few
            
            Go after the drug dealers and gun-toting felons
            
            Unite cops and prosecutors
            
            And keep the bad actors in jail
            
            That’s what separates safe cities from dangerous ones.
            
            It’s not rocket science just good law enforcement.
            
            I’m Tom Hogan, former federal and local prosecutor and criminal defense lawyer, for Prager University."
"""),
    praggerTextInfo(pragger: "How to End Systemic Racism", praggerWord: """
            There is systemic racism in this country. 
            
            And people of color are paying a terrible price because of it.
            
            The elites who have instigated this moral crime deserve to be exposed for what they’ve done.
            
            The sooner we call attention to them…
            
            The sooner we expose their regressive ideas…
            
            The sooner we live in a more just society.
            
            No truth. No peace.
            
            Here’s how bad it is.
            
            At Columbia University black students have a separate graduation from white students. In many other colleges, black students are encouraged to live in their own separate dorms.
        
            Students in many New York City government schools are separated by color during the school year.
            
            State governments put regulations in place that make it harder for minorities to start businesses.
            A national museum declares hard work and ambition to be white values.
            
            One of America’s two major political parties assumes that many black people are incapable of obtaining a driver’s license or an ID card.
            
            In Oregon, black students are told that math is a white construct—all but guaranteeing failure in this essential skill.
            
            In Baltimore less than 10% of minority students can read at grade level—all but guaranteeing failure in this essential skill.
            
            In Oakland, no student is allowed to get a D or an F. Instead, everyone is simply promoted to the next grade whether they know the material or not.
            
            City councils demonize their own police departments, then vote to cut police budgets. Crime and murder skyrocket. The victims are almost all minorities.
            
            Prosecutors refuse to prosecute hardened criminals. Instead, they let the criminals back on the streets to prey on law-abiding, hard-working citizens, again, mostly black people.
            
            That’s only a few of many examples.
            
            It's shocking but commonplace.
            
            Every day in every major city, people of color are living in this oppressive, patronizing environment. These prejudices—literally prejudgments—make it more and more difficult for black people and other minorities to improve their lives—the very opposite of what the goal should be.
            
            In other words, the very people claiming to have black people’s and minorities’ best interests at heart are instituting the very policies and attitudes that are holding them back.
            
            Sounds like systemic racism to me.
            
            And it makes you think that we’re not moving forward as a pluralistic, equal-opportunity nation, but backward into Jim Crow.
            
            Now, here’s the kicker.
            
            It’s not those horrible, nasty, bigoted, misogynistic, authoritarian nationalists on the right who are imposing these crushing rules and policy prescriptions; it’s the woke left.
            
            The side that I revered as a beacon of tolerance, the side that I thought was on the right side of history, up until a few years ago.
            
            In fact, I was so committed, I got a “Black Lives Matter” tattoo.
            
            I still have it.
            
            But then I had to face reality.
            
            It’s the ideology of the left that has set back young students of color with lower education standards. That calls for pulling cops out of high crime areas and replacing them with social workers… That states that skin color is more important than character—more important than anything.
            
            Yes, it is the woke left that is systemically racist.
            
            Not America.
            
            The race hoax epidemic is proof. There have been dozens of these hoaxes over the last few years.
            
            Nooses on garages, the N-word on dorm rooms, “this is MAGA country” taunts on cold city streets—virtually every one of them has been faked.
            
            The demand for racism exceeds the supply.
            
            If racism against black people or any other minority group was rampant, you wouldn’t have to fake it to convince people how “bad” things are.
            
            Did anyone fake racism in the South in the 1950s?
            
            But there’s so little now that the race-obsessed woke left has manufactured “unconscious racism” and “microaggressions” to fool people into believing America is “systemically racist.”
            
            That’s not to say racism doesn’t exist. Of course it does. There will always be small-minded people. But their numbers are as small as their minds.
            
            And in case you’re thinking of George Floyd, please know that even Minnesota’s leftist Attorney General admitted the incident had nothing to do with Floyd being black.
            
            My father and millions of Africans didn’t immigrate to America so that they could live in a racist society. They immigrated so that they could have opportunities that were only available to them here.
            
            So, to all the leftists out there, I understand why you believe what you believe—I was once one of you—but it’s time to ask yourself some questions.
            
            Is it really helping black people to tell them they’re not as responsible for their actions as anyone else?
            
            Isn’t it condescending, if not outright bigoted, to expect less from somebody purely based on their race?
            
            Isn’t it clear that we should judge each person on their merits, not their skin color?
            
            Wouldn’t that do more to create an equitable society than a hundred government programs?
            
            Yes, there really is systemic racism. And it’s hurting the country. But it’s not coming from the direction you think.
            
            Once you realize that, everything changes.
            
            I’m Amala Ekpunobi for Prager University.
"""),
    praggerTextInfo(pragger: "Should Government Bail Out Big Banks?", praggerWord: """
            In 2008, America experienced the biggest meltdown of its financial sector since the Great Depression. The conventional wisdom is that this failure and subsequent government rescue, commonly known as \"the bailout\" was brought about by three decades of bank de-regulation. There were a lot of causes for the meltdown, but deregulation wasn't one of them. Ironically, it wasn't because the banks had become unmoored from government control that led them into the financial storm, it was because they had become too closely tied to government. For three decades Uncle Sam, like an enabling parent, had always \"been there\" when the big banks got into trouble. The shock in 2008 was that for one brief moment, Uncle Sam wasn't there. 
            
            In the wee hours of September 15, 2008, Lehman Brothers filed for bankruptcy. The financial industry waited for the Feds to step in and save Lehman bondholders like it saved those of Bear Stearns some months earlier. That didn't happen. Global financial markets seized up. As the Dow Jones Industrial average fell 498 points, or nearly 4.4 percent, financial institutions effectively went on strike. Banks wouldn't lend money to other banks and thus, indirectly, to the public because they had no idea which financial institution might go belly up next. The economy can withstand a stock-market crash, but a credit-market freeze -- essentially a cash freeze -- can cause a Depression, as credit underpins almost all business and personal activities. Indeed, some large companies, including General Electric, were so dependent on these short-term credit markets that they were in danger of not being able to pay their workers.
            
            The financial industry pleaded with the government to act. Later in the same day, September 15, it did. The Feds wouldn't save Lehman's but it would save AIG, the primary insurer of mortgage loans. A month later, the Troubled Asset Relief Program (TARP), a $700 billion plan to pump taxpayer cash into America's banks and financial institutions was approved by Congress.
            
            Public officials generally agreed that the free market had failed. In November 2008, President George W. Bush came to New York to explain why he, a Republican president, had signed TARP into law. \"I'm a market-oriented guy, but not when I'm faced with the prospect of a global meltdown,\" he said.
            
            But free-market capitalism had not melted down. Again, the problem was not that banks had been too free, but that they had grown too dependent on government over the last few decades. Here's a brief history.
            
            America's first post-Depression bailout of a big bank came in 1984 when the Republican administration of Ronald Reagan, with help from the Federal Reserve bailed out Continental Illinois, the eighth largest commercial bank in the nation. The bailout introduced the phrase \"too big to fail\" to the financial media's vocabulary.
            
            The premise for rescuing Continental was simple: the bank had many global bondholders, big investors, and the government feared that the bondholders might pull their money out of all American banks if they saw that a bank like Continental could fail. That might have stemmed a short-term panic, but it created a long-term monster. The government had effectively said to financial markets: if you lend money to a big bank, it's just like lending money to the U.S. Treasury -- only it's better because the banks will pay you more interest than you can get from your Treasury bonds.
            
            And so money poured in from investors. The banks got bigger... and more reckless.  And when the next crisis rippled through the financial industry, there was Uncle Sam, ready with his checkbook.
            
            In 1998 the government, this time under Democrat Bill Clinton bailed out Long-Term Capital Management, a hedge fund that teetered at the edge of bankruptcy and threatened to drag some big banks down with it. The message to the banks was clearer than ever: take bigger risks. Uncle Sam would be there, if any thing went wrong.
            
            Indeed, as I noted, early in the crisis, in March 2008, the government brokered the purchase of the Bear, Stearns investment bank (to JP Morgan) to save its bondholders and other creditors from suffering huge losses. And that summer, Washington rescued Fannie Mae and Freddie Mac, the giant government sponsored mortgage companies.
            
            It's the fact that the government didn't rescue Lehman Brothers that set off the 2008 panic because the financial world simply assumed that Uncle Sam would. Would we have been better off had the government saved Lehman's? Maybe in the short run. But it's likely that crisis would have occurred anyway. Because banks assumed that the government would always bail them out, their risk models by 2008 were all out of whack; conservative practices, like lending only to credit-worthy borrowers, a relic of the past.
            
            What's the solution? How do we bring sanity back to the financial industry? Not by passing thousands of new regulations. The banks' army of accountants, lawyers and lobbyists can always work their way around those. The solution is that the government must stop guaranteeing the big banks' losses. Only then will bondholders, the big investors like pension funds and insurance companies, who lend the financial sector the money they need to operate, have an incentive to police the industry.
            
            It's that simple.
            
            I'm Nicole Gelinas, a senior fellow at the Manhattan Institute, for Prager University.
""")
]

//PREGUNTAS TEST
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
        ),
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
                  respCorrec: "Black"),
        
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
                  respCorrec: "To compare yourself only to the past version of yourself"),
        
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
            respCorrec: "Toronto"),
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
                  respCorrec: "Because it is a big deal with deep emotional, psychological, and physical implications"),
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
                  respCorrec: "Lauren Chen"),
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
            preg:"What was the purpose of the Troubled Asset Relief Program (TARP),?",
            preg1:"To bail out Lehman Brothers",
            preg2:"To pump taxpayer cash into America's banks and financial institutions",
            preg3:"To provide short-term credit to struggling companies",
            preg4:"To regulate the financial industry more closely",
            respCorrec:"To pump taxpayer cash into America's banks and financial institutions"
        ),
        
        pregStruc(
            preg:"What was the phrase too big to failreferring to in the context of the 1984 bailout of Continental Illinois?",
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
            preg:"How did the government's bailout of Continental Illinois in 1984 introduce the phrase too big to failto the financial media's vocabulary?",
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
            preg:"Why did President George W. Bush sign the Troubled Asset Relief Program (TARP), into law in 2008?",
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
        
    ]),
];

let DatosInfoRachel: [CatPregSig] = [
    CatPregSig(pragger: "Black Fathers", praggerWord: [
        CatPregInd(keyWord: "between", significado: "una preposición usada para decir que algo está entre dos cosas."),
        CatPregInd(keyWord: "children", significado: "una palabra para referirse a niños y niñas."),
        CatPregInd(keyWord: "ago", significado: "se usa con una expresión de tiempo para indicar que algo ocurrió en el pasado, por ejemplo, 'years ago' - años atrás, 'ten years ago' - hace diez años."),
        CatPregInd(keyWord: "then", significado: "entonces."),
        CatPregInd(keyWord: "I asked", significado: "yo pregunté."),
        CatPregInd(keyWord: "which", significado: "cuál, usualmente la usamos cuando tenemos dos opciones."),
        CatPregInd(keyWord: "poses", significado: "presentar o constituir (un problema, peligro, dificultad),."),
        CatPregInd(keyWord: "bigger", significado: "más grande (el sufijo ER se usa en adjetivos cortos para hacer que comparen, small/pequeño, smaller-más pequeño, tall-alto, taller-más alto),."),
        CatPregInd(keyWord: "threat", significado: "amenaza."),
        CatPregInd(keyWord: "Without missing a beat", significado: "esta es una expresión coloquial, es el equivalente en español a ¨sin titubear¨."),
        CatPregInd(keyWord: "he said", significado: "él dijo."),
        CatPregInd(keyWord: "it was", significado: "fue."),
        CatPregInd(keyWord: "who", significado: "quién."),
        CatPregInd(keyWord: "we all", significado: "todos nosotros."),
        CatPregInd(keyWord: "know", significado: "saber o conocer."),
        CatPregInd(keyWord: "that", significado: "que (se usa para introducir una cláusula),."),
        CatPregInd(keyWord: "grow up", significado: "verbo compuesto, crecer."),
        CatPregInd(keyWord: "likely", significado: "propenso, probable."),
        CatPregInd(keyWord: "poverty", significado: "pobreza."),
        CatPregInd(keyWord: "drop out", significado: "salir de la escuela, dejar de ir a la escuela prematuramente."),
        CatPregInd(keyWord: "end up", significado: "terminar."),
        CatPregInd(keyWord: "even", significado: "incluso."),
        CatPregInd(keyWord: "after", significado: "después, después de, después de que."),
        CatPregInd(keyWord: "controlling", significado: "controlar, los verbos después de cualquier preposición se escriben con terminación ing."),
        CatPregInd(keyWord: "varying", significado: "algo que varía."),
        CatPregInd(keyWord: "household income", significado: "ingreso del hogar."),
        CatPregInd(keyWord: "jail", significado: "la cárcel."),
        CatPregInd(keyWord: "most likely", significado: "los más probables/ superlativo."),
        CatPregInd(keyWord: "wind up", significado: "terminar, encontrarte a ti mismo en una situación inesperada y no placentera."),
        CatPregInd(keyWord: "each other", significado: "uno con el otro."),
        CatPregInd(keyWord: "risen", significado: "participio de elevar, elevado."),
        CatPregInd(keyWord: "reached", significado: "alcanzar en pasado, alcanzó."),
        CatPregInd(keyWord: "during", significado: "durante."),
        CatPregInd(keyWord: "marriage", significado: "matrimonio."),
        CatPregInd(keyWord: "were", significado: "eran o estaban."),
        CatPregInd(keyWord: "than", significado: "que, se usa en contexto de comparación."),
        CatPregInd(keyWord: "raised", significado: "criado, en este contexto raise se usa como 'criar'."),
        CatPregInd(keyWord: "both", significado: "ambos."),
        CatPregInd(keyWord: "written", significado: "escrito."),
        
        CatPregInd(keyWord: "according", significado: "según."),
        CatPregInd(keyWord: "out-of-wedlock", significado: "fuera de matrimonio."),
        CatPregInd(keyWord: "birth", significado: "nacimientos."),
        CatPregInd(keyWord: "less than", significado: "menos de."),
        CatPregInd(keyWord: "over", significado: "sobre."),
        CatPregInd(keyWord: "answer", significado: "respuesta."),
        CatPregInd(keyWord: "found", significado: "Participio de find (encontrar), encontrado."),
        CatPregInd(keyWord: "law", significado: "ley."),
        CatPregInd(keyWord: "if", significado: "Conector condicional es el 'si' en español, por ejemplo, si tú vienes yo voy."),
        CatPregInd(keyWord: "subsidize", significado: "subsidiar."),
        CatPregInd(keyWord: "undesirable", significado: "indeseable."),
        CatPregInd(keyWord: "behavior", significado: "comportamiento."),
        CatPregInd(keyWord: "you will get", significado: "'will' + get, juntos significan, tú obtendrás. 'Will' no tiene significado solo."),
        CatPregInd(keyWord: "so-called", significado: "así llamado, se usa para mostrar que algo o alguien se designa comúnmente por el nombre o término especificado."),
        CatPregInd(keyWord: "war", significado: "guerra."),
        CatPregInd(keyWord: "began", significado: "comenzó."),
        CatPregInd(keyWord: "began to flatline", significado: "comenzó a estancarse."),
        CatPregInd(keyWord: "from", significado: "desde."),
        CatPregInd(keyWord: "until", significado: "hasta."),
        CatPregInd(keyWord: "until now", significado: "hasta ahora."),
        CatPregInd(keyWord: "spent", significado: "gastado, en esta situación está justo después del 'has', 'has spent', ha gastado."),
        CatPregInd(keyWord: "has spent", significado: "ha gastado."),
        CatPregInd(keyWord: "to fight poverty", significado: "para luchar contra la pobreza."),
        CatPregInd(keyWord: "rate", significado: "tasa."),
        CatPregInd(keyWord: "has remained unchanged", significado: "se ha mantenido sin cambios."),
        CatPregInd(keyWord: "has changed", significado: "ha cambiado."),
        CatPregInd(keyWord: "dramatically", significado: "dramáticamente."),
        CatPregInd(keyWord: "That's because", significado: "Eso es porque."),
        CatPregInd(keyWord: "generous", significado: "generoso."),
        CatPregInd(keyWord: "in effect", significado: "en efecto."),
        CatPregInd(keyWord: "abandon", significado: "abandonar."),
        CatPregInd(keyWord: "traditional", significado: "tradicional."),
        CatPregInd(keyWord: "financial", significado: "financiero."),
        CatPregInd(keyWord: "responsibilities", significado: "responsabilidades."),
        CatPregInd(keyWord: "such dependency", significado: "tal dependencia."),
        CatPregInd(keyWord: "learned helplessness", significado: "desamparo aprendido."),
        CatPregInd(keyWord: "disincentive", significado: "desincentivo, especialmente una desventaja financiera, que tiende a desalentar a las personas de hacer algo."),
        CatPregInd(keyWord: "trying to help", significado: "tratando de ayudar."),
        CatPregInd(keyWord: "poor", significado: "pobre."),
        CatPregInd(keyWord: "non-poor", significado: "no pobre."),
        CatPregInd(keyWord: "whether", significado: "ya sea, expresar una duda o elección entre alternativas."),
        CatPregInd(keyWord: "additional", significado: "adicionales."),
        CatPregInd(keyWord: "respondents", significado: "encuestados."),
        CatPregInd(keyWord: "once said", significado: "una vez dijo."),
        CatPregInd(keyWord: "he admitted", significado: "él admitió."),
        CatPregInd(keyWord: "running with", significado: "juntarse con."),
        CatPregInd(keyWord: "gangs", significado: "pandillas."),
        CatPregInd(keyWord: "structure", significado: "estructura."),
        CatPregInd(keyWord: "protection", significado: "protección."),
        CatPregInd(keyWord: "calm you down", significado: "calmarte."),
        CatPregInd(keyWord: "the way", significado: "de la manera."),
        CatPregInd(keyWord: "teach you", significado: "enseñarte."),
        CatPregInd(keyWord: "how to be", significado: "cómo ser."),
        CatPregInd(keyWord: "my rough", significado: "mi áspero."),
        CatPregInd(keyWord: "growing up", significado: "creciendo."),
        CatPregInd(keyWord: "full-time jobs", significado: "trabajos de tiempo completo."),
        CatPregInd(keyWord: "as a", significado: "como un."),
        CatPregInd(keyWord: "janitor", significado: "conserje."),
        CatPregInd(keyWord: "also", significado: "también."),
        CatPregInd(keyWord: "his mid-80s", significado: "alrededor de sus 80 años."),
        CatPregInd(keyWord: "angry", significado: "molesto."),
        CatPregInd(keyWord: "bitter", significado: "amargado."),
        CatPregInd(keyWord: "insisted", significado: "insistió."),
        CatPregInd(keyWord: "racial segregation", significado: "segregación racial."),
        CatPregInd(keyWord: "you get out of life what you put into it", significado: "recibes de la vida lo que pones en ella."),
        CatPregInd(keyWord: "blaming other people", significado: "culpar a otras personas."),
        CatPregInd(keyWord: "what could I have done to change the outcome", significado: "qué pude haber hecho yo para cambiar el resultado."),
        CatPregInd(keyWord: "This advice shaped", significado: "este consejo formó."),
        CatPregInd(keyWord: "staff sergeant", significado: "sargento de personal."),
        CatPregInd(keyWord: "Jim Crow South", significado: "Sur de Jim Crow."),
        CatPregInd(keyWord: "full-time", significado: "de tiempo completo."),
        CatPregInd(keyWord: "somehow", significado: "de alguna manera."),
        CatPregInd(keyWord: "cooked", significado: "cocinaba."),
        CatPregInd(keyWord: "and somehow managed", significado: "y de alguna manera logró."),
        CatPregInd(keyWord: "night school", significado: "escuela nocturna."),
        CatPregInd(keyWord: "get his GED", significado: "obtener su GED."),
        CatPregInd(keyWord: "he ran", significado: "él administró."),
        CatPregInd(keyWord: "the late rapper", significado: "el fallecido rapero."),
        CatPregInd(keyWord: "fathers matter", significado: "los padres importan."),
        CatPregInd(keyWord: "we have", significado: "tenemos."),
        
    ]),
    CatPregSig(pragger: "Is America Racist?", praggerWord: [
        CatPregInd(keyWord: "certainly", significado: "ciertamente"),
        CatPregInd(keyWord: "think's so", significado: "piensa de esta forma"),
        CatPregInd(keyWord: "doesn't that mean", significado: "eso no significa?"),
        CatPregInd(keyWord: "vote", significado: "votar"),
        CatPregInd(keyWord: "was", significado: "fue"),
        CatPregInd(keyWord: "elected", significado: "elegido"),
        CatPregInd(keyWord: "almost", significado: "casi"),
        CatPregInd(keyWord: "later", significado: "después"),
        CatPregInd(keyWord: "that's", significado: "eso es"),
        CatPregInd(keyWord: "only", significado: "solamente"),
        CatPregInd(keyWord: "the most", significado: "el más, superlativo, no hay nada por encima"),
        CatPregInd(keyWord: "there are", significado: "hay, plural"),
        CatPregInd(keyWord: "take", significado: "toma"),
        CatPregInd(keyWord: "marriage", significado: "matrimonio"),
        CatPregInd(keyWord: "wrote", significado: "escribió"),
        CatPregInd(keyWord: "viewed", significado: "visto"),
        CatPregInd(keyWord: "benchmark", significado: "marcador"),
        CatPregInd(keyWord: "stage", significado: "escenario, en este caso se refiere al último paso"),
        CatPregInd(keyWord: "were", significado: "eran, fueron, estaban"),
        CatPregInd(keyWord: "until", significado: "hasta"),
        CatPregInd(keyWord: "Gallup poll", significado: "poll es encuesta Gallup es una empresa que se dedica a hacer encuestas, una encuesta de Gallup."),
        CatPregInd(keyWord: "found", significado: "encontró"),
        CatPregInd(keyWord: "of", significado: "de"),
        CatPregInd(keyWord: "all", significado: "todos"),
        CatPregInd(keyWord: "by", significado: "por"),
        CatPregInd(keyWord: "rising", significado: "elevándose"),
        CatPregInd(keyWord: "what about", significado: "expresión coloquial, como cuando tú dices “qué hay sobre” o “qué tal” y luego introduces una idea."),
        CatPregInd(keyWord: "racial profiling", significado: "es una idea, perfil racial, se refiere a que la gente es detenida por la policía solo por su color de piel."),
        CatPregInd(keyWord: "doesn't that", significado: "eso no?"),
        CatPregInd(keyWord: "remains", significado: "sigue siendo"),
        CatPregInd(keyWord: "summer", significado: "verano"),
        CatPregInd(keyWord: "became", significado: "se convirtió"),
        CatPregInd(keyWord: "ground zero", significado: "literal es donde sucedió un estallido atómico, pero se usa coloquialmente para indicar que fue el lugar que empezó un movimiento social."),
        CatPregInd(keyWord: "unarmed", significado: "desarmado"),
        CatPregInd(keyWord: "teenager", significado: "adolescente"),
        CatPregInd(keyWord: "while", significado: "mientras"),
        CatPregInd(keyWord: "cleared", significado: "aquí se refiere a que 'limpió' o 'aclaró'"),
        CatPregInd(keyWord: "wrongdoing", significado: "se refiere a cualquier hecho con malicia, error o crimen"),
        CatPregInd(keyWord: "city's", significado: "aquí se refiere al 'city's police department' o el departamento de policía de la ciudad"),
        CatPregInd(keyWord: "bias", significado: "favoritismo o sesgo"),
        CatPregInd(keyWord: "headline grabbing stat", significado: "la estadística que más agarró encabezados de periódico"),
        CatPregInd(keyWord: "gap", significado: "hueco"),
        CatPregInd(keyWord: "those", significado: "aquellos"),
        CatPregInd(keyWord: "not so fast", significado: "no tan rápido"),
        CatPregInd(keyWord: "comprise", significado: "compone, contiene, está compuesto por"),
        CatPregInd(keyWord: "account", significado: "cuentan por"),
        CatPregInd(keyWord: "bigger", significado: "más grande"),
        CatPregInd(keyWord: "even", significado: "incluso"),
        CatPregInd(keyWord: "than", significado: "que"),
        CatPregInd(keyWord: "PD", significado: "police department"),
        CatPregInd(keyWord: "cannot", significado: "no puedes"),
        CatPregInd(keyWord: "about", significado: "acerca de"),
        CatPregInd(keyWord: "without", significado: "sin"),
        CatPregInd(keyWord: "though", significado: "aunque"),
        CatPregInd(keyWord: "commit", significado: "cometer"),
        CatPregInd(keyWord: "almost", significado: "casi"),
        CatPregInd(keyWord: "always", significado: "siempre"),
        CatPregInd(keyWord: "according to", significado: "según"),
        CatPregInd(keyWord: "by the way", significado: "por cierto"),
        CatPregInd(keyWord: "over", significado: "en esta situación 'over' se refiere a sobre o más de"),
        CatPregInd(keyWord: "twice", significado: "dos veces"),
        CatPregInd(keyWord: "that many", significado: "esta es una frase cuando están juntas, es como decir de esos"),
        CatPregInd(keyWord: "but", significado: "pero"),
        CatPregInd(keyWord: "same", significado: "mismo"),
        CatPregInd(keyWord: "mostly", significado: "mayoritariamente"),
        CatPregInd(keyWord: "unlike", significado: "no parecido a"),
        CatPregInd(keyWord: "dispatch", significado: "despachar, dispatch calls son cuando mandan a los policías a un lugar en específico por una llamada de 911"),
        CatPregInd(keyWord: "when it comes to", significado: "cuando tiene que ver con"),
        CatPregInd(keyWord: "therefore", significado: "por lo tanto"),
        CatPregInd(keyWord: "have a field day", significado: "tienen un día de campo, se dan gusto"),
        CatPregInd(keyWord: "actually", significado: "realmente"),
        CatPregInd(keyWord: "published", significado: "publicó"),
        CatPregInd(keyWord: "called", significado: "llamado"),
        CatPregInd(keyWord: "out of", significado: "aquí se refiere a que tres de cada cuatro"),
        CatPregInd(keyWord: "drivers", significado: "conductores"),
        CatPregInd(keyWord: "were", significado: "fueron"),
        CatPregInd(keyWord: "average", significado: "promedio"),
        CatPregInd(keyWord: "likely", significado: "probables"),
        CatPregInd(keyWord: "speeding", significado: "pasarse del límite de velocidad"),
        CatPregInd(keyWord: "seatbelt", significado: "cinturón de seguridad"),
        CatPregInd(keyWord: "usage", significado: "uso de"),
        CatPregInd(keyWord: "lower", significado: "más bajo"),
        CatPregInd(keyWord: "among", significado: "entre"),
        CatPregInd(keyWord: "from", significado: "de"),
        CatPregInd(keyWord: "words", significado: "palabras"),
        CatPregInd(keyWord: "because of", significado: "a razón de, o por"),
        CatPregInd(keyWord: "also", significado: "también"),
        CatPregInd(keyWord: "higher", significado: "más alto"),
        CatPregInd(keyWord: "rates", significado: "tasa"),
        CatPregInd(keyWord: "whether", significado: "ya sea"),
        CatPregInd(keyWord: "wearing", significado: "usar, se usa para ropa, aquí se usa para el cinturón de seguridad"),
        CatPregInd(keyWord: "safety", significado: "seguridad"),
        CatPregInd(keyWord: "there is", significado: "hay, singular"),
        CatPregInd(keyWord: "the least", significado: "el menos"),
        CatPregInd(keyWord: "better", significado: "mejor"),
        CatPregInd(keyWord: "any", significado: "cualquier"),
        CatPregInd(keyWord: "greater", significado: "más grande"),
    ]),
    CatPregSig(pragger: "Don't Compare Yourself to Others", praggerWord: [
        CatPregInd(keyWord: "do you ever look", significado: "¿Alguna vez miras?"),
        CatPregInd(keyWord: "I wish", significado: "Yo deseo"),
        CatPregInd(keyWord: "everybody", significado: "Todos"),
        CatPregInd(keyWord: "bet", significado: "Apostar"),
        CatPregInd(keyWord: "compared", significado: "Comparado (del verbo comparar)"),
        CatPregInd(keyWord: "yourself", significado: "A ti mismo (Reflexivo)"),
        CatPregInd(keyWord: "do", significado: "Palabra usada para poner énfasis al afirmar algo. Ejemplo = No necesito esto, pero SI necesito aquello."),
        CatPregInd(keyWord: "own", significado: "Propio"),
        CatPregInd(keyWord: "middle", significado: "Mitad"),
        CatPregInd(keyWord: "as big as", significado: "Tan grande como"),
        CatPregInd(keyWord: "pretty", significado: "Muy. También usado como bonito (a) en otros contextos."),
        CatPregInd(keyWord: "here's why", significado: "Aquí está por qué"),
        CatPregInd(keyWord: "people", significado: "Personas (en plural)"),
        CatPregInd(keyWord: "whole", significado: "Todo o completo"),
        CatPregInd(keyWord: "trick", significado: "Truco"),
        CatPregInd(keyWord: "here's what I mean", significado: "Aquí está a lo que me refiero"),
        CatPregInd(keyWord: "happiness", significado: "Felicidad"),
        CatPregInd(keyWord: "were based", significado: "Fuera basada"),
        CatPregInd(keyWord: "biggest", significado: "El más grande"),
        CatPregInd(keyWord: "business", significado: "Negocio"),
        CatPregInd(keyWord: "I'd be mad", significado: "Yo estaría muy enojado"),
        CatPregInd(keyWord: "whoever", significado: "Quien"),
        CatPregInd(keyWord: "he beats me", significado: "Él me gana / Él me vence"),
        CatPregInd(keyWord: "rich", significado: "Rico"),
        CatPregInd(keyWord: "a lot", significado: "Mucho"),
        CatPregInd(keyWord: "like", significado: "Como (usado para comparación). También puede significar gustar"),
        CatPregInd(keyWord: "there were", significado: "Hay (En plural)"),
        CatPregInd(keyWord: "richer", significado: "Más rico"),
        CatPregInd(keyWord: "never", significado: "Nunca"),
        CatPregInd(keyWord: "measure", significado: "Medida"),
        CatPregInd(keyWord: "constitutes", significado: "Constituye"),
        CatPregInd(keyWord: "success", significado: "Éxito"),
        CatPregInd(keyWord: "entertainment", significado: "Entretenimiento"),
        CatPregInd(keyWord: "all through", significado: "A través de"),
        CatPregInd(keyWord: "career", significado: "Carrera (universitaria)"),
        CatPregInd(keyWord: "customers", significado: "Clientes"),
        CatPregInd(keyWord: "someday", significado: "Algún día"),
        CatPregInd(keyWord: "you'll be", significado: "Tú serás/estarás"),
        CatPregInd(keyWord: "successful", significado: "Exitoso/a"),
        CatPregInd(keyWord: "top guy", significado: "Hombre/chico superior"),
        CatPregInd(keyWord: "someone", significado: "Alguien"),
        CatPregInd(keyWord: "they're", significado: "Ellos son/estarán"),
        CatPregInd(keyWord: "disease", significado: "Enfermedad"),
        CatPregInd(keyWord: "save", significado: "Salvar/Guardar"),
        CatPregInd(keyWord: "just like", significado: "Igual como, igual que"),
        CatPregInd(keyWord: "lawyer", significado: "Abogado/a"),
        CatPregInd(keyWord: "crazy", significado: "Loco"),
        CatPregInd(keyWord: "making a living", significado: "Haciendo una vida (Literalmente: Ganarse la vida)"),
        CatPregInd(keyWord: "pursuing", significado: "Persiguiendo (Del verbo perseguir)"),
        CatPregInd(keyWord: "finding meaning", significado: "Encontrando significado"),
        CatPregInd(keyWord: "what", significado: "Qué (Usado como conector)"),
        CatPregInd(keyWord: "first", significado: "Primero"),
        CatPregInd(keyWord: "standup", significado: "Comedia en vivo o monólogo"),
        CatPregInd(keyWord: "nobody", significado: "Nadie"),
        CatPregInd(keyWord: "tuned-out crowds", significado: "Multitudes desconectadas o que no prestan atención"),
        CatPregInd(keyWord: "before", significado: "Antes"),
        CatPregInd(keyWord: "jokes", significado: "Chistes"),
        CatPregInd(keyWord: "laughing", significado: "Riendo (Del verbo reír)"),
        CatPregInd(keyWord: "about", significado: "Acerca de / Sobre de"),
        CatPregInd(keyWord: "sold out houses", significado: "Lugares agotados (En el contexto de lugares donde se hacen presentaciones de comedia)"),
        CatPregInd(keyWord: "I wasn't playing", significado: "Yo no estaba actuando (Play también se usa como actuar)"),
        CatPregInd(keyWord: "big payday", significado: "Grandes días de pago (Ingresos considerables)"),
        CatPregInd(keyWord: "able", significado: "Capaz"),
        CatPregInd(keyWord: "their", significado: "Su (Posesivo para ellos/ellas)"),
        CatPregInd(keyWord: "dark", significado: "Oscuro"),
        CatPregInd(keyWord: "struggle", significado: "Lucha"),
        CatPregInd(keyWord: "envy", significado: "Envidia"),
        CatPregInd(keyWord: "went along with it", significado: "Que acompañaron o siguieron con ello"),
        CatPregInd(keyWord: "factor", significado: "Factor"),
        CatPregInd(keyWord: "sort of", significado: "Algo así como / Tipo de"),
        CatPregInd(keyWord: "mix-and-match game", significado: "Juego de mezclar y combinar (usado para describir una situación donde se combinan diferentes elementos)"),
        CatPregInd(keyWord: "world", significado: "Mundo"),
        CatPregInd(keyWord: "here's one of life's little truths", significado: "Aquí una de las pequeñas verdades de la vida"),
        CatPregInd(keyWord: "package deal", significado: "Paquete completo (En el sentido de un acuerdo o situación que se acepta en su totalidad)"),
        CatPregInd(keyWord: "view", significado: "Ver"),
        CatPregInd(keyWord: "someone else's life", significado: "La vida de alguien más"),
        CatPregInd(keyWord: "cheating", significado: "Haciendo trampa"),
        CatPregInd(keyWord: "pretty cool", significado: "Muy genial"),
        CatPregInd(keyWord: "hang with him", significado: "Pasar tiempo con él"),
        CatPregInd(keyWord: "pain", significado: "Dolor"),
        CatPregInd(keyWord: "anybody", significado: "Cualquiera"),
        CatPregInd(keyWord: "really", significado: "Realmente"),
        CatPregInd(keyWord: "awful stuff", significado: "Cosas terribles"),
        CatPregInd(keyWord: "deal with", significado: "Lidiar con"),
        CatPregInd(keyWord: "battle", significado: "Batallar con"),
        CatPregInd(keyWord: "dead rock stars", significado: "Estrellas de rock fallecidas"),
        CatPregInd(keyWord: "hard", significado: "Duro"),
        CatPregInd(keyWord: "face it", significado: "Enfréntalo"),
        CatPregInd(keyWord: "sellout", significado: "Agotar (en el sentido de vender todas las entradas o productos)"),
        CatPregInd(keyWord: "biggest venues", significado: "Los lugares más grandes"),
        CatPregInd(keyWord: "primetime TV show", significado: "Programa de televisión en horario estelar"),
        CatPregInd(keyWord: "viewers", significado: "Espectadores"),
        CatPregInd(keyWord: "half", significado: "Mitad"),
        CatPregInd(keyWord: "myself", significado: "Mí mismo/a"),
        CatPregInd(keyWord: "I'm doing okay", significado: "Me está yendo bien"),
        CatPregInd(keyWord: "try it", significado: "Inténtalo"),
    ]),
    CatPregSig(pragger: "Fix Yourself", praggerWord: [
        CatPregInd(keyWord: "Blaming others", significado: "Culpando a otros"),
        CatPregInd(keyWord: "waste of time", significado: "Pérdida de tiempo"),
        CatPregInd(keyWord: "that", significado: "Eso"),
        CatPregInd(keyWord: "learn", significado: "Aprender"),
        CatPregInd(keyWord: "anything", significado: "Cualquier cosa"),
        CatPregInd(keyWord: "grow", significado: "Crecer"),
        CatPregInd(keyWord: "mature", significado: "Madurar"),
        CatPregInd(keyWord: "thus", significado: "Por lo tanto"),
        CatPregInd(keyWord: "life", significado: "Vida"),
        CatPregInd(keyWord: "better", significado: "Mejor"),
        CatPregInd(keyWord: "as", significado: "Como"),
        CatPregInd(keyWord: "there are", significado: "Hay"),
        CatPregInd(keyWord: "attitudes", significado: "Actitudes"),
        CatPregInd(keyWord: "toward", significado: "Hacia"),
        CatPregInd(keyWord: "sorrows", significado: "Penas"),
        CatPregInd(keyWord: "those", significado: "Aquellos"),
        CatPregInd(keyWord: "first", significado: "Primero"),
        CatPregInd(keyWord: "world", significado: "Mundo"),
        CatPregInd(keyWord: "second", significado: "Segundo"),
        CatPregInd(keyWord: "differently", significado: "De manera diferente"),
        CatPregInd(keyWord: "couple", significado: "Pareja"),
        CatPregInd(keyWord: "on the brink", significado: "Al borde"),
        CatPregInd(keyWord: "they're", significado: "Ellos son/están"),
        CatPregInd(keyWord: "hurt", significado: "Heridos"),
        CatPregInd(keyWord: "angry", significado: "Enojados"),
        CatPregInd(keyWord: "unhappy", significado: "Infeliz"),
        CatPregInd(keyWord: "bitter", significado: "Amargado"),
        CatPregInd(keyWord: "husband", significado: "Esposo"),
        CatPregInd(keyWord: "recalls", significado: "Recuerda"),
        CatPregInd(keyWord: "things", significado: "Cosas"),
        CatPregInd(keyWord: "wife", significado: "Esposa"),
        CatPregInd(keyWord: "reasons", significado: "Razones"),
        CatPregInd(keyWord: "no longer live with her", significado: "Ya no puede vivir con ella"),
        CatPregInd(keyWord: "harried", significado: "Acosado"),
        CatPregInd(keyWord: "disillusioned", significado: "Desilusionado"),
        CatPregInd(keyWord: "all", significado: "Todos"),
        CatPregInd(keyWord: "ways", significado: "Maneras"),
        CatPregInd(keyWord: "let her down", significado: "La decepcionó"),
        CatPregInd(keyWord: "each", significado: "Cada uno"),
        CatPregInd(keyWord: "changes", significado: "Cambios"),
        CatPregInd(keyWord: "prospects", significado: "Perspectivas"),
        CatPregInd(keyWord: "grim", significado: "Sombrío"),
        CatPregInd(keyWord: "aren't", significado: "No son"),
        CatPregInd(keyWord: "you're", significado: "Tú eres"),
        CatPregInd(keyWord: "can't", significado: "No puedes"),
        CatPregInd(keyWord: "yourself", significado: "Tú mismo"),
        CatPregInd(keyWord: "courage", significado: "Coraje"),
        CatPregInd(keyWord: "easier", significado: "Más fácil"),
        CatPregInd(keyWord: "much more", significado: "Mucho más"),
        CatPregInd(keyWord: "gratifying", significado: "Gratificante"),
        CatPregInd(keyWord: "basest", significado: "Más bajos"),
        CatPregInd(keyWord: "desires", significado: "Deseos"),
        CatPregInd(keyWord: "someone else", significado: "Alguien más"),
        CatPregInd(keyWord: "youthful", significado: "Juvenil"),
        CatPregInd(keyWord: "making a statement", significado: "Haciendo una declaración"),
        CatPregInd(keyWord: "against", significado: "En contra"),
        CatPregInd(keyWord: "smashing", significado: "Aplastando"),
        CatPregInd(keyWord: "storefront", significado: "Fachada"),
        CatPregInd(keyWord: "business", significado: "Negocio"),
        CatPregInd(keyWord: "other than", significado: "Aparte de"),
        CatPregInd(keyWord: "bring", significado: "Traer"),
        CatPregInd(keyWord: "harm", significado: "Daño"),
        CatPregInd(keyWord: "who have nothing to do", significado: "Quienes no tienen nada que ver"),
        CatPregInd(keyWord: "guilt", significado: "Culpa"),
        CatPregInd(keyWord: "doubt", significado: "Duda"),
        CatPregInd(keyWord: "shame", significado: "Vergüenza"),
        CatPregInd(keyWord: "inevitably", significado: "Inevitablemente"),
        CatPregInd(keyWord: "suppressed", significado: "Suprimido"),
        CatPregInd(keyWord: "beliefs", significado: "Creencias"),
        CatPregInd(keyWord: "unchanged", significado: "Sin cambiar"),
        CatPregInd(keyWord: "foster", significado: "Fomentar"),
        CatPregInd(keyWord: "anger", significado: "Enojo"),
        CatPregInd(keyWord: "alienation", significado: "Alienación"),
        CatPregInd(keyWord: "play", significado: "Obra"),
        CatPregInd(keyWord: "characters", significado: "Personajes"),
        CatPregInd(keyWord: "very hard time", significado: "Tiempo muy difícil"),
        CatPregInd(keyWord: "profound", significado: "Profundo"),
        CatPregInd(keyWord: "unhappiness", significado: "Infelicidad"),
        CatPregInd(keyWord: "suffering", significado: "Sufrimiento"),
        CatPregInd(keyWord: "own", significado: "Propia"),
        CatPregInd(keyWord: "fault", significado: "Culpa"),
        CatPregInd(keyWord: "taken aback", significado: "Tomado por sorpresa"),
        CatPregInd(keyWord: "if", significado: "Si"),
        CatPregInd(keyWord: "her fault", significado: "Su culpa"),
        CatPregInd(keyWord: "she's", significado: "Ella es"),
        CatPregInd(keyWord: "doomed", significado: "Condenada"),
        CatPregInd(keyWord: "herself", significado: "Ella misma"),
        CatPregInd(keyWord: "seem", significado: "Parecen"),
        CatPregInd(keyWord: "consigned", significado: "Consagrado"),
        CatPregInd(keyWord: "fate", significado: "Destino"),
        CatPregInd(keyWord: "most of us", significado: "La mayoría de nosotros"),
        CatPregInd(keyWord: "chance", significado: "Oportunidad"),
        CatPregInd(keyWord: "questions", significado: "Preguntas"),
        CatPregInd(keyWord: "full", significado: "Completo"),
        CatPregInd(keyWord: "advantage", significado: "Ventaja"),
        CatPregInd(keyWord: "answer", significado: "Respuesta"),
        CatPregInd(keyWord: "try", significado: "Intentar"),
        CatPregInd(keyWord: "stop doing", significado: "Deja de hacer"),
        CatPregInd(keyWord: "wrong", significado: "Equivocado"),
        CatPregInd(keyWord: "waste", significado: "Desperdiciar"),
        CatPregInd(keyWord: "inopportune questioning", significado: "Cuestionamiento inoportuno"),
        CatPregInd(keyWord: "without", significado: "Sin"),
        CatPregInd(keyWord: "enlightening", significado: "Iluminando"),
        CatPregInd(keyWord: "deflect", significado: "Desviar"),
        CatPregInd(keyWord: "something", significado: "Algo"),
        CatPregInd(keyWord:"right", significado: "Correcto"),
        CatPregInd(keyWord: "paying attention", significado: "Prestar atención"),
        CatPregInd(keyWord: "show up late", significado: "Llegar tarde"),
        CatPregInd(keyWord: "spend", significado: "Gastar"),
        CatPregInd(keyWord: "it's not a matter", significado: "No es un asunto"),
        CatPregInd(keyWord: "some", significado: "Algunos"),
        CatPregInd(keyWord: "imposed", significado: "Impuesto"),
        CatPregInd(keyWord: "what could you put right", significado: "¿Qué podrías corregir?"),
        CatPregInd(keyWord: "right now", significado: "Ahora mismo"),
        CatPregInd(keyWord: "get to work on time", significado: "Llegar a tiempo al trabajo"),
        CatPregInd(keyWord: "diligently", significado: "Diligentemente"),
        CatPregInd(keyWord: "utilize", significado: "Utilizar"),
        CatPregInd(keyWord: "peaceful", significado: "Pacífico"),
        CatPregInd(keyWord: "productive", significado: "Productivo"),
        CatPregInd(keyWord: "desirable", significado: "Deseable"),
        CatPregInd(keyWord: "weeks", significado: "Semanas"),
        CatPregInd(keyWord: "months", significado: "Meses"),
        CatPregInd(keyWord: "attentive", significado: "Atento"),
        CatPregInd(keyWord: "effort", significado: "Esfuerzo"),
        CatPregInd(keyWord: "your mind will clear", significado: "Tu mente se aclarará"),
        CatPregInd(keyWord: "less", significado: "Menos"),
        CatPregInd(keyWord: "path", significado: "Camino"),
        CatPregInd(keyWord: "in front", significado: "En frente"),
        CatPregInd(keyWord: "will shine", significado: "Brillará"),
        CatPregInd(keyWord: "brightly", significado: "Brillantemente"),
        CatPregInd(keyWord: "getting your own way", significado: "Salirse con la suya"),
        CatPregInd(keyWord: "instead", significado: "En lugar de"),
        CatPregInd(keyWord: "trouble to yourself", significado: "Problemas para ti mismo"),
        CatPregInd(keyWord: "society", significado: "Sociedad"),
        CatPregInd(keyWord: "suffer", significado: "Sufrir"),
        CatPregInd(keyWord: "that's the price of being alive", significado: "Ese es el precio de estar vivo"),
        CatPregInd(keyWord: "maybe", significado: "Quizás"),
        CatPregInd(keyWord: "enough", significado: "Suficiente"),
        CatPregInd(keyWord: "burden", significado: "Carga"),
        CatPregInd(keyWord: "in that fashion", significado: "De esa manera"),
        CatPregInd(keyWord: "nobly", significado: "Noblemente"),
        CatPregInd(keyWord: "purpose", significado: "Propósito"),
        CatPregInd(keyWord: "proper way", significado: "Forma apropiada"),
        CatPregInd(keyWord: "fix", significado: "Arreglar"),
        CatPregInd(keyWord: "in that manner", significado: "De esa manera"),
        CatPregInd(keyWord: "at least", significado: "Al menos"),
        CatPregInd(keyWord: "place", significado: "Lugar"),
    ]),
    CatPregSig(pragger: "Are Men and Women Different?", praggerWord: [
        CatPregInd(keyWord: "delusion", significado: "creencia que contradice la realidad"),
        CatPregInd(keyWord: "discerning", significado: "Perspicaz, exigente, selectivo"),
        CatPregInd(keyWord: "supervised curfews", significado: "toque de queda supervisado"),
        CatPregInd(keyWord: "intimate", significado: "íntimo/a"),
        CatPregInd(keyWord: "violated", significado: "violado/a (en el sentido de haber sido objeto de una acción no deseada o no consentida)"),
        CatPregInd(keyWord: "vulnerable", significado: "vulnerable, frágil"),
        CatPregInd(keyWord: "confined", significado: "limitado/a, restringido/a"),
        CatPregInd(keyWord: "satisfying", significado: "satisfactorio/a, gratificante"),
        CatPregInd(keyWord: "emotionally", significado: "emocionalmente"),
        CatPregInd(keyWord: "psychologically", significado: "psicológicamente"),
        CatPregInd(keyWord: "physically", significado: "físicamente"),
        CatPregInd(keyWord: "spiritually", significado: "espiritualmente"),
        CatPregInd(keyWord: "commonsense", significado: "sentido común"),
        CatPregInd(keyWord: "agenda", significado: "programa, plan, intención"),
        CatPregInd(keyWord: "sociology", significado: "sociología"),
        CatPregInd(keyWord: "anthropology", significado: "antropología"),
        CatPregInd(keyWord: "gender studies", significado: "estudios de género"),
        CatPregInd(keyWord: "spectrum", significado: "espectro"),
        CatPregInd(keyWord: "internal feelings", significado: "sentimientos internos"),
        CatPregInd(keyWord: "toy trucks", significado: "camiones de juguete"),
        CatPregInd(keyWord: "pink and blue stereotype", significado: "estereotipo de rosa y azul"),
        CatPregInd(keyWord: "reality", significado: "realidad"),
        CatPregInd(keyWord: "college entertainment", significado: "entretenimiento universitario"),
        CatPregInd(keyWord: "making stuff up", significado: "inventando cosas"),
        CatPregInd(keyWord: "pushing an agenda", significado: "promoviendo una agenda"),
        CatPregInd(keyWord: "traditionally", significado: "tradicionalmente"),
        CatPregInd(keyWord: "marriage", significado: "matrimonio"),
        CatPregInd(keyWord: "experience", significado: "experiencia"),
        CatPregInd(keyWord: "research", significado: "investigación"),
        CatPregInd(keyWord: "associate professor", significado: "profesor asociado"),
        CatPregInd(keyWord: "theology", significado: "teología"),
        CatPregInd(keyWord: "philosophy", significado: "filosofía"),
        CatPregInd(keyWord: "beach ball", significado: "pelota de playa"),
        CatPregInd(keyWord: "distinct nature", significado: "naturaleza distinta"),
        CatPregInd(keyWord: "body parts", significado: "partes del cuerpo"),
        CatPregInd(keyWord: "biology", significado: "biología"),
        CatPregInd(keyWord: "hormones", significado: "hormonas"),
        CatPregInd(keyWord: "express emotions", significado: "expresar emociones"),
        CatPregInd(keyWord: "needs", significado: "necesidades"),
        CatPregInd(keyWord: "desires", significado: "deseos"),
        CatPregInd(keyWord: "uninvited touch", significado: "toque no deseado"),
        CatPregInd(keyWord: "leg", significado: "pierna"),
        CatPregInd(keyWord: "Hollywood Reporter", significado: "Reportero de Hollywood"),
        CatPregInd(keyWord: "Co-Star", significado: "coprotagonista"),
        CatPregInd(keyWord: "acting out", significado: "representando"),
        CatPregInd(keyWord: "commonsense", significado: "sentido común"),
        CatPregInd(keyWord: "remember the beach ball", significado: "recuerda la pelota de playa"),
    ]),
    CatPregSig(pragger: "Don't Waste Your Time", praggerWord: [
        CatPregInd(keyWord: "date", significado: "Tener citas."),
        CatPregInd(keyWord: "purpose", significado: "Proposito."),
        CatPregInd(keyWord: "get married", significado: "Casarse."),
        CatPregInd(keyWord: "too fast", significado: "Muy rápido."),
        CatPregInd(keyWord: "uncomfortable", significado: "Incomodo."),
        CatPregInd(keyWord: "hook up", significado: "Iniciar una relación romántica o sexual con alguien."),
        CatPregInd(keyWord: "casual flings", significado: "Aventuras casuales."),
        CatPregInd(keyWord: "have fun", significado: "Divertirse."),
        CatPregInd(keyWord: "don't get me wrong", significado: "No me malinterpretes."),
        CatPregInd(keyWord: "deeper", significado: "Mas profundo."),

        CatPregInd(keyWord: "happiness", significado: "Felicidad."),
        CatPregInd(keyWord: "certainly", significado: "Ciertamente."),
        CatPregInd(keyWord: "marriage", significado: "Matrimonio."),
        CatPregInd(keyWord: "topic", significado: "Tema."),
        CatPregInd(keyWord: "at least", significado: "Al menos, por lo menos."),
        CatPregInd(keyWord: "else", significado: "Más."),
        CatPregInd(keyWord: "let's face it", significado: "Seamos realistas / Encaremoslo."),
        CatPregInd(keyWord: "as far as it goes", significado: "Hasta donde llegue."),
        CatPregInd(keyWord: "frankly", significado: "Francamente."),
        CatPregInd(keyWord: "smart", significado: "Inteligente."),

        CatPregInd(keyWord: "play out", significado: "Reproducir."),
        CatPregInd(keyWord: "often", significado: "Seguido."),
        CatPregInd(keyWord: "relationship", significado: "Relación."),
        CatPregInd(keyWord: "commitment", significado: "Compromiso."),
        CatPregInd(keyWord: "in fact", significado: "De hecho."),
        CatPregInd(keyWord: "arise", significado: "Surgir."),
        CatPregInd(keyWord: "whim", significado: "Capricho."),
        CatPregInd(keyWord: "develop", significado: "Desarrollar."),
        CatPregInd(keyWord: "try out", significado: "Prueba."),
        CatPregInd(keyWord: "less", significado: "Menos."),

        CatPregInd(keyWord: "lack", significado: "Falta de."),
        CatPregInd(keyWord: "afford", significado: "Poder pagar."),
        CatPregInd(keyWord: "enterprise", significado: "Empresa."),
        CatPregInd(keyWord: "entirely", significado: "En su totalidad / Totalmente."),
        CatPregInd(keyWord: "build", significado: "Construir."),
        CatPregInd(keyWord: "shared", significado: "Compartido."),
        CatPregInd(keyWord: "beliefs", significado: "Creencias."),
        CatPregInd(keyWord: "partner", significado: "Pareja / Compañero."),
        CatPregInd(keyWord: "profound", significado: "Profundo."),
        CatPregInd(keyWord: "understandings", significado: "Entendimientos."),

        CatPregInd(keyWord: "outcome", significado: "Resultados."),
        CatPregInd(keyWord: "fool", significado: "Engañar."),
        CatPregInd(keyWord: "thrilled", significado: "Emocionarse."),
        CatPregInd(keyWord: "kombucha", significado: "Bebida alcohólica."),
        CatPregInd(keyWord: "get down to", significado: "Llegar a."),
        CatPregInd(keyWord: "over the long run", significado: "A largo plazo."),
        CatPregInd(keyWord: "stuff", significado: "Cosas."),
        CatPregInd(keyWord: "faith", significado: "Fe."),
        CatPregInd(keyWord: "sooner", significado: "Más pronto."),
        CatPregInd(keyWord: "doubt", significado: "Duda."),

        CatPregInd(keyWord: "stuck", significado: "Atrapado."),
        CatPregInd(keyWord: "dead-end relationships", significado: "Relaciones sin salida."),
        CatPregInd(keyWord: "articulate", significado: "Articular / Expresar."),
        CatPregInd(keyWord: "crave", significado: "Anhelar."),
        CatPregInd(keyWord: "healthier", significado: "Más sano."),
        CatPregInd(keyWord: "wealthier", significado: "Más rico."),
        CatPregInd(keyWord: "towards", significado: "Hacia."),
        CatPregInd(keyWord: "waste of time", significado: "Pérdida de tiempo."),
        CatPregInd(keyWord: "between", significado: "Entre."),
        CatPregInd(keyWord: "take the plunge", significado: "Que ha dado el paso / Que se ha casado."),

        CatPregInd(keyWord: "country", significado: "País."),
        CatPregInd(keyWord: "citizen", significado: "Ciudadano."),
        CatPregInd(keyWord: "the latter", significado: "El último."),
        CatPregInd(keyWord: "expectations", significado: "Expectativas."),
        CatPregInd(keyWord: "mean", significado: "Significar."),
        CatPregInd(keyWord: "reluctant", significado: "Reacios."),
        CatPregInd(keyWord: "sign", significado: "Firmar."),
        CatPregInd(keyWord: "rule of thumb", significado: "Una regla no escrita que todos seguimos."),
        CatPregInd(keyWord: "the kind of", significado: "El tipo de."),
        CatPregInd(keyWord: "career", significado: "Carrera."),

        CatPregInd(keyWord: "get it right", significado: "Hacerlo bien.")

    ]),
    CatPregSig(pragger: "How to Make Our Cities Safer", praggerWord: [
        CatPregInd(keyWord: "homicides", significado: "asesinatos"),
        CatPregInd(keyWord: "constitutional", significado: "constitucional"),
        CatPregInd(keyWord: "cohort", significado: "cohorte"),
        CatPregInd(keyWord: "high frequency offenders", significado: "delincuentes de alta frecuencia"),
        CatPregInd(keyWord: "felons", significado: "delincuentes"),
        CatPregInd(keyWord: "vertical prosecution", significado: "prosecución vertical"),
        CatPregInd(keyWord: "legal errors", significado: "errores legales"),
        CatPregInd(keyWord: "hostile", significado: "hostil"),
        CatPregInd(keyWord: "progressive politicians", significado: "políticos progresistas"),
        CatPregInd(keyWord: "incarceration", significado: "encarcelamiento"),
        CatPregInd(keyWord: "age crime curve", significado: "curva de edad-crimen"),
        CatPregInd(keyWord: "circulation", significado: "circulación"),
        CatPregInd(keyWord: "rocket science", significado: "ciencia espacial"),
        CatPregInd(keyWord: "street tested", significado: "probado en la calle"),
        CatPregInd(keyWord: "crime hotspots", significado: "zonas calientes del crimen"),
        CatPregInd(keyWord: "potential killers", significado: "asesinos potenciales"),
        CatPregInd(keyWord: "potential victims", significado: "víctimas potenciales"),
        CatPregInd(keyWord: "interrogates", significado: "interroga"),
        CatPregInd(keyWord: "nonfatal", significado: "no mortal"),
        CatPregInd(keyWord: "organized retail theft rings", significado: "anillos de robo organizado en el comercio minorista"),
        CatPregInd(keyWord: "law enforcement officials", significado: "funcionarios encargados de hacer cumplir la ley"),
        CatPregInd(keyWord: "United States Sentencing Commission", significado: "Comisión de Sentencias de los Estados Unidos"),
        CatPregInd(keyWord: "shattering records", significado: "rompiendo récords"),
        CatPregInd(keyWord: "resource and time intensive", significado: "intensivo en recursos y tiempo"),
        CatPregInd(keyWord: "trial stage", significado: "etapa del juicio"),
        CatPregInd(keyWord: "blaming each other", significado: "culparse mutuamente"),
        CatPregInd(keyWord: "hostile towards one another", significado: "hostiles entre sí"),
        CatPregInd(keyWord: "sentencing guidelines", significado: "directrices de sentencia"),
        CatPregInd(keyWord: "violent crime rates", significado: "tasas de delitos violentos")

    ]),
    CatPregSig(pragger: "How to End Systemic Racism", praggerWord: [
        CatPregInd(keyWord: "racism", significado: "Racismo."),
        CatPregInd(keyWord: "deserve", significado: "Merecer."),
        CatPregInd(keyWord: "exposed", significado: "Expuesto / expuesta."),
        CatPregInd(keyWord: "sooner", significado: "Más pronto."),
        CatPregInd(keyWord: "just", significado: "Justo."),
        CatPregInd(keyWord: "truth", significado: "Verdad."),
        CatPregInd(keyWord: "college", significado: "Universidad."),
        CatPregInd(keyWord: "encouraged", significado: "Motivado."),
        CatPregInd(keyWord: "many", significado: "Algunos."),
        CatPregInd(keyWord: "government", significado: "Gobierno."),

        CatPregInd(keyWord: "harder", significado: "Más difícil."),
        CatPregInd(keyWord: "businesses", significado: "Empresas."),
        CatPregInd(keyWord: "museum", significado: "Museo."),
        CatPregInd(keyWord: "hard work", significado: "Trabajo duro."),
        CatPregInd(keyWord: "major", significado: "Principal."),
        CatPregInd(keyWord: "parties", significado: "Partidos."),
        CatPregInd(keyWord: "obtaining", significado: "Obtención."),
        CatPregInd(keyWord: "drivers license", significado: "Licencia de conducir."),
        CatPregInd(keyWord: "construct", significado: "Constructo."),
        CatPregInd(keyWord: "guaranteeing", significado: "Garantizando."),

        CatPregInd(keyWord: "essential skill", significado: "Habilidad esencial."),
        CatPregInd(keyWord: "failure", significado: "Fracaso."),
        CatPregInd(keyWord: "allowed", significado: "Permitido."),
        CatPregInd(keyWord: "promoted", significado: "Promovido."),
        CatPregInd(keyWord: "the next grade", significado: "El siguiente grado."),
        CatPregInd(keyWord: "council", significado: "Consulado."),
        CatPregInd(keyWord: "demonize", significado: "Demonizar."),
        CatPregInd(keyWord: "budget", significado: "Presupuesto."),
        CatPregInd(keyWord: "murder", significado: "Asesinato."),
        CatPregInd(keyWord: "skyrocket", significado: "Se disparan / sube."),

        CatPregInd(keyWord: "prosecutors refuse", significado: "Los fiscales se rehúsan."),
        CatPregInd(keyWord: "prosecute", significado: "Enjuiciar."),
        CatPregInd(keyWord: "hardened criminals", significado: "Criminales endurecidos."),
        CatPregInd(keyWord: "instead", significado: "En cambio."),
        CatPregInd(keyWord: "prey", significado: "Aprovecharse de."),
        CatPregInd(keyWord: "law abiding", significado: "Seguidores de la ley."),
        CatPregInd(keyWord: "hardworking citizens", significado: "Ciudadanos trabajadores."),
        CatPregInd(keyWord: "again", significado: "De nuevo."),
        CatPregInd(keyWord: "few", significado: "Pocos."),
        CatPregInd(keyWord: "commonplace", significado: "Común."),

        CatPregInd(keyWord: "oppressive", significado: "Opresivo."),
        CatPregInd(keyWord: "patronizing", significado: "Patronizante."),
        CatPregInd(keyWord: "environment", significado: "Ambiente."),
        CatPregInd(keyWord: "prejudices", significado: "Prejuicios."),
        CatPregInd(keyWord: "prejudgments", significado: "Prejuicios."),
        CatPregInd(keyWord: "goal", significado: "Meta."),
        CatPregInd(keyWord: "claiming", significado: "Reclamando."),
        CatPregInd(keyWord: "instituting", significado: "Instituyendo."),
        CatPregInd(keyWord: "policies", significado: "Políticas."),
        CatPregInd(keyWord: "holding back", significado: "Contener / retener."),

        CatPregInd(keyWord: "systemic racism", significado: "Racismo sistemático."),
        CatPregInd(keyWord: "moving forward", significado: "Ir hacia adelante."),
        CatPregInd(keyWord: "pluralistic", significado: "Pluralista."),
        CatPregInd(keyWord: "equal opportunity nation", significado: "Nación con igualdad de oportunidades."),
        CatPregInd(keyWord: "backward", significado: "Hacia atrás."),
        CatPregInd(keyWord: "here's the kicker", significado: "He aquí la parte irónica."),
        CatPregInd(keyWord: "nasty", significado: "Asqueroso."),
        CatPregInd(keyWord: "bigoted", significado: "Intolerante."),
        CatPregInd(keyWord: "misogynistic", significado: "Misóginos."),
        CatPregInd(keyWord: "authoritarian nationalists", significado: "Nacionalistas autoritarios."),

        CatPregInd(keyWord: "imposing these crushing rules", significado: "Imponiendo estas reglas aplastantes."),
        CatPregInd(keyWord: "the woke left", significado: "El despertar se fue."),
        CatPregInd(keyWord: "side", significado: "Lado."),
        CatPregInd(keyWord: "revered", significado: "Venerado."),
        CatPregInd(keyWord: "up until", significado: "Hasta."),
        CatPregInd(keyWord: "committed", significado: "Comprometido."),
        CatPregInd(keyWord: "proof", significado: "Prueba."),
        CatPregInd(keyWord: "dozens", significado: "Docenas."),
        CatPregInd(keyWord: "over the last few years", significado: "En los últimos años."),
        CatPregInd(keyWord: "nooses", significado: "Sogas."),

        CatPregInd(keyWord: "n-word", significado: "Palabra para insultar a la gente de color."),
        CatPregInd(keyWord: "taunts", significado: "Burlar."),
        CatPregInd(keyWord: "faked", significado: "Falsificado."),
        CatPregInd(keyWord: "supply", significado: "Suministro."),
        CatPregInd(keyWord: "against", significado: "En contra de."),
        CatPregInd(keyWord: "rampant", significado: "Desenfrenada."),
        CatPregInd(keyWord: "race obsessed", significado: "Obsesionado con la raza."),
        CatPregInd(keyWord: "unconscious", significado: "Inconsciente."),
        CatPregInd(keyWord: "small minded", significado: "De mente pequeña."),
        CatPregInd(keyWord: "attorney", significado: "Abogado."),

        CatPregInd(keyWord: "had nothing to do", significado: "No tiene nada que ver."),
        CatPregInd(keyWord: "available", significado: "Disponible."),
        CatPregInd(keyWord: "understand", significado: "Entender."),
        CatPregInd(keyWord: "once", significado: "Una vez."),
        CatPregInd(keyWord: "condescending", significado: "Condescendiente."),
        CatPregInd(keyWord: "outright", significado: "Total."),
        CatPregInd(keyWord: "expect", significado: "Esperar."),
        CatPregInd(keyWord: "purely", significado: "Puramente."),
        CatPregInd(keyWord: "based on", significado: "Basado en."),
        CatPregInd(keyWord: "merits", significado: "Méritos."),

        CatPregInd(keyWord: "equitable", significado: "Equitativo."),
        CatPregInd(keyWord: "hundred", significado: "Cientos."),
        CatPregInd(keyWord: "realize", significado: "Darse cuenta.")

    ]),
    CatPregSig(pragger: "Should Government Bail Out Big Banks?", praggerWord: [
        CatPregInd(keyWord: "financial sector", significado: "sector financiero"),
        CatPregInd(keyWord: "government rescue", significado: "rescate gubernamental"),
        CatPregInd(keyWord: "conventional wisdom", significado: "sabiduría convencional"),
        CatPregInd(keyWord: "short term panic", significado: "pánico a corto plazo"),
        CatPregInd(keyWord: "credit market freeze", significado: "congelación del mercado de crédito"),
        CatPregInd(keyWord: "troubled asset relief program", significado: "Programa de Alivio de Activos Problemáticos"),
        CatPregInd(keyWord: "post depression bailout", significado: "rescate post-Depresión"),
        CatPregInd(keyWord: "commercial bank", significado: "banco comercial"),
        CatPregInd(keyWord: "global bondholders", significado: "titulares globales de bonos"),
        CatPregInd(keyWord: "short term credit markets", significado: "mercados de crédito a corto plazo"),

        CatPregInd(keyWord: "bondholders", significado: "titulares de bonos"),
        CatPregInd(keyWord: "hedge fund", significado: "fondo de cobertura"),
        CatPregInd(keyWord: "government sponsored mortgage companies", significado: "empresas hipotecarias patrocinadas por el gobierno"),
        CatPregInd(keyWord: "financial storm", significado: "tormenta financiera"),
        CatPregInd(keyWord: "global meltdown", significado: "colapso global"),
        CatPregInd(keyWord: "government control", significado: "control gubernamental"),
        CatPregInd(keyWord: "financial institutions", significado: "instituciones financieras"),
        CatPregInd(keyWord: "credit underpins", significado: "el crédito respalda"),
        CatPregInd(keyWord: "stock market crash", significado: "colapso del mercado de valores"),
        CatPregInd(keyWord: "federal reserve", significado: "Reserva Federal"),

        CatPregInd(keyWord: "risk models", significado: "modelos de riesgo"),
        CatPregInd(keyWord: "meltdown", significado: "colapso total"),
        CatPregInd(keyWord: "deregulation", significado: "desregulación"),
        CatPregInd(keyWord: "unmoored", significado: "sin anclaje"),
        CatPregInd(keyWord: "dependent", significado: "dependiente"),
        CatPregInd(keyWord: "enabling parent", significado: "padre permisivo"),
        CatPregInd(keyWord: "belly up", significado: "en bancarrota"),
        CatPregInd(keyWord: "reckless", significado: "imprudente"),
        CatPregInd(keyWord: "teetered", significado: "tambaleado"),
        CatPregInd(keyWord: "whack", significado: "desorden"),

        CatPregInd(keyWord: "lobbyists", significado: "grupos de presión"),
        CatPregInd(keyWord: "policing", significado: "supervisión, regulación"),
        CatPregInd(keyWord: "depressions", significado: "Depresiones económicas, periodos prolongados de declive económico")

    ]),
];
