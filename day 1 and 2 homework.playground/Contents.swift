import UIKit

var str = "Hello, playground"

// Question 1

func removeRepeated(myString: String, repeats: Int) -> String {
    var result = ""
    var charCounts: Dictionary<Character, Int> = Dictionary<Character, Int>()
    for char in myString {
        
        if let count = charCounts[char] {
            charCounts[char] = count + 1
        } else {
            charCounts[char] = 1
        }
        
    }
    print(charCounts)
    
    for key in myString {
        
        if let value = charCounts[key] {
            if key == " " {
                result.append(key)
            } else if value < repeats {
                result.append(key)
            }
        }
        
    }
    return result
}


removeRepeated(myString: "aaba kouq bux", repeats: 4)

// Question 2

func wordCount(mySentence: String) -> Dictionary<String, Any> {
    let wordArray = mySentence.wordList
    var wordCounts: Dictionary<String, Int> = Dictionary<String, Int>()
    
    for word in wordArray {
        
        if let count = wordCounts[word] {
            wordCounts[word] = count + 1
        } else {
            wordCounts[word] = 1
        }
        
    }
    return wordCounts
}

extension String {
    var wordList: [String] {
        return components(separatedBy: CharacterSet.alphanumerics.inverted).filter { !$0.isEmpty }
    }
}

wordCount(mySentence: "merhaba nasılsınız . iyiyim siz nasılsınız . bende iyiyim. ")
