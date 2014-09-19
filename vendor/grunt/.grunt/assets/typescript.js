module.exports = {
	options: {
		target       : 'es5',
		sourceMap    : true,
		declaration  : false,
		comments     : true,
		indentStep   : 2,
		useTabIndent : true,
		basePath     : '<%= paths.original.ts %>'
	},

	dest: {
		src    : '<%= files.ts %>',
		dest   : '<%= paths.original.js %>',
	}
};