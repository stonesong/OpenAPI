instance creation
neoJsonMapping: mapper
	mapper
		for: self
		do: [ :mapping | 
			mapping mapInstVars: #(summary description servers).
			(mapping mapAccessors: #(get put post delete options head patch trace))
				do: [ :each | each valueSchema: OAOperation. ]. ].