module.exports = {
	dist: {
		expand : true,
		src    : ['<%= paths.original.svg %>/**/*.svg', '<%= paths.original.img %>/**/*.svg'],
		dest   : '<%= paths.original.svg %>',
		ext    : '.svg'
	}
};