import { defineConfig } from 'vite'
import { svelte } from '@sveltejs/vite-plugin-svelte'

// https://vite.dev/config/
export default defineConfig({
  plugins: [svelte()],
  server: {
    port: 80,
    host: true, // allows access from other devices
    allowedHosts: ['jasperrutherford.com'],
  },
})
