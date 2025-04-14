<script>
    import { _ } from "svelte-i18n";
    import Cursor from "./Cursor.svelte";
    import Writer from "./Writer.svelte";
</script>

<div class="welcome">
    <div class="prompt">
        <p class="hostname">web</p>
        <p>:</p>
        <p class="path">~</p>
        <p>$</p>
    </div>
    <Writer text={$_('home.welcome.text')}/>
    <Cursor char="_"/>
</div>

<style>
    .welcome {
        display: flex;
        flex-direction: row;
        justify-content: flex-start;
        align-content: center;
        font-size: 1rem;
        gap: 10px;
    }
    p {
        margin: 0;
    }
    .prompt {
        display: flex;
        flex-direction: row;
        align-items: flex-start;
        justify-content: center;
    }

    .hostname {
        color: greenyellow;
    }
    .path {
        color: lightskyblue;
    }
</style>