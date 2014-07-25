module.exports = {
	options: {
		config : '.grunt/.scss-lint.yml',
		compact: true,
	},

	dist: {
		src: [
			'<%= paths.original.sass %>/**/*.scss',
		],
	}
};
