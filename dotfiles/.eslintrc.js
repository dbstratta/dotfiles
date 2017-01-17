module.exports = {
  "root": true,
  "env": {
    "browser": true,
    "commonjs": true,
    "es6": true,
  },
  "extends": "eslint:recommended",
  "parserOptions": {
    "sourceType": "module",
    "ecmaFeatures": {
      "experimentalObjectRestSpread": true,
    },
  },
  "rules": {
    "indent": ["error", 2, { "SwitchCase": 1 }],
    "linebreak-style": ["error", "unix"],
    "quotes": ["error", "single"],
    "semi": ["error", "always"],
    "comma-dangle": ["error", "always-multiline"],
    "eol-last": ["error", "always"],
    "max-len": ["error", {
      "code": 80,
      "ignoreStrings": true,
      "ignoreTemplateLiterals": true,
      "ignoreRegExpLiterals": true,
    }],
    "no-trailing-spaces": "error",
    "space-before-function-paren": ["error", "always"],
    "spaced-comment": ["error", "always"],
    "func-call-spacing": ["error", "never"],
    "arrow-parens": ["error", "always"],
  },
};
