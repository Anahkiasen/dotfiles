module.exports = {
	dist: {
		options: {
			'adjoining-classes'          : false,
			'unique-headings'            : false,
			'qualified-headings'         : false,
			'star-property-hack'         : false,
			'floats'                     : false,
			'display-property-grouping'  : false,
			'duplicate-properties'       : false,
			'text-indent'                : false,
			'known-properties'           : false,
			'font-sizes'                 : false,
			'box-model'                  : false,
			'gradients'                  : false,
			'box-sizing'                 : false,
			'compatible-vendor-prefixes' : false,

			'ids'                        : false,
			'underscore-property-hack'   : false,
			'overqualified-elements'     : false,
			'universal-selector'         : false,
			'fallback-colors'            : false,
		},
		src: '<%= files.css %>'
	},
};