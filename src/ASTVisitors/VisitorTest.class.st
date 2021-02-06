Class {
	#name : #VisitorTest,
	#superclass : #TestCase,
	#instVars : [
		'one',
		'eight',
		'three',
		'two',
		'four',
		'six'
	],
	#category : #ASTVisitors
}

{ #category : #tests }
VisitorTest >> setUp [

super setUp.

	one := AVLiteral new
		value: 1;
		yourself.
	two := AVLiteral new
		value: 2;
		yourself.
	three := AVLiteral new
		value: 3;
		yourself.
	four := AVLiteral new
		value: 4;
		yourself.
	six := AVLiteral new 
		value: 6;
		yourself.
	eight := AVLiteral new
		value: 8;
		yourself.
	
	
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

{ #category : #tests }
VisitorTest >> testSecondExpression [
	
	| expression2 |
	expression2 := six - one * two.
	self assert: expression2 operator equals: #*.
	
]

{ #category : #tests }
VisitorTest >> testSecondExpression2 [
	
	| expression2 |
	expression2 := (six - one) * two.
	self assert: expression2 leftBranch operator equals: #-.
	
]

{ #category : #tests }
VisitorTest >> testSecondExpressionStringPreorder [
	
	| expression2 print |
	expression2 := six - one * two.
	
	print := PrintVisitor new. 
	self assert: (expression2 acceptVisitor: print) equals: '* - 6 1 2'
]
