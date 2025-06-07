#if canImport(UIKit) && canImport(SpriteKit)
import UIKit
import SpriteKit

public class GameViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        if let view = self.view as? SKView {
            let scene = GameScene(size: view.bounds.size)
            scene.scaleMode = .resizeFill
            view.presentScene(scene)

            view.ignoresSiblingOrder = true
            view.showsFPS = true
            view.showsNodeCount = true
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
#else
/// Minimal stub for non-Apple platforms where UIKit/SpriteKit isn't available.
public class GameViewController {
    public init() {}
}
#endif
