module.exports = {
	front: [
		'node_modules/grunt-newer/.cache',
		'<%= builds %>',
		'<%= paths.original.js %>',
	],
	local: [
		'<%= paths.original.fonts %>',
		'<%= paths.original.css %>',
	],
};

