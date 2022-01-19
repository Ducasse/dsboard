Class {
	#name : #DSSingleData,
	#superclass : #DSDimension,
	#category : #Dashboard
}

{ #category : #'instance creation' }
DSSingleData class >> consumeFrom: anInteger [ 
	^ self new data: anInteger ; yourself
]
