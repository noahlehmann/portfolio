<script>
    export let text;
</script>

<button class="menu-button">
    {text}
</button>

<style>
    button {
        all: unset;
        cursor: pointer;
    }
    p {
        margin: 0;
    }
    .menu-button {
        border: 1px solid var(--color);
        border-radius: 0.5rem;
        font-size: 1.5rem;
        padding: 0.5rem;
    }
</style>