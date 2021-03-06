accessing
pathItem
	| item |
	item := OAPathItem new.
	self implementedMethods do: [ :method |
		(item operationAt: method)
			parameters: (self parametersForOperation: method);
			requestBody: (self requestBodyForOperation: method ) ].
	^ item
