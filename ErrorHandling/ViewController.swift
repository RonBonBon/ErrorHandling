//
//  ViewController.swift
//  ErrorHandling
//
//  Created by hackeru on 26 Tishri 5778.
//  Copyright © 5778 com.arichafamily. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player:AVAudioPlayer! = nil

    @IBOutlet var btn:UIButton?

    @IBAction func play(_ sender: UIButton) {
        player.play()
    }
       override func viewDidLoad() {
        super.viewDidLoad()

        guard let url = Bundle.main.url(forResource: "fdb", withExtension: "mp3") else {return}
        
        //This must work
        player = try! AVAudioPlayer(contentsOf: url)
        
        //if this work
        player = try? AVAudioPlayer(contentsOf: url)

//        do {
//            player = try AVAudioPlayer(contentsOf: url)
//        } catch let error as NSError{
//            print(error)
//        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

