Class {
	#name : #DSBuilder,
	#superclass : #Object,
	#category : #Dashboard
}

{ #category : #'instance creation' }
DSBuilder class >> consume: aCollection as: aClass [ 
	
	^  aClass consumeFrom: aCollection
]

{ #category : #'instance creation' }
DSBuilder class >> consume: aCollection asDimensions: aCollection2 [ 
	
	^ aCollection 
		with: aCollection2 
		collect: [ :data :dimensionClass | dimensionClass consumeFrom: data ]

]

{ #category : #'instance creation' }
DSBuilder class >> consumeCollection: aCollection asElementOf: aCollection2 [ 
	
	^ aCollection collect: [ :each | DSCompositeDomain data: each for: aCollection2 ]
]
