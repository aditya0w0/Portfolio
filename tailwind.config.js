/** @type {import('tailwindcss').Config} */
module.exports = {
  content:[
    "./*.html", "./src/**/*.{html,js}"
  ],
  theme: {
    container: {
      center: true,
      padding: "16px",
    },
    extend: {
      fontFamily:{
        inter: ["Inter", "sans-serif"],
        poppins: ["Poppins", "sans-serif"],
        clash: ['Clash Display', 'sans-serif'],
      },
      colors: {
        elysia:{
          light: '#FFD6E8',
          DEFAULT: '#F2A1C1', // Pink pastel
          accent: '#B6D6F2', // Biru pastel
        },
        yaeMiko: {
          light: '#E572A5', // Magenta khas
          DEFAULT: '#B084CC', // Ungu pastel
          accent: '#FFEEC0', // Emas lembut
        },
        dark: "#0f172a",
      },
      screens: {
        "2xl": "1320px",
      },
    },
  },
  plugins: [],
};
