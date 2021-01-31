Class {
	#name : #CalculateVisitor,
	#superclass : #Object,
	#category : #ASTVisitors
}

{ #category : #'as yet unclassified' }
CalculateVisitor >> visitAVLiteral: anAVLiteral [ 
	^ anAVLiteral value
]

{ #category : #'as yet unclassified' }
CalculateVisitor >> visitOperator: anOperator [
	| leftValue rightValue |
	leftValue := anOperator leftBranch acceptVisitor: self.
	rightValue := anOperator rightBranch acceptVisitor: self.
	(anOperator operator = #+) ifTrue: [ ^ leftValue + rightValue ].
	(anOperator operator = #/) ifTrue: [ ^ leftValue / rightValue ].
	self error: anOperator operator, ' Has not been implemented '
]
