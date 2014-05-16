module.exports = {
	options: {
		target      : 'es5',
		sourceMap   : false,
		declaration : false,
		comments    : false,
		basePath   : '<%= paths.original.ts %>'
	},

	dest: {
		src    : ['<%= paths.original.ts %>/**/*.ts'],
		dest   : '<%= paths.original.js %>',
	}
};