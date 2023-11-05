const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Proxima Nova Condensed', ...defaultTheme.fontFamily.sans],
        right: ['Righteous', 'sans-serif']
      },
      colors: {
        blue: '#3778c2',
        green: '#5fb523',
        grey: '#434b54',
        grey_home: '#e4e4e7' 
      }
    },  
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
  ]
}
