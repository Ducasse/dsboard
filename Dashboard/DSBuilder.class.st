Class {
	#name : #DSBuilder,
	#superclass : #Object,
	#category : #Dashboard
}

{ #category : #'instance creation' }
DSBuilder class >> consume: aCollection as: aClass [ 
	
	^  aClass consumeFrom: aCollection
]
