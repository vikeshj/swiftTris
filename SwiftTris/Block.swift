//
//  Block.swift
//  SwiftTris
//
//  Created by Vikesh on 2/6/15.
//  Copyright (c) 2015 Vikesh. All rights reserved.
//

import SpriteKit

let NumberOfColors: UInt32 = 6

enum BlockColor: Int, Printable {
    
    case Blue = 0, Orange, Purple, Red, Teal, Yellow
    
    var spiteName:String {
        switch self {
            case .Blue : return "blue"
            case .Orange : return "orange"
            case .Purple : return "purple"
            case .Red : return "red"
            case .Teal : return "teal"
            case .Yellow : return "yellow"
        }
    }
    
    //required to make Printable protocol to work
    var description: String {
        return self.spiteName
    }
    
    static func random() -> BlockColor {
        return BlockColor(rawValue: Int(arc4random_uniform(NumberOfColors)))!
    }
}


class Block: Hashable, Printable {
    
    let color:BlockColor
    
    var column: Int
    var row: Int
    var sprite: SKSpriteNode?
    
    var spriteName: String {
        return color.spiteName
    }
    
    var hashValue: Int {
        return self.column ^ self.row
    }
    
    var description: String {
        return "\(color): [\(column), \(row)]"
    }
    
    init(column:Int, row:Int, color:BlockColor){
        self.column = column
        self.row = row
        self.color = color
    }
}

//required to support hashable protocol else it wont work!
func ==(lhs: Block, rhs: Block) -> Bool {
    return lhs.column == rhs.column && lhs.row == rhs.row && lhs.color.rawValue == rhs.color.rawValue
}
