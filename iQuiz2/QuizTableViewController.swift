//
//  QuizTableViewController.swift
//  iQuiz3
//
//  Created by Kevin Ly on 11/23/15.
//  Copyright © 2015 Kevin Ly. All rights reserved.
//

import UIKit

struct Quiz {
    var title : String
    var desc : String
    var questions : [Question]
}

struct Question {
    var text : String
    var answer: String
    var answers : [String]
}

class QuizTableViewController: UITableViewController {
    
    let quizTitles = ["Math", "Science", "Marvel"]
    let quizSubtitles = ["Test your aritmetic skills.", "All things science!", "How well do you know your super heroes?"]
    let quizIcons = [UIImage(named: "math"), UIImage(named: "science"), UIImage(named: "marvel")]
    
    let mathQuiz = [
        Question(text: "The teacher brought 20 cupcakes to school, but there were only 17 students in class. If each student had one cupcake, how many cupcakes were eaten?", answer: "17", answers: ["3", "2", "17", "20"]),
        Question(text: "Mr.Walters planted 28 tulip bulbs in his yard. His dog dug up 11 of the bulbs. How many tulips will bloom in the spring?", answer: "17", answers: ["17", "7", "10", "8"]),
        Question(text: "Sam got 21 pieces of candy while trick-or-treating. His mom said he had to finish them all in a week. How many should he eat to have an equal amount every day?", answer: "3", answers: ["1", "3", "5", "7"]),
        Question(text: "During summer vacation, Tim's brother earned money mowing the neighbor's lawn. He can mow 6 lawns an hour and has 21 laws left to mow. How long will it take him to finish?", answer: "3.5", answers: ["1.5", "2.5", "3.5", "4.5"]),
        Question(text: "Steve's mom bought him a 1 year swimming pass for $390. She decided to make monthly payments. How much would she need to pay per month?", answer: "32.50", answers: ["25.50", "27.75", "30.00", "32.50"])
    ]
    
    let scienceQuiz = [
        Question(text: "What is the atomic symbol for chlorine?", answer: "Cl", answers: ["C", "Ca", "Ch", "Cl"]),
        Question(text: "How many protons does Hydroden have", answer: "1", answers: ["1", "2", "10", "15"]),
        Question(text: "What is the most prevelant element found in air", answer: "Nitrogen", answers: ["Oxygen", "Nitrogen", "Carbon Monoxide", "Carbon Dioxide"]),
        Question(text: "Which of these elements are commonly enriched for nuclear power", answer: "Uranium", answers: ["Einsteinium", "Americium", "Uranium", "Californium"]),
        Question(text: "What is the rate of gravity on earth", answer: "9.8 m/s/s", answers: ["9.6 m/s/s", "9.7 m/s/s", "9.8 m/s/s", "9.9 m/s/s"])
    ]
    
    let marvelQuiz = [
        Question(text: "What is Peter Parker's middle name?", answer: "Benjamin", answers: ["William", "Benjamin", "Thomas", "Samuel"]),
        Question(text: "Which of these Marvel artifacts is not one of the six Infinity Stones as revealed in 'Guardians of the Galaxy'?", answer: "The Arc Reactor", answers: ["The Aether", "The Tesseract", "The Arc Reactor", "The Orb"]),
        Question(text: "Which of these heroes from 'Captain America: The First Avenger' returned as a villian in 'Captain America: The Winter Solider'?", answer: "Bucky Barnes", answers: ["Nick Fury", "Bucky Barnes", "Peggy Carter", "Dr.Erskine"]),
        Question(text: "This fictional metal is a component of both Captain America's shield and Iron Man's Arc Reactor. Name it.", answer: "Vibranium", answers: ["Mythril", "Vibranium", "Adamantium", "Energon"]),
        Question(text: "This is the name of the enormous space station where the collector housed his collections in 'Guradians of the Galaxy'.", answer: "Knowhere", answers: ["Knowhere", "Somewhere", "Anywhere", "Overthere"])
    ]
    
