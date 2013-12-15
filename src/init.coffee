# INITIALIZATION SCRIPT

console.log 'sono dentro'

require.config 

	paths: 
		R : 'core/data/Resources'
		app : 'view/app'
		# _ : 'core/common/Utils'


require ['app'] # ordered components list
		, (components...) -> c.init?() for c in components