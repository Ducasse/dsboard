Class {
	#name : #DSChartDescriptionTest,
	#superclass : #TestCase,
	#category : #Dashboard
}

{ #category : #tests }
DSChartDescriptionTest >> testIsKiviat [

	| numbers |
	numbers := DSSingleData consumeCollection: #( 500 40 60 200 350 ) as: DSNumber.
	self assert: (DSKiviatDescription canDisplay: numbers). 
	
]
