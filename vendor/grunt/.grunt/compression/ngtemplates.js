module.exports = {
	options: {
		htmlmin : {
			collapseBooleanAttributes:      true,
			collapseWhitespace:             true,
			removeAttributeQuotes:          true,
			removeComments:                 true,
			removeEmptyAttributes:          true,
			removeRedundantAttributes:      true,
			removeScriptTypeAttributes:     true,
			removeStyleLinkTypeAttributes:  true
		},
		url: function(url) {
			return url.replace('public/', '/');
		}
	},

	weholi: {
		src  : '<%= paths.original.templates %>/**/*.html',
		dest : '<%= paths.compiled.js %>/templates.js',
	},
};