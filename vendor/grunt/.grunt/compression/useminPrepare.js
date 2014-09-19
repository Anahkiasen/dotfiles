module.exports = {
	options: {
		dest: 'public',
		root: 'public',
	},

	dist: {
		src: '<%= views %>/**/*.twig',
	},
};
