<script>
    import { _ } from "svelte-i18n";
    import { faGithub } from '@fortawesome/free-brands-svg-icons';
    import { FontAwesomeIcon } from '@fortawesome/svelte-fontawesome';

    let year = new Date().getFullYear();
</script>

<div class="footer">
    <a href="https://github.com/noahlehmann" class="icon-link" target="_blank">
        <FontAwesomeIcon icon={faGithub} size="2x"/>
    </a>
    <p>{$_('footer.rights')} {year} - Noah Lehmann</p>
</div>

<style>
    .footer {
        padding: 2rem 4rem 3rem 4rem;
        display: flex;
        flex-direction: row;
        justify-content: space-between;
    }

    .icon-link:visited {
        color: var(--color);
    }
</style>