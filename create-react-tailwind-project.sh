#!/bin/bash

# Create Vite project with React and JavaScript
npm create vite@latest $1 -- --template react

# Change directory to the project folder
cd $1

# Install Tailwind CSS and its dependencies
npm install -D tailwindcss postcss autoprefixer
npx tailwindcss init -p

# Configure Tailwind CSS in tailwind.config.js
echo "/** @type {import('tailwindcss').Config} */" > tailwind.config.js
echo "export default {" >> tailwind.config.js
echo "  content: [" >> tailwind.config.js
echo "    \"./index.html\"," >> tailwind.config.js
echo "    \"./src/**/*.{js,ts,jsx,tsx}\"," >> tailwind.config.js
echo "  ]," >> tailwind.config.js
echo "  theme: {" >> tailwind.config.js
echo "    extend: {}," >> tailwind.config.js
echo "  }," >> tailwind.config.js
echo "  plugins: []," >> tailwind.config.js
echo "}" >> tailwind.config.js

# Clear and add Tailwind to your index.css
echo "" > ./src/index.css
echo '@tailwind base;' >> ./src/index.css
echo '@tailwind components;' >> ./src/index.css
echo '@tailwind utilities;' >> ./src/index.css

# Customize App.jsx
echo "const App = () => {" > ./src/App.jsx
echo "  return <h1>h</h1>;" >> ./src/App.jsx
echo "};" >> ./src/App.jsx
echo "" >> ./src/App.jsx
echo "export default App;" >> ./src/App.jsx

# Clear the App.css file
echo "" > ./src/App.css

# Remove everything from the assets folder
rm -rf ./src/assets/*

echo "Project setup complete with custom App.jsx, cleaned up files, and Tailwind CSS configured!"
