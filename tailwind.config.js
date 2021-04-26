const defaultTheme = require('tailwindcss/defaultTheme');

module.exports = {
  mode: 'jit',
  prefix: 'tw-',
  purge: [
      './resources/**/*.blade.php',
      './resources/**/*.js',
      './resources/**/*.vue',
  ],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
      fontFamily: {
        sans: ['Lato', ...defaultTheme.fontFamily.sans],
        serif: ['EB Garamond', ...defaultTheme.fontFamily.serif],
      },
    },
  },
  variants: {},
  plugins: [
      require('@tailwindcss/custom-forms'),
  ],
  corePlugins: {
    preflight: true,
  }
}
