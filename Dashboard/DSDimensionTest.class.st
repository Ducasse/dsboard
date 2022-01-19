Class {
	#name : #DSDimensionTest,
	#superclass : #TestCase,
	#category : #Dashboard
}

{ #category : #tests }
DSDimensionTest >> testCompositeDimension [

	| res | 
	res := DSBuilder 
		consumeCollection: 
			#(
			(2.4 true 'rain')
			(0.5 true 'rain')
			(-1.2 true 'snow')
			(-2.3 false '-')
			(3.2 true 'rain')	) 
		asElementOf: { DSTemperature . DSBoolean . DSEnumerated }.
	self assert: res size equals: 5.
	self assert: res first first type equals: DSTemperature.
	self assert: res first second type equals: DSBoolean.
	self assert: res first third type equals: DSEnumerated
	
	 
]

{ #category : #tests }
DSDimensionTest >> testSimpleDimension [

	| res |
	res := (DSBuilder consume: #(100 200) as: DS2DPoint).
	self assert: res x equals: 100.
	self assert: res y equals: 200.
	self assert: res type equals: DS2DPoint
	 
]

{ #category : #tests }
DSDimensionTest >> testSimpleDimension2 [

	| res |
	res := DSBuilder consume: #(118 60) asDimensions: { DSHeight . DSWeight }.
	self assert: res first height equals: 118.
	self assert: res second weight equals: 60.
	self assert: res first type equals: DSHeight.
	self assert: res second type equals: DSWeight
	 
]
