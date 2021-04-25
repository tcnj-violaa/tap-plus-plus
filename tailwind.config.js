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
    extend: {},
  },
  variants: {
    extend: {},
  },
  plugins: [
      require('@tailwindcss/custom-forms'),
  ],
  corePlugins: {
    preflight: true,
  }
}
