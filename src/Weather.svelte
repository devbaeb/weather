<script>
    import TitleScreen from './parts/TitleScreen.svelte'
    import Main from './parts/Main.svelte'
    import Search from './parts/Search.svelte'
</script>

<Search />

<style>
    @import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;500&display=swap');
    :global(body){
        --bgColor: #4D29B4;
        background-image: url("../city.png");
        background: var(--bgColor);
        font-family: 'Inter', sans-serif;
        color: white;
        font-weight: 400;
        overflow-x: hidden;
    }
</style>