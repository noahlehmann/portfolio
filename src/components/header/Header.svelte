<script>
    import { _ } from "svelte-i18n";
</script>

<div class="header">
    <h1>{$_('welcome')}</h1>
</div>

<style>
    .header {
        display: flex;
        justify-content: space-between;
        align-items: flex-start;
        padding: 2rem 4rem 2rem 4rem;
    }
</style>