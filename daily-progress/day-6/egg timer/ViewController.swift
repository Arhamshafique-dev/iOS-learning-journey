import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?

    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var titleLabel: UILabel!
    
    let eggTimes = ["Soft" : 3, "Medium" : 4, "Hard" : 7]
    
    var timer = Timer()
    var totalTime = 0
    var secondPassed = 0
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        

        
        timer.invalidate()
        let hardness = sender.currentTitle!
        
        totalTime = eggTimes [hardness]!
        
        progressBar.progress = 0.0
        secondPassed = 0
        titleLabel.text = hardness
        
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
        if secondPassed < totalTime {
        
            secondPassed += 1
            progressBar.progress = Float(secondPassed) / Float(totalTime)
            print(Float(secondPassed) / Float(totalTime))
         
            
        } else {
            timer.invalidate()
           
            
        }
        
    }
    
    func playSound() {
        guard let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3") else {
            print("Sound file not found.")
            return
        }

        do {
            player = try AVAudioPlayer(contentsOf: url)
        
            player?.play()
        } catch {
            print("Error playing sound: \(error.localizedDescription)")
        }
    }

    
    
}
