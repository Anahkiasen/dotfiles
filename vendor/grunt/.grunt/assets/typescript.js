module.exports = {
	options: {
		target       : 'es5',
		sourceMap    : true,
		declaration  : false,
		comments     : true,
		basePath     : '<%= paths.original.ts %>'
	},

	dest: {
		src    : '<%= files.ts %>',
		dest   : '<%= paths.original.js %>',
	}
};