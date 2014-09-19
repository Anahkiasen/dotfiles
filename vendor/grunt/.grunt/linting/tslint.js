module.exports = {
	options: {
		configuration: {
			"rules": {
				"class-name"                 : true,
				"curly"                      : true,
				"forin"                      : true,
				"indent"                     : [true, 4],
				"label-position"             : true,
				"label-undefined"            : true,
				"max-line-length"            : [true, 140],
				"no-arg"                     : true,
				"no-bitwise"                 : true,
				"no-console"                 : [true, "debug", "info", "time", "timeEnd", "trace"],
				"no-construct"               : true,
				"no-debugger"                : true,
				"no-duplicate-key"           : true,
				"no-duplicate-variable"      : true,
				"no-eval"                    : true,
				"no-string-literal"          : true,
				"no-switch-case-fall-through": true,
				"no-trailing-whitespace"     : true,
				"no-unused-expression"       : true,
				"no-unused-variable"         : false,
				"no-unreachable"             : true,
				"no-use-before-declare"      : true,
				"one-line"                   : [true, "check-open-brace", "check-catch", "check-else", "check-whitespace"],
				"quotemark"                  : [true, "single"],
				"radix"                      : true,
				"semicolon"                  : true,
				"triple-equals"              : [true, "allow-null-check"],
				"variable-name"              : false,
				"whitespace"                 : [true, "check-branch", "check-decl", "check-operator", "check-separator", "check-type"]
			}
		},
	},

	dist: {
		src: ['<%= files.ts %>', '!<%= paths.original.ts %>/_definitions/**/*.d.ts'],
	}
};
