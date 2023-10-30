//
//  SoundPlayer.swift
//  MyMusic3
//
//  Created by 芥川浩平 on 2023/10/30.
//

import UIKit
import AVFoundation

class SoundPlayer: NSObject {
    let cymbalData = NSDataAsset(name: "cymbalSound")!.data
    var cymbalPlayer: AVAudioPlayer!

    let guitarData = NSDataAsset(name: "guitarSound")!.data
    var guitarPlayer: AVAudioPlayer!

    func cymbalPlay() {
        do {
            cymbalPlayer = try AVAudioPlayer(data: cymbalData)
            cymbalPlayer.play()
        } catch {
            print("シンバルでエラーが発生しました")
        }
    }

    func guitarPlay() {
        do {
            guitarPlayer = try AVAudioPlayer(data: guitarData)
            guitarPlayer.play()
        } catch {
            print("ギターでエラーが発生しました")
        }
    }
}
