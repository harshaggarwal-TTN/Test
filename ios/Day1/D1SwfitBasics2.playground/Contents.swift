import UIKit

class ParameterInitalisation{
    var id: Int
    var name: String
    init(parameterID aurgumentID : Int, parameterName aurgumentName : String){
        self.id = aurgumentID
        self.name = aurgumentName
    }
}

var obj1 = ParameterInitalisation(parameterID: 101, parameterName: "ABCD")
//print("ID is \(obj1.id) and name is \(obj1.name) ")


class Movie{
    var title : String
    var author : String
    var releaseYear : Int
    
    init(title t: String, author a: String, releaseYear r: Int) {
        self.title = t
        self.author = a
        self.releaseYear = r
    }
    convenience init(){
        self.init(title: "DefaultTilte", author: "DefaultAuthor", releaseYear: 0)
    }
}
var mov1 = Movie()
//print(mov1.title,mov1.author,mov1.releaseYear)
var mov2 = Movie(title: "HarryPotter", author: "JKRowling", releaseYear: 2003)
//print (mov2.title,mov2.author,mov2.releaseYear)

enum nameAlert: Error{
    case adminName
}

struct example{
    var name: String
    init(name: String) throws{
        if name[name.startIndex] == "H"{
            throw nameAlert.adminName
        }
        self.name=name
    }
}

do{
    let newName = try example(name: "Chris")
    print(newName.name)
} catch nameAlert.adminName{
    print("person with name starting from H")
}

////////        ARRAY       ///////////

var array1 = [Int]()
print(array1)

var repeatingArray = Array(repeating: 7, count: 4)
print(repeatingArray)

var array2 : [Int] = [1,2,3,4]
print(array2)

var addTwoArray = array2 + repeatingArray
print(addTwoArray)

let arrCityNames : [String] = ["Delhi","Mumbai","Kolkata","Chennai","Bangalore"]
print(arrCityNames)


var arrNames : [String] = ["Delhi","Mumbai","Kolkata","Chennai","Bangalore"]
arrNames += ["Toronto","Washington"]// addition of multiple item at same time
arrNames.append("Zurich")//only one at a time
print(arrNames)


var arrReplace: [Int] = [14, 18, 15, 16, 23, 52, 95]
print(arrReplace)
arrReplace[2] = 24
arrReplace[4] = 48
print(arrReplace)


/////////    SETS    /////////

let houseAnimals: Set = ["dog", "cat"]
let farmAnimals: Set = ["cow", "hen", "sheep", "dog", "cat"]
let cityAnimals: Set = ["sparrow", "rat"]

print(houseAnimals.isSubset(of: farmAnimals))

print(farmAnimals.isSuperset(of: houseAnimals))

print(farmAnimals.isDisjoint(with: cityAnimals))

print(farmAnimals.subtracting(houseAnimals))

let commonSet :Set = houseAnimals.union(farmAnimals).union(cityAnimals)
print(commonSet)


//////////     DICTIONARIES     ////////////////

var dictionary1 : [String:Int] = [:]

var dictionary2 = [String:Int] ()

var dictionary3 = ["abc":1,"efg":2,"mno":3]

let ar1 = ["aaa","bbb","ccc","ddd","eee"]
let ar2 = [11,22,33,44,55]
let dictionary4 = Dictionary(uniqueKeysWithValues: zip(ar1,ar2))
print(dictionary4)

var secretIdentities = ["Hulk":"Bruce Banner",
                        "Batman":"Bruce bayne",
                        "Superman":"Clark Kent"]
print(secretIdentities)


struct intKeyPairs {
    var elements : [(String,Int)]
    
    init(_ elementsComing: KeyValuePairs<String,Int>){
        self.elements = Array(elementsComing)
    }
}

let pairs = intKeyPairs(["one":1,"two":2,"three":3])
print(pairs.elements)

////////     another way

let recordTimes: KeyValuePairs = ["Griffith-Joyner": 49,
                                  "Evelyn Ashford": 76,
                                  "Evelyn Ashford": 19,
                                  "Marlies Gohr": 81]
print(recordTimes)
print(recordTimes.first!)

print(dictionary4)

for i in dictionary4.keys{
    print(i)
}
/*
subscript(index: Int) -> Int {
    get {
        // Return an appropriate subscript value here.
    }
    set(newValue) {
        // Perform a suitable setting action here.
    }
}
*/
let intro = "hello world. How are you ? I am great here. "

let endOfSentence = intro.firstIndex(of: ".")!
let firstSentence = intro[...endOfSentence]

if endOfSentence == intro.firstIndex(of: ".")! && firstSentence == intro[...endOfSentence]{
    print("TRUE")
}else{
    print("FALSE")
}





