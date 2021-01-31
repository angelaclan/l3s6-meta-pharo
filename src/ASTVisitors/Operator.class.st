Class {
	#name : #Operator,
	#superclass : #AVElement,
	#instVars : [
		'operator',
		'leftBranch',
		'rightBranch'
	],
	#category : #ASTVisitors
}

{ #category : #'as yet unclassified' }
Operator class >> divide: anAVLiteral with: anAVLiteral2 [
	^ self new
		operator: #/;
		leftBranch: anAVLiteral;
		rightBranch: anAVLiteral2;
		yourself
]

{ #category : #'as yet unclassified' }
Operator class >> plus: anAVLiteral with: anOperator [
	^ self new
		operator: #+;
		leftBranch: anAVLiteral;
		rightBranch: anOperator;
		yourself
]

{ #category : #'as yet unclassified' }
Operator >> acceptVisitor: aCalculateVisitor [ 
	^ aCalculateVisitor visitOperator: self
]

{ #category : #'as yet unclassified' }
Operator >> leftBranch [
	^ leftBranch
]

{ #category : #'as yet unclassified' }
Operator >> leftBranch: anAVLiteral [ 
	leftBranch := anAVLiteral 
]

{ #category : #'as yet unclassified' }
Operator >> operator [
	^ operator
]

{ #category : #'as yet unclassified' }
Operator >> operator: aString [ 

	operator := aString
]

{ #category : #'as yet unclassified' }
Operator >> rightBranch [
	^ rightBranch
]

{ #category : #'as yet unclassified' }
Operator >> rightBranch: anAVLiteral [ 
	rightBranch := anAVLiteral 
]
