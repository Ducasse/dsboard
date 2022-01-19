Class {
	#name : #DSDimensionTest,
	#superclass : #TestCase,
	#category : #Dashboard
}

{ #category : #tests }
DSDimensionTest >> testSimpleDimension [

	| res |
	res := (DSBuilder consume: #(100 200) as: DS2DPoint).
	self assert: res x equals: 100.
	self assert: res y equals: 200.
	self assert: res type equals: DS2DPoint
	 
]
