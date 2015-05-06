//
//  Swiftris.swift
//  SwiftTris
//
//  Created by Vikesh on 5/4/15.
//  Copyright (c) 2015 Vikesh. All rights reserved.
//

let NumColumns = 10
let NumRows = 20

let StartingColumn = 4
let StartingRow = 0

let PreviewColumn = 12
let PreviewRow = 1


class Swiftris {
    var blockArray:Array2D<Block>
    var nextshape:Shape?
    var fallingShape:Shape?
    
    init(){
        fallingShape = nil;
        nextshape = nil
        blockArray = Array2D<Block>(columns: NumColumns, rows: NumRows)
    }
    
    func beginGame(){
        if(nextshape == nil) {
           
        }
    }
}
