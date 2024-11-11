<script>
  import { _ } from "svelte-i18n";
  import Header from "./components/header/Header.svelte";
</script>

<main>
  <Header />
  <p>{$_('description')}</p>
</main>
