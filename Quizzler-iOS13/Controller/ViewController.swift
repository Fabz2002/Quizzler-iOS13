

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var countingCorrectAnswers: UILabel!
    
    @IBOutlet weak var firstButtonLabel: UIButton!
    
    @IBOutlet weak var secondBtnLabel: UIButton!
    
    @IBOutlet weak var thirdBtnLabel: UIButton!
    var quizBrain = QuizBrain()
    
    @IBAction func answerbtn(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        sender.backgroundColor = quizBrain.checkAnswer(userAnswer)
        Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false) { timer in

            sender.backgroundColor = UIColor.clear
            self.quizBrain.nextAnswer()
            self.updateQuestionLabelUI()
        }

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuestionLabelUI()
        quizBrain.totalProgress = quizBrain.quiz.count
    }
    
   
    
    func updateQuestionLabelUI(){
        questionLabel.text = quizBrain.getQuestionText()
        let opt = quizBrain.getOptionsLabels()
        firstButtonLabel.setTitle(opt[0], for: .normal)
        secondBtnLabel.setTitle(opt[1], for: .normal)
        thirdBtnLabel.setTitle(opt[2], for: .normal)
        countingCorrectAnswers.text = "Score : \(quizBrain.getCorrectAnswers())"
        progressBar.progress = quizBrain.getProgress()
        firstButtonLabel.backgroundColor = UIColor.clear
        secondBtnLabel.backgroundColor = UIColor.clear
        thirdBtnLabel.backgroundColor = UIColor.clear
    }

}

