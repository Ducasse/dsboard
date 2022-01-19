Class {
	#name : #DSKiviatDescription,
	#superclass : #Object,
	#category : #Dashboard
}

{ #category : #testing }
DSKiviatDescription class >> canDisplay: aCollection [ 

	^ aCollection size between: 5 and: 7
]
