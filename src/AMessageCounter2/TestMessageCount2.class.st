Class {
	#name : #TestMessageCount2,
	#superclass : #TestCase,
	#category : #AMessageCounter2
}

{ #category : #tests }
TestMessageCount2 >> testMessageCount2 [
|ast counting|

ast := RBParser parseMethod: (Point >> #sideOf:) sourceCode.
counting := CountingManualInterpreter new.
ast acceptVisitor: counting.
self assert: counting numberOfMessages equals:4.
]
