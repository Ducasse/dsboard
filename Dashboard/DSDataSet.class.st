Class {
	#name : #DSDataSet,
	#superclass : #Object,
	#instVars : [
		'data'
	],
	#category : #'Dashboard-Chart-Domain'
}

{ #category : #examples }
DSDataSet class >> example [ 
	<sampleInstance>
	
	^ self new 
		data: (DSBuilder 
			consumeCollection: 
			#(
					(2.4 true 'rain')
					(0.5 true 'rain')
					(-1.2 true 'snow')
					(-2.3 false '-')
					(3.2 true 'rain')	) 
		asElementOf: { DSTemperature . DSBoolean . DSEnumerated }); yourself
]

{ #category : #accessing }
DSDataSet >> data: aCollection [ 
	data := aCollection
]
