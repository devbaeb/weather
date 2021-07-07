<script>
    import Search from '../Search.svelte';
import CToAdd from './CitiesToAdd.svelte'

    export let func;

    let init = (el) => {
        el.focus()
    }
    let search;
</script>

<div class = "container">
    <input use:init type = "search" id = "input" bind:value={search}/>
    <button on:click={func} class = "crossButton"><img src = "../cross.svg" alt = "x"/></button>
    <button class = "cancelButton">Cancel</button>
</div>
<div class = "citiesContainer">
    {#if search == "K"}
        <CToAdd name = "Kazan" location = "Tatarstan, Russia" />
    {/if}
    {#if search == "Z"}
        <CToAdd name = "Zalupinsk2" location = "unknown" />
    {/if}
    {#if search == "n"}
        <CToAdd name = "no ideas" location = "my brain" />
    {/if}
</div>

<style>
    .container{
        margin-top: 1rem;
        display: flex;
        justify-content: center;
    }
    .container input{
        width: 70%;
        border-top-left-radius: 30px;
        border-bottom-left-radius: 30px;
        border: none;
        outline: none;
        margin-left: 0.5rem;
    }
    .crossButton{
        border-top-right-radius: 30px;
        border-bottom-right-radius: 30px;
        background: white;
        border: none;
        margin-left: -0.5rem;
    }
    .crossButton img{
        margin: 0.5rem;
    }
    .cancelButton{
        background: transparent;
        color: white;
        border: none;
        font-weight: 500;
        font-size: 1.2rem;
    }
    .citiesContainer{
        margin-top: 2rem;
    }
</style>