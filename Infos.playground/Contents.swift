protocol ExpertProtocol {
    func addLike()
    func getName() -> String
}

protocol DeveloperProtocol {
    func getName() -> String
}

class Expert : ExpertProtocol {
    var name : String
    var bio : String
    var likes : Int
    
    init(name: String, bio: String, likes: Int) {
        self.name = name
        self.bio = bio
        self.likes = likes
    }
    
    func addLike() {
        likes += 1
    }
    
    func getName() -> String {
        return name
    }
}

class Developer : Expert, DeveloperProtocol {
    var languages : [String]
    init(name: String, bio: String, likes: Int, language: [String]) {
        self.languages = language
        super.init(name: name, bio: bio, likes: likes)
    }
    
    override func getName() -> String {
        return "this expert name is: " + name
    }
}

var amir = Developer(name: "Amir", bio: "Software engineer", likes: 5, language: ["JS", "Swift"])

print(amir.getName())


enum Score : String {
    case one = "Good"
    case two = "Bad"
}

var rate : Score = 1 > 2 ? .one : .two
print("yur score is: \(rate.rawValue) ")
