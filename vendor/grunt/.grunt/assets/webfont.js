var path = require('path');

module.exports = {
	dist: {
		options: {
			hashes          : false,
			engine          : 'node',
			stylesheet      : 'scss',
			htmlDemo        : true,
			relativeFontPath: '../fonts',
			template        : '.grunt/webfont-template.css',
			htmlDemoTemplate: '.grunt/webfont-template.html',
		},

		src    : ['<%= paths.original.svg %>/**/*.svg'],
		dest   : '<%= paths.original.fonts %>',
		destCss: '<%= paths.original.sass %>/font',
	}
};
