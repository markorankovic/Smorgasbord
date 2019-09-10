import SpriteKit

public struct Smorgasbord {
    public var text = "Hello, World!"
    
    public init() { }
}


extension Sequence {
    
    public func filter<T>(_ type: T.Type) -> [T] {
        return compactMap{ $0 as? T }
    }
    
}

extension CGPoint {
    
    public static func -(_ lhs: CGPoint, _ rhs: CGPoint) -> CGPoint {
        return CGPoint(x: lhs.x - rhs.x, y: lhs.y - rhs.y)
    }
    
}
