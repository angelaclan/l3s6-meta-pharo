Class {
	#name : #AVLiteral,
	#superclass : #AVElement,
	#instVars : [
		'value'
	],
	#category : #ASTVisitors
}

{ #category : #'as yet unclassified' }
AVLiteral >> acceptVisitor: aPrintVisitor [ 
	^ aPrintVisitor visitAVLiteral: self
]

{ #category : #evaluating }
AVLiteral >> value [
	^ value
]

{ #category : #'as yet unclassified' }
AVLiteral >> value: anInteger [ 
	value := anInteger 
]
