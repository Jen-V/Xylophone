
import UIKit
import AVFoundation

var player: AVAudioPlayer!

class ViewController: UIViewController {
  


    override func viewDidLoad() {
        super.viewDidLoad()
    

    
    }
    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(soundName: sender.currentTitle!)
        sender.alpha = 0.5

        //NOTE;I COULD NOT FIGURE THIS OUT BUT DID COME ACROSS THIS CODE IN SEARCHING FOR MY ANSWER...CREDIT TO codegrepper.com
        //Code should execute after 0.2 second delay.
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            //Bring's sender's opacity back up to fully opaque.
            sender.alpha = 1.0
    }
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play();
      
    }
}

