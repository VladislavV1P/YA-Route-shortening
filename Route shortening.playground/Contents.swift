import Foundation

var originalRoute = [(action: String, distance: Int)]()
var shortRoute = [(action: String, distance: Int)]()
var availableData = true
let invertAction = ["TOP": "BOTTOM", "BOTTOM": "TOP", "LEFT":"RIGHT", "RIGHT": "LEFT"]

while !availableData {
    if let input = readLine() {
        let route = input.split(separator: " ")
        let actionRoute = String(route[0])
        let distanceRoute = Int(route[1])!
        if distanceRoute > 0 {
            originalRoute.append((action: actionRoute, distance: distanceRoute))
        }
    } else {
        availableData = false
    }
}

//test data
let inputTest = """
LEFT 0
BOTTOM 150
BOTTOM 150
"""

let dataTest = inputTest.split(separator: "\n")
for item in dataTest {
    let routeTest = item.split(separator: " ")
    let actionRouteTest = String(routeTest[0])
    let distanceRouteTest = Int(routeTest[1])!
    if distanceRouteTest > 0 {
        originalRoute.append((action: actionRouteTest, distance: distanceRouteTest))
    }
}
//end test

if !originalRoute.isEmpty {
    shortRoute.append(originalRoute[0])
}

if originalRoute.count > 1 {
    for index in 1..<originalRoute.count {
        //    edit var way = shortRoute.last!
        var way = shortRoute.last!
        var step = originalRoute[index]
        
        if way.action == step.action {
            way.distance += step.distance
        } else if way.action == invertAction[step.action] {
            if way.distance > step.distance {
                way.distance -= step.distance
            } else if way.distance < step.distance {
                way.distance = step.distance - way.distance
                way.action = step.action
                shortRoute.removeLast()
            }
        } else {
            way.action = step.action
            way.distance = step.distance
        }
        if !shortRoute.isEmpty {
            if shortRoute.last! != way {
                if shortRoute.last!.action == way.action {
                    shortRoute.removeLast()
                    shortRoute.append(way)
                } else {
                    shortRoute.append(way)
                }
            } else {
                shortRoute.removeLast()
            }
        } else {
            shortRoute.append(way)
        }
    }
}


if !shortRoute.isEmpty {
    for step in shortRoute {
        print("\(step.action) \(step.distance)")
    }
} else {
    print()
}
