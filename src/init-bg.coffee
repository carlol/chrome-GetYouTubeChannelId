
# MAIN BACKGROUND SCRIPT

require.config 

	paths: 
		R : 'core/data/Resources'
		background : 'background/background'
		

require ['background'] 
	, (components...) -> console.log c; c.init?() for c in components