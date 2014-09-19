module.exports = {
	options: {
		livereload : true,
		interrupt  : true,
	},

	grunt: {
		files: ['Gruntfile.js', '<%= grunt %>/**/*'],
		tasks: 'default',
	},
	img: {
		files: '<%= paths.original.img %>/**/*',
		tasks: 'copy',
	},
	js: {
		files: ['<%= paths.original.ts %>/**/*', '<%= paths.original.templates %>/**/*'],
		tasks: 'js',
	},
	css: {
		files: '<%= paths.original.sass %>/**/*',
		tasks: 'css',
	},
};