<script>
  import twoTimes from './assets/Snapchat-7137920.jpg'
  import svelteLogo from './assets/svelte.svg'
  import viteLogo from '/vite.svg'
  import Counter from './lib/Counter.svelte'
</script>

<main>
  <h1>hey jasper how many times have you set up this website</h1>
  
  <div>
    <img src={twoTimes} class="two" alt="two times dammit" />
  </div>
</main>

<style>
  .two {
    height: 50vh;
    padding: 1.5em;
    will-change: filter;
    transition: filter 300ms;
  }
</style>
