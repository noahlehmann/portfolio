<script>
    import {onMount} from "svelte";

    export let text = "";
    export let speed = 100; // in ms

    let displayText = "";
    let index = 0;

    function type() {
        if (index < text.length) {
            displayText += text.charAt(index);
            index++;
            setTimeout(type, speed);
        } else {
            setTimeout(() => {
                displayText = "";
                index = 0;
                type()
            }, 10000);
        }
    }

    // Start typing when the component is mounted
    onMount(() => {
        setTimeout(() => {
            type()
        }, 3000)
    });
</script>

<p class="writer">{displayText}</p>

<style>
    p {
        margin: 0;
    }

    .writer {
        display: inline-block;
        white-space: nowrap;
        overflow: hidden;
        animation: blink-caret 0.75s step-end infinite;
    }

    @keyframes blink-caret {
        from, to {
            border-color: transparent;
        }
        50% {
            border-color: black;
        }
    }
</style>