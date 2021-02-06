Class {
	#name : #AVElement,
	#superclass : #Object,
	#category : #ASTVisitors
}

{ #category : #'as yet unclassified' }
AVElement >> * anAVLiteral [ 
	^ Operator multiply: self with: anAVLiteral  
]

{ #category : #'as yet unclassified' }
AVElement >> + anOperator [ 
	^ Operator plus: self with: anOperator 
]

{ #category : #'as yet unclassified' }
AVElement >> - anAVLiteral [
	^ Operator minus: self with: anAVLiteral 
]

{ #category : #'as yet unclassified' }
AVElement >> / anAVLiteral [ 
	^ Operator divide: self with: anAVLiteral
]
