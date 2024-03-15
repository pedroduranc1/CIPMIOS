import Foundation

struct TextEntry {
    let title: String
    let content: String
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

                "In 1985, the Los Angeles Times asked both the poor and the non-poor whether poor women \"often\" have children to get additional benefits. Most of the non-poor respondents said no. However, 64 percent of poor respondents said yes. Now, who do you think is in a better position to know?

                "Tupac Shakur, the late rapper, once said: \"I know for a fact that had I had a father, I'd have some discipline. I'd have more confidence.\" He admitted he began running with gangs because he wanted the things a father gives to a child, especially to a boy: structure and protection.

                "“Your mother cannot calm you down the way a man can,” Shakur said. “You need a man to teach you how to be a man.

                "In my book \"Dear Father, Dear Son,\" I write about my rough, tough World War II Marine staff sergeant dad. Born in the Jim Crow South of Athens, Ga., he was 14 at the start of the Great Depression. Growing up, I watched my father work two full-time jobs as a janitor. He also cooked for a rich family on the weekends--and somehow managed to go to night school to get his GED. When I was 10, my father opened a small restaurant that he ran until he retired in his mid-80s.

                "He was never angry or bitter--and insisted that today’s America was very different from the world of racial segregation and limited opportunity in which he grew up. \"Hard work wins,” he told me and my brothers. “You get out of life what you put into it. You can’t control the outcome, but you are 100% in control of the effort. And before blaming other people, go to the nearest mirror and ask yourself, ‘what could I have done to change the outcome?’” This advice shaped my life.

                "Fathers matter. Until we have a government policy that makes that its first priority, nothing will change.

                "I’m Larry Elder for Prager University.
"""
            ),
            "IsAmericaRacist": TextEntry(
                title: "Is America Racist",
                content: """
                Is racism still a major problem in America? President Barack Obama certainly thinks so. He said that racism is “in our DNA.” Really? If racism is in our DNA, doesn’t that mean it's immutable, unchangeable?
                ...
                I’m Larry Elder for Prager University.
                """
            ),
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
