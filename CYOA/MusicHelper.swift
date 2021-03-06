//
//  MusicHelper.swift
//  CYOA
//
//  Created by Erik Mikac on 2/21/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import Foundation
import AVFoundation

class MusicHelper {
    
    static let sharedHelper = MusicHelper()
    var audioPlayer: AVAudioPlayer?
    
    func playBackgroundMusic() {
    
        print("AudioPlayer")
        let aSound = NSURL(fileURLWithPath: Bundle.main.path(forResource: "MainMenuSong", ofType: "wav")!)
        do {
            audioPlayer = try AVAudioPlayer(contentsOf:aSound as URL)
            audioPlayer!.numberOfLoops = 3
            audioPlayer!.prepareToPlay()
            audioPlayer!.play()
       
        } catch {
            print("Cannot play the file")
        }
    }}
