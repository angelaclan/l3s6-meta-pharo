Class {
	#name : #PrintVisitor,
	#superclass : #Object,
	#category : #ASTVisitors
}

{ #category : #'as yet unclassified' }
PrintVisitor >> visitAVLiteral: anAVLiteral [ 
	^ anAVLiteral value asString
]

{ #category : #'as yet unclassified' }
PrintVisitor >> visitOperator: anOperator [
	| leftElement rightElement |
	leftElement := anOperator leftBranch acceptVisitor: self.
	rightElement := anOperator rightBranch acceptVisitor: self.
	^ anOperator operator , ' ' , leftElement , ' ' , rightElement
]
