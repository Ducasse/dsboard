Class {
	#name : #DSChartDescriptionTest,
	#superclass : #TestCase,
	#instVars : [
		'des'
	],
	#category : #'Dashboard-Charts-Tests'
}

{ #category : #tests }
DSChartDescriptionTest >> testHistogram [

	 des := DSChartDescription new
			kind: DSNumber;
			populationSize: (DSRange between: 10 and: 10000);
			yourself.
	self assert: (des canAcceptKind: DSNumber).
	self assert: (des canAcceptSize: 500).
	
]

{ #category : #tests }
DSChartDescriptionTest >> testIsBuilderSelectingHistogram [
 
	| b collections|
	b := DSBuilder new.
	collections := b 
		consume: #( 33 44 55 66 98 77 88 898 45 3 2 3 4 2222 4442 1 2 34 4 44 ) 
		asAllOf: DSNumber.
	self assert: (b chartClassesFor: collections) first equals: DSHistogram 
]

{ #category : #tests }
DSChartDescriptionTest >> testIsBuilderSelectingScatterPlot [
 
	| b collections|
	b := DSBuilder new.
	collections := b 
		consume: #( 
					(33 44 5) 
					(55 66 2) 
					(34 56 1) 
					(101 100 30) 
					(98 77 4)
				 	(88 34 2) 
					(898 45 3)
					 (2 3 4) 
					(224 23 4) 
					(444 50 2) 
					(34 4 44 )) 
		asAllOf: DS2D5Point.
	self assert: (b chartClassesFor: collections) first equals: DSScatterPlotWithError  
]

{ #category : #tests }
DSChartDescriptionTest >> testIsKiviat [

	| numbers |
	numbers := DSSingleData consumeCollection: #( 500 40 60 200 350 ) as: DSNumber.
	self assert: (DSKiviatDescription new canDisplay: numbers). 
	
]
