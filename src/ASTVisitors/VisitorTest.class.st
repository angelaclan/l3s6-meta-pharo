Class {
	#name : #VisitorTest,
	#superclass : #TestCase,
	#instVars : [
		'one',
		'eight',
		'three'
	],
	#category : #ASTVisitors
}

{ #category : #tests }
VisitorTest >> setUp [
super setUp.

	one := AVLiteral new
		value: 1;
		yourself.
	eight := AVLiteral new
		value: 8;
		yourself.
	three := AVLiteral new
		value: 3;
		yourself
]

{ #category : #tests }
VisitorTest >> testExpression [
	
	| expression |
	expression := one + (eight / three).
	self assert: expression operator equals: #+
]

{ #category : #tests }
VisitorTest >> testExpression2 [
	
	| expression |
	expression := one + (eight / three).
	self assert: expression rightBranch operator equals: #/
]

{ #category : #tests }
VisitorTest >> testExpression3 [
	
	| expression |
	expression := one + (eight / three).
	self assert: expression leftBranch value equals: 1
]

{ #category : #tests }
VisitorTest >> testExpressionCalculation [
	
	| expression calculator |
	expression := one + eight / three.
	
	calculator := CalculateVisitor new. 
	self assert: (expression acceptVisitor: calculator) equals: 1+8/3
]

{ #category : #tests }
VisitorTest >> testExpressionStringPreorder [
	
	| expression print |
	expression := one + eight / three.
	
	print := PrintVisitor new. 
	self assert: (expression acceptVisitor: print) equals: '/ + 1 8 3'
]
