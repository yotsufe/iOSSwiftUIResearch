//

import UIKit
import AVFoundation

class SoundPlayer: NSObject {

    let cymbalData = NSDataAsset(name: "cymbalSound")!.data
    let guitarData = NSDataAsset(name: "guitarSound")!.data
    var cymbalPlayer: AVAudioPlayer!
    var guitarPlayer: AVAudioPlayer!

    func cymbalPlay() {
        do {
            cymbalPlayer = try AVAudioPlayer(data: cymbalData)
            cymbalPlayer.play()
        } catch {
            print("cymbalPlayError")
        }
    }

    func guitarPlay() {
        do {
            guitarPlayer = try AVAudioPlayer(data: guitarData)
            guitarPlayer.play()
        } catch {
            print("guitarPlayError")
        }
    }
}
