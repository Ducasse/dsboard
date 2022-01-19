Class {
	#name : #DSCompositeDomain,
	#superclass : #Object,
	#instVars : [
		'data'
	],
	#category : #Dashboard
}

{ #category : #'instance creation' }
DSCompositeDomain class >> data: aCollection for: aCollection2 [ 
	"aCollection is a tuple of data represented by a list of domain description"
	
	^ self new
			data: (DSBuilder consume: aCollection asDimensions: aCollection2 );
			yourself 		
]

{ #category : #accessing }
DSCompositeDomain >> data: aCollection [ 
	data := aCollection
]

{ #category : #accessing }
DSCompositeDomain >> first [
	^ data first
]

{ #category : #accessing }
DSCompositeDomain >> second [
	^ data second
]

{ #category : #accessing }
DSCompositeDomain >> third [
	^ data third
]
