Class {
	#name : #DSDimension,
	#superclass : #Object,
	#instVars : [
		'data'
	],
	#category : #Dashboard
}

{ #category : #accessing }
DSDimension >> data: aPoint [ 
	data := aPoint
]

{ #category : #accessing }
DSDimension >> type [
	^ self class
]
