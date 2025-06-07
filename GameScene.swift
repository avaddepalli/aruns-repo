import SpriteKit
import GameplayKit

class GameScene: SKScene {
    override func didMove(to view: SKView) {
        backgroundColor = SKColor.white
        
        // Set up physics world
        physicsWorld.gravity = CGVector(dx: 0, dy: -2.0)
        physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
        
        // Example: Add a falling bubble
        spawnBubble(at: CGPoint(x: size.width/2, y: size.height - 50))
    }
    
    func spawnBubble(at position: CGPoint) {
        let bubble = SKShapeNode(circleOfRadius: 30)
        bubble.position = position
        bubble.fillColor = .cyan
        
        // Letter label
        let label = SKLabelNode(text: randomLetter())
        label.fontSize = 32
        label.fontColor = .black
        label.verticalAlignmentMode = .center
        bubble.addChild(label)
        
        // Physics
        bubble.physicsBody = SKPhysicsBody(circleOfRadius: 30)
        bubble.physicsBody?.restitution = 0.6
        bubble.physicsBody?.friction = 0.2
        bubble.physicsBody?.allowsRotation = false
        
        addChild(bubble)
    }
    
    func randomLetter() -> String {
        let letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        return String(letters.randomElement()!)
    }
}
