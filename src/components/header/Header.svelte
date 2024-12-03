<script>
    import { _ } from "svelte-i18n";
    import MenuButton from "./MenuButton.svelte";
</script>

<div class="header">
    <div class="headline">
        <h1 class="tag">&lt;h1&gt;</h1>
        <h1>{$_('header.text')}</h1>
        <h1 class="tag">&lt;h1/&gt;</h1>
    </div>
    <div>
        <MenuButton text={$_('header.menu.about')}/>
    </div>
</div>

<style>
    .header {
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 2rem 4rem 2rem 4rem;
        font-size: 1rem;
    }
    .headline {
        display: flex;
        flex-direction: row;
        align-items: center;
        justify-content: space-between;
        gap: 2rem;
        font-weight: bold;
    }
    .tag {
        font-weight: normal;
    }
</style>