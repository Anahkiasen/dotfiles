module.exports = {
	options: {
		target       : 'es5',
		sourceMap    : true,
		declaration  : false,
		comments     : false,
		indentStep   : 2,
		useTabIndent : true,
		basePath     : '<%= paths.original.ts %>'
	},

	dest: {
		src    : ['<%= paths.original.ts %>/**/*.ts'],
		dest   : '<%= paths.original.js %>',
	}
};