Class {
	#name : #TracerTest,
	#superclass : #TestCase,
	#category : #'Tracer-Tests'
}

{ #category : #'as yet unclassified' }
TracerTest >> cleanMarkGetTraceTest [
	Tracer cleanTrace.
	Tracer recordingOn: True.
	self runProgramWithMarkedMethod.
	
	
]

{ #category : #tests }
TracerTest >> methodWithHalt [
	self halt.
]

{ #category : #tests }
TracerTest >> runProgramWithMarkedMethod [
	| testAssistant |
	testAssistant :=	TracerTestAssistant new.
	testAssistant markedMethod1.
	testAssistant markedMethod2.
	testAssistant markedMethod1.
	testAssistant markedMethod1.
]

{ #category : #'as yet unclassified' }
TracerTest >> testCleanTraceMarkGetTrace [
	"Test not finished. It just opens an inspector for now"
	Tracer cleanTrace.
	Tracer recordingOn: true.
	self runProgramWithMarkedMethod.
	InspectorNavigator inspect: Tracer getTrace.
	
]

{ #category : #'as yet unclassified' }
TracerTest >> testInstrumentMethod [
	| tta |
	tta := TracerTestAssistant new.
	Tracer new instrumentMethodNamed: #testMethod1 ofObject: tta.
]
