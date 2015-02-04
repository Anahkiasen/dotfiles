module.exports = {
	options: {
		server: 'http://localhost:8003',
		src: '<%= paths.docs.api %>/index.apib',
		method: ['GET', 'PUT', 'POST', 'PATCH'],
		header: 'Accept: application/json'
	},

	dist: {}
};
