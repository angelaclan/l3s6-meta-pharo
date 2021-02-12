Class {
	#name : #TestMessageCount,
	#superclass : #TestCase,
	#category : #AMessageCounter
}

{ #category : #tests }
TestMessageCount >> testMessageCount [
	| ast counting |
	ast := RBParser parseMethod: (Point >> #sideOf:) sourceCode.
	counting := CountingInterpreter new.
	ast acceptVisitor: counting.
	self assert: counting numberOfMessages equals: 4
]
