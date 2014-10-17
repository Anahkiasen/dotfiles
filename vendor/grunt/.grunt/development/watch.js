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
		files: ['<%= files.ts %>', '<%= paths.original.templates %>/**/*'],
		tasks: 'js',
	},
	css: {
		files: '<%= files.sass %>',
		tasks: 'css',
	},
};