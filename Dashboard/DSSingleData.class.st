Class {
	#name : #DSSingleData,
	#superclass : #DSDomain,
	#category : #Dashboard
}

{ #category : #'instance creation' }
DSSingleData class >> consumeCollection: aCollection as: aClass [ 
	
	^ aCollection collect: [ :each | aClass new data: each ]
]

{ #category : #'instance creation' }
DSSingleData class >> consumeFrom: anInteger [ 
	^ self new data: anInteger ; yourself
]
