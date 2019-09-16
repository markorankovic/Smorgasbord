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


extension String {
    
    static func getString(from: Int, to: Int, string: String) -> String {
        let arr: [Character] = Array(string)
        var newArr: [Character] = []
        for i in from..<to {
            newArr.append(arr[i])
        }
        return arr.reduce(""){ "\($0)" + "\($1)" }
    }

    static func getStartIndexes(lhs: String, rhs: String) -> [Int] {
        guard lhs.count <= rhs.count else {
            return []
        }
        
        var indexes: [Int] = []
        for i in 0..<lhs.count {
            if getString(from: i, to: i + rhs.count, string: rhs) == rhs {
                indexes.append(i)
            }
        }
        return indexes
    }

    public static func -(_ lhs: String, _ rhs: String) -> String {
        let startIndexes = getStartIndexes(lhs: lhs, rhs: rhs)
        var strings: [String] = []
        var i = 0
        for startIndex in startIndexes {
            strings.append(getString(from: i, to: startIndex - 1, string: lhs))
            i = startIndex + rhs.count + 1
        }
        return strings.reduce(""){ $0 + $1 }
    }

}
