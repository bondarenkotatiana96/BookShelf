//
//  BookViewModel.swift
//  BookShelfSwiftUI
//
//  Created by Tatiana Bondarenko on 7/7/22.
//

import Foundation

class BookViewModel: ObservableObject {

  @Published var books: [Book] = []

  init() {
    loadBooks()
  }
    
    func deleteBook(at index: IndexSet) {
        books.remove(atOffsets: index)
        
        // TODO: Save changes
    }

  func loadBooks() {
    if books.isEmpty {
      books = [
        Book(
          title: "The 10X Rule: The Only Difference Between Success and Failure",
          author: "Grant Cardone ", coverArt: "10x", releaseYear: "2011",
          description: """
            Achieve "Massive Action" results and accomplish your business dreams!
            While most people operate with only three degrees of action-no action, retreat, or normal action-if you're after big goals, you don't want to settle for the ordinary. To reach the next level, you must understand the coveted 4th degree of action. This 4th degree, also known as the 10 X Rule, is that level of action that guarantees companies and individuals realize their goals and dreams.

            The 10 X Rule unveils the principle of "Massive Action," allowing you to blast through business clichŽs and risk-aversion while taking concrete steps to reach your dreams. It also demonstrates why people get stuck in the first three actions and how to move into making the 10X Rule a discipline. Find out exactly where to start, what to do, and how to follow up each action you take with more action to achieve Massive Action results.

            Learn the "Estimation of Effort" calculation to ensure you exceed your targets
            Make the Fourth Degree a way of life and defy mediocrity
            Discover the time management myth
            Get the exact reasons why people fail and others succeed
            Know the exact formula to solve problems
            Extreme success is by definition outside the realm of normal action. Instead of behaving like everybody else and settling for average results, take Massive Action with The 10 X Rule, remove luck and chance from your business equation, and lock in massive success.
            """),

        Book(
          title: "The Four Maps of Happy Successful People: A Visual System for Personal Change",
          author: "Robert G. Allen", coverArt: "FourMaps", releaseYear: "2016",
          description: """
            The new bestseller from #1 New York Times bestselling author Robert G. Allen

            What if you could find your purpose and reset your life by simply drawing some pictures?

            "The Four Maps are a beautifully simple daily practice that will elevate your life."
            -John David Mann, coauthor of the international bestseller The Go-Giver

            The Four Maps of Happy Successful People is a new creative, visual approach to personal, spiritual, and financial growth.

            The most important moments of our lives are connected to images. A sunrise. A mountain vista. The face of someone we love. Studies show that the human brain learns 6X faster with pictures over text alone. When it comes to personal growth, a picture is worth a thousand words. Stop struggling and start drawing.

            In four fun, stress-relieving diagrams, The Four Maps of Happy Successful People will help clarify your purpose and give you a map-by-map plan for living the life you deserve.

            "Bob has distilled hundreds of volumes of success literature into a deceptively simple process that combines the wisdom of the ages with the latest neuroscience."-Greg Link, cofounder of the Covey Leadership Center and coauthor of Smart Trust

            Inside you will learn a creative daily practice for overcoming any obstacle. In addition you will learn: How to clarify your purpose in life

            How to build a personalized ritual of success habits

            A revolutionary new system for effective project management

            The five universal challenges, and how to overcome them

            How to embrace gratitude and put it into action

            How to overcome procrastination "This is what personal change looks like-literally! The Four Maps will become a go-to system for kids and parents, bosses and employees, mothers and sisters, brothers and fathers-anyone who is looking to find their center and get better."-Richard Paul Evans, #1 New York Times and USA Today bestselling author
            """),

        Book(
          title:
            "The Miracle Morning: The Not-So-Obvious Secret Guaranteed to Transform Your Life (Before 8AM)",
          author: "Hal Elrod ", coverArt: "MiracleMorning", releaseYear: "2012",
          description: """
            "“Hal Elrod is a genius and his book The Miracle Morning has been magical in my life. What Hal has done is taken the best practices, developed over centuries of human consciousness development, and condensed the 'best of the best' into a daily morning ritual. A ritual that is now part of my day.”
            —Robert Kiyosaki, bestselling author of Rich Dad Poor Dad

            What if you could change any aspect of your life, just by changing the way you start your day? What would you change? The Miracle Morning has already sold over 2,000,000 copies and transformed the lives of millions of people around the world. This book will give you the simplest and most effective step-by-step process to wake up each day with more ENERGY, MOTIVATION, and FOCUS to take your life to the next level. It’s been right here in front of us all along, but this book has finally brought it to life.

            Are you ready? The next chapter of YOUR life—the most extraordinary life you've ever imagined—is about to begin. Read The Miracle Morning and and begin waking up to your full potential.
            """),

        Book(
          title: "The ONE Thing: The Surprisingly Simple Truth About Extraordinary Results",
          author: "Gary Keller ", coverArt: "TheOneThing", releaseYear: "2013",
          description: """
            People are using this simple, powerful concept to focus on what matters most in their personal and work lives. Companies are helping their employees be more productive with study groups, training, and coaching. Sales teams are boosting sales. Churches are conducting classes and recommending for their members.

            By focusing their energy on one thing at a time people are living more rewarding lives by building their careers, strengthening their finances, losing weight and getting in shape, deepening their faith, and nurturing stronger marriages and personal relationships.

            YOU WANT LESS. You want fewer distractions and less on your plate. The daily barrage of e-mails, texts, tweets, messages, and meetings distract you and stress you out. The simultaneous demands of work and family are taking a toll. And what's the cost? Second-rate work, missed deadlines, smaller paychecks, fewer promotions--and lots of stress.

            AND YOU WANT MORE. You want more productivity from your work. More income for a better lifestyle. You want more satisfaction from life, and more time for yourself, your family, and your friends.

            NOW YOU CAN HAVE BOTH ― LESS AND MORE. In The ONE Thing, you'll learn to:

            cut through the clutter
            achieve better results in less time
            build momentum toward your goal
            dial down the stress
            overcome that overwhelmed feeling
            revive your energy
            stay on track
            master what matters to you

            The book has:

            Made on more than 575 appearances on national bestseller lists
            Been #1 Wall Street Journal bestseller, New York Times bestseller, and USA Today bestseller
            Been translated into 40 languages
            Won 12 book awards
            Voted Top 100 Business Book of All Time on Goodreads

            The ONE Thing delivers extraordinary results in every area of your life--work, personal, family, and spiritual. WHAT'S YOUR ONE THING?
            """),

        Book(
          title: "Never Split the Difference: Negotiating As If Your Life Depended On It ",
          author: "Chris Voss", coverArt: "NeverSplit", releaseYear: "2016",
          description: """
            A former international hostage negotiator for the FBI offers a new, field-tested approach to high-stakes negotiations—whether in the boardroom or at home.

            After a stint policing the rough streets of Kansas City, Missouri, Chris Voss joined the FBI, where his career as a hostage negotiator brought him face-to-face with a range of criminals, including bank robbers and terrorists. Reaching the pinnacle of his profession, he became the FBI’s lead international kidnapping negotiator. Never Split the Difference takes you inside the world of high-stakes negotiations and into Voss’s head, revealing the skills that helped him and his colleagues succeed where it mattered most: saving lives. In this practical guide, he shares the nine effective principles—counterintuitive tactics and strategies—you too can use to become more persuasive in both your professional and personal life.

            Life is a series of negotiations you should be prepared for: buying a car, negotiating a salary, buying a home, renegotiating rent, deliberating with your partner. Taking emotional intelligence and intuition to the next level, Never Split the Difference gives you the competitive edge in any discussion.
            """),
        Book(
          title: "Outliers: The Story of Success", author: "Malcolm Gladwell", coverArt: "Outliers",
          releaseYear: "2008",
          description: """
            Learn what sets high achievers apart -- from Bill Gates to the Beatles -- in this #1 bestseller from "a singular talent" (New York Times Book Review).

            In this stunning book, Malcolm Gladwell takes us on an intellectual journey through the world of "outliers"--the best and the brightest, the most famous and the most successful. He asks the question: what makes high-achievers different?

            His answer is that we pay too much attention to what successful people are like, and too little attention to where they are from: that is, their culture, their family, their generation, and the idiosyncratic experiences of their upbringing. Along the way he explains the secrets of software billionaires, what it takes to be a great soccer player, why Asians are good at math, and what made the Beatles the greatest rock band.

            Brilliant and entertaining, Outliers is a landmark work that will simultaneously delight and illuminate.

            """),
        Book(
          title: "The Design of Everyday Things: Revised and Expanded Edition",
          author: "Don Norman", coverArt: "DesignEveryday", releaseYear: "2013",
          description: """
            Design doesn't have to complicated, which is why this guide to human-centered design shows that usability is just as important as aesthetics.
            Even the smartest among us can feel inept as we fail to figure out which light switch or oven burner to turn on, or whether to push, pull, or slide a door.
            The fault, argues this ingenious -- even liberating -- book, lies not in ourselves, but in product design that ignores the needs of users and the principles of cognitive psychology. The problems range from ambiguous and hidden controls to arbitrary relationships between controls and functions, coupled with a lack of feedback or other assistance and unreasonable demands on memorization.
            The Design of Everyday Things shows that good, usable design is possible. The rules are simple: make things visible, exploit natural relationships that couple function and control, and make intelligent use of constraints. The goal: guide the user effortlessly to the right action on the right control at the right time.

            The Design of Everyday Things is a powerful primer on how -- and why -- some products satisfy customers while others only frustrate them.
            """),

        Book(
          title: "Think Like a Programmer: An Introduction to Creative Problem Solving",
          author: "V. Anton Spraul ", coverArt: "ThinkLikeProgrammer", releaseYear: "2012",
          description: """

            May be available at a lower price from other sellers, potentially without free Prime shipping.
            The real challenge of programming isn't learning a language's syntax—it's learning to creatively solve problems so you can build something great. In this one-of-a-kind text, author V. Anton Spraul breaks down the ways that programmers solve problems and teaches you what other introductory books often ignore: how to Think Like a Programmer. Each chapter tackles a single programming concept, like classes, pointers, and recursion, and open-ended exercises throughout challenge you to apply your knowledge.

            You'll also learn how to:
            –Split problems into discrete components to make them easier to solve
            –Make the most of code reuse with functions, classes, and libraries
            –Pick the perfect data structure for a particular job
            –Master more advanced programming tools like recursion and dynamic memory
            –Organize your thoughts and develop strategies to tackle particular types of problems

            Although the book's examples are written in C++, the creative problem-solving concepts they illustrate go beyond any particular language; in fact, they often reach outside the realm of computer science. As the most skillful programmers know, writing great code is a creative art—and the first step in creating your masterpiece is learning to Think Like a Programmer.
            """),

        Book(
          title: "Atomic Habits: An Easy & Proven Way to Build Good Habits & Break Bad Ones ",
          author: "James Clear ", coverArt: "AtomicHabbit", releaseYear: "2018",
          description: """
            The #1 New York Times bestseller. Over 4 million copies sold!

            Tiny Changes, Remarkable Results

            No matter your goals, Atomic Habits offers a proven framework for improving--every day. James Clear, one of the world's leading experts on habit formation, reveals practical strategies that will teach you exactly how to form good habits, break bad ones, and master the tiny behaviors that lead to remarkable results.

            If you're having trouble changing your habits, the problem isn't you. The problem is your system. Bad habits repeat themselves again and again not because you don't want to change, but because you have the wrong system for change. You do not rise to the level of your goals. You fall to the level of your systems. Here, you'll get a proven system that can take you to new heights.

            Clear is known for his ability to distill complex topics into simple behaviors that can be easily applied to daily life and work. Here, he draws on the most proven ideas from biology, psychology, and neuroscience to create an easy-to-understand guide for making good habits inevitable and bad habits impossible. Along the way, readers will be inspired and entertained with true stories from Olympic gold medalists, award-winning artists, business leaders, life-saving physicians, and star comedians who have used the science of small habits to master their craft and vault to the top of their field.

            Learn how to:
              •  make time for new habits (even when life gets crazy);
              •  overcome a lack of motivation and willpower;
              •  design your environment to make success easier;
              •  get back on track when you fall off course;
            ...and much more.

            Atomic Habits will reshape the way you think about progress and success, and give you the tools and strategies you need to transform your habits--whether you are a team looking to win a championship, an organization hoping to redefine an industry, or simply an individual who wishes to quit smoking, lose weight, reduce stress, or achieve any other goal.
            """),
        Book(
          title: "The Clean Coder: A Code of Conduct for Professional Programmers",
          author: "Robert Cecil Martin", coverArt: "CleanCoder", releaseYear: "2011",
          description: """
            Programmers who endure and succeed amidst swirling uncertainty and nonstop pressure share a common attribute: They care deeply about the practice of creating software. They treat it as a craft. They are professionals.



            In The Clean Coder: A Code of Conduct for Professional Programmers, legendary software expert Robert C. Martin introduces the disciplines, techniques, tools, and practices of true software craftsmanship. This book is packed with practical advice–about everything from estimating and coding to refactoring and testing. It covers much more than technique: It is about attitude. Martin shows how to approach software development with honor, self-respect, and pride; work well and work clean; communicate and estimate faithfully; face difficult decisions with clarity and honesty; and understand that deep knowledge comes with a responsibility to act.



            Readers will learn

            What it means to behave as a true software craftsman
            How to deal with conflict, tight schedules, and unreasonable managers
            How to get into the flow of coding, and get past writer’s block
            How to handle unrelenting pressure and avoid burnout
            How to combine enduring attitudes with new development paradigms
            How to manage your time, and avoid blind alleys, marshes, bogs, and swamps
            How to foster environments where programmers and teams can thrive
            When to say “No”–and how to say it
            When to say “Yes”–and what yes really means


            Great software is something to marvel at: powerful, elegant, functional, a pleasure to work with as both a developer and as a user. Great software isn’t written by machines. It is written by professionals with an unshakable commitment to craftsmanship. The Clean Coder will help you become one of them–and earn the pride and fulfillment that they alone possess.
            """),

        Book(
          title: "Cracking the Coding Interview: 189 Programming Questions and Solutions",
          author: "Gayle Laakmann McDowell ", coverArt: "CrackingInterview", releaseYear: "2015",
          description: """
            May be available at a lower price from other sellers, potentially without free Prime shipping.
            I am not a recruiter. I am a software engineer. And as such, I know what it's like to be asked to whip up brilliant algorithms on the spot and then write flawless code on a whiteboard. I've been through this as a candidate and as an interviewer.

            Cracking the Coding Interview, 6th Edition is here to help you through this process, teaching you what you need to know and enabling you to perform at your very best. I've coached and interviewed hundreds of software engineers. The result is this book.

            Learn how to uncover the hints and hidden details in a question, discover how to break down a problem into manageable chunks, develop techniques to unstick yourself when stuck, learn (or re-learn) core computer science concepts, and practice on 189 interview questions and solutions.

            These interview questions are real; they are not pulled out of computer science textbooks. They reflect what's truly being asked at the top companies, so that you can be as prepared as possible. WHAT'S INSIDE?

            189 programming interview questions, ranging from the basics to the trickiest algorithm problems.
            A walk-through of how to derive each solution, so that you can learn how to get there yourself.
            Hints on how to solve each of the 189 questions, just like what you would get in a real interview.
            Five proven strategies to tackle algorithm questions, so that you can solve questions you haven't seen.
            Extensive coverage of essential topics, such as big O time, data structures, and core algorithms.
            A behind the scenes look at how top companies like Google and Facebook hire developers.
            Techniques to prepare for and ace the soft side of the interview: behavioral questions.
            For interviewers and companies: details on what makes a good interview question and hiring process.
            Illustrations noteIllustrations: Illustrations, black and white
            """),
      ]
    }
  }
}
