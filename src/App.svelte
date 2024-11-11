<script>
  import { _ } from "svelte-i18n";
  import Header from "./components/header/Header.svelte";
</script>

<main>
  <Header />
  <p>{$_('description')}</p>
  <p>See how its deployed:</p>
  <p>Intellij -> Github -> Actions -> Build -> Upload -> Serve -> Domain</p>
  <a href="https://github.com/noahlehmann/portfolio/actions/workflows/static.yml">
    <img alt="Deploy status badge"  src="https://github.com/noahlehmann/portfolio/actions/workflows/static.yml/badge.svg">
  </a>
</main>