    var quiz = [
        Quiz(title: "Math", desc: "Test your aritmetic skills.", questions: [
            Question(text: "The teacher brought 20 cupcakes to school, but there were only 17 students in class. If each student had one cupcake, how many cupcakes were eaten?", answer: "17", answers: ["3", "2", "17", "20"]),
            Question(text: "Mr.Walters planted 28 tulip bulbs in his yard. His dog dug up 11 of the bulbs. How many tulips will bloom in the spring?", answer: "17", answers: ["17", "7", "10", "8"]),
            Question(text: "Sam got 21 pieces of candy while trick-or-treating. His mom said he had to finish them all in a week. How many should he eat to have an equal amount every day?", answer: "3", answers: ["1", "3", "5", "7"]),
            Question(text: "During summer vacation, Tim's brother earned money mowing the neighbor's lawn. He can mow 6 lawns an hour and has 21 laws left to mow. How long will it take him to finish?", answer: "3.5", answers: ["1.5", "2.5", "3.5", "4.5"]),
            Question(text: "Steve's mom bought him a 1 year swimming pass for $390. She decided to make monthly payments. How much would she need to pay per month?", answer: "32.50", answers: ["25.50", "27.75", "30.00", "32.50"])
        ]),
        Quiz(title: "Science", desc: "All things science!", questions: [
            Question(text: "What is the atomic symbol for chlorine?", answer: "Cl", answers: ["C", "Ca", "Ch", "Cl"]),
            Question(text: "How many protons does Hydroden have", answer: "1", answers: ["1", "2", "10", "15"]),
            Question(text: "What is the most prevelant element found in air", answer: "Nitrogen", answers: ["Oxygen", "Nitrogen", "Carbon Monoxide", "Carbon Dioxide"]),
            Question(text: "Which of these elements are commonly enriched for nuclear power", answer: "Uranium", answers: ["Einsteinium", "Americium", "Uranium", "Californium"]),
            Question(text: "What is the rate of gravity on earth", answer: "9.8 m/s/s", answers: ["9.6 m/s/s", "9.7 m/s/s", "9.8 m/s/s", "9.9 m/s/s"])
        ]),
        Quiz(title: "Marvel", desc: "How well do you know your super heroes?", questions: [
            Question(text: "What is Peter Parker's middle name?", answer: "Benjamin", answers: ["William", "Benjamin", "Thomas", "Samuel"]),
            Question(text: "Which of these Marvel artifacts is not one of the six Infinity Stones as revealed in 'Guardians of the Galaxy'?", answer: "The Arc Reactor", answers: ["The Aether", "The Tesseract", "The Arc Reactor", "The Orb"]),
            Question(text: "Which of these heroes from 'Captain America: The First Avenger' returned as a villian in 'Captain America: The Winter Solider'?", answer: "Bucky Barnes", answers: ["Nick Fury", "Bucky Barnes", "Peggy Carter", "Dr.Erskine"]),
            Question(text: "This fictional metal is a component of both Captain America's shield and Iron Man's Arc Reactor. Name it.", answer: "Vibranium", answers: ["Mythril", "Vibranium", "Adamantium", "Energon"]),
            Question(text: "This is the name of the enormous space station where the collector housed his collections in 'Guradians of the Galaxy'.", answer: "Knowhere", answers: ["Knowhere", "Somewhere", "Anywhere", "Overthere"])
        ])
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        self.navigationController?.navigationBar.topItem?.title = "Pick a Quiz!"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.quiz.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("quizCell", forIndexPath: indexPath) as! QuizViewCell

        cell.quizTitle.text = self.quiz[indexPath.row].title
        cell.quizSubtitle.text = self.quiz[indexPath.row].desc
        cell.quizIcon.image = self.quizIcons[indexPath.row]

        return cell
    }
    
    
    @IBAction func settings(sender: UIButton) {
//        let alertController = UIAlertController(title: "Settings", message: "Settings will go here", preferredStyle: UIAlertControllerStyle.Alert)
//        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default,handler: nil))
//        self.presentViewController(alertController, animated: true, completion: nil)
        
        var inputTextField: UITextField?
        let urlPrompt = UIAlertController(title: "Add Quizzes from the Web", message: "Enter a URL where quizzes are stored.", preferredStyle: UIAlertControllerStyle.Alert)
        urlPrompt.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Default, handler: nil))
        urlPrompt.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: {
            (action) -> Void in
            let newURL = inputTextField!.text
            let sessionConfig = NSURLSessionConfiguration.defaultSessionConfiguration()
            let session = NSURLSession(configuration: sessionConfig, delegate: nil, delegateQueue: nil)
            let url = NSURL(string: newURL!)
            let request = NSMutableURLRequest(URL: url!)
            request.HTTPMethod = "GET"
            
            let task = session.dataTaskWithRequest(request) { (data, response, error) -> Void in
                let statusCode = (response as! NSHTTPURLResponse).statusCode
                print("URL Task Worked: \(statusCode)")
                do {
                    self.quiz = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.AllowFragments) as! [Quiz]
                } catch {
                    let alertController = UIAlertController(title: "BAD URL", message:
                        "", preferredStyle: UIAlertControllerStyle.Alert)
                    alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default,handler: nil))
                    self.presentViewController(alertController, animated: true, completion: nil)
                }
            }
            task.resume()
        }))
        urlPrompt.addTextFieldWithConfigurationHandler({(textField: UITextField!) in
            textField.placeholder = "https://"
            inputTextField = textField
        })
        presentViewController(urlPrompt, animated: true, completion: nil)
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let cell = sender as! QuizViewCell
        let questionController = segue.destinationViewController as! QuestionViewController
        
        switch cell.quizTitle.text! {
        case "Math":
            questionController.questions = self.quiz[0].questions
            questionController.navigationItem.title = "Math Quiz"
        case "Science":
            questionController.questions = self.quiz[1].questions
            questionController.navigationItem.title = "Science Quiz"
        default:
            questionController.questions = self.quiz[2].questions
            questionController.navigationItem.title = "Marvel Quiz"
        }
    }
}
