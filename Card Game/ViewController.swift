//
//  ViewController.swift
//  Card Game
//
//  Created by нурсултан арапов on 9/1/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var audioPlayer:AVAudioPlayer?

    @IBOutlet weak var cardImageViewOne: UIImageView!
    @IBOutlet weak var cardImageViewTwo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        // Getting the url
        let url = Bundle.main.url(forResource: "soundcard", withExtension: "wav")
        // Make sure that we've got the url, otherwise abord
        guard url != nil else {
            return
        }
        // Create the audio player the sound
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url!)
            audioPlayer?.play()
        }
        catch {
            print("error")
        }
        
        let cardArray = [#imageLiteral(resourceName: "card2"),#imageLiteral(resourceName: "card3"),#imageLiteral(resourceName: "card4"),#imageLiteral(resourceName: "card5"),#imageLiteral(resourceName: "card6"),#imageLiteral(resourceName: "card7"),#imageLiteral(resourceName: "card8"),#imageLiteral(resourceName: "card9"),#imageLiteral(resourceName: "card10"),#imageLiteral(resourceName: "card11"),#imageLiteral(resourceName: "card12"),#imageLiteral(resourceName: "card13"),#imageLiteral(resourceName: "card14"),]
        
        cardImageViewOne.image = cardArray.randomElement()
        
        cardImageViewTwo.image = cardArray.randomElement()
    }
    
}

