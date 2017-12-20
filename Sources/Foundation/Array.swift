import Foundation

public extension Array {
	
	public func shuffled() -> [Element] {
		var shuffledArray = [Element]()
		shuffledArray.reserveCapacity(count)
		for item in self {
			let index = Int.randomNumber(between: 0, and: shuffledArray.count + 1)
			shuffledArray.insert(item, at: index)
		}
		return shuffledArray
	}
	
	public func shuffledBeginningWithItemAtIndex(index: Int) -> [Element] {
		var array = self
		let item = array.remove(at: index)
		var shuffledArray = array.shuffled()
		shuffledArray.insert(item, at: 0)
		return shuffledArray
	}
	
}

public extension Array where Element : Hashable {
	
	public func unique() -> [Element] {
		return Array(Set(self))
	}
	
}
