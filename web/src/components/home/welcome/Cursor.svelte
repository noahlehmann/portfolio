<script>
    export let char = "_";
</script>

<span class="cursor">{char}</span>

<style>
    .cursor {
        display: inline-block;
        animation: blink 1s step-end infinite;
    }

    @keyframes blink {
        from, to {
            opacity: 1;
        }
        50% {
            opacity: 0;
        }
    }
</style>