import { defineConfig } from 'vite'
import { svelte } from '@sveltejs/vite-plugin-svelte'

// https://vite.dev/config/
export default defineConfig({
  plugins: [svelte()],
  server: {
    port: 3000,     // was 80
    host: true,
    allowedHosts: ['jasperrutherford.com'],
  }  
})

