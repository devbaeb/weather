<script>
    import Search from '../Search.svelte';
import CToAdd from './CitiesToAdd.svelte'

    export let func;

    let init = (el) => {
        el.focus()
    }

    let city1 = ["K", "a", "z", "a", "n"];
    let city2 = ["Z", "a", "l", "u", "p", "i", "n", "s", "k", "2"];
    let city3 = ["K", "r", "o", "t"];
    let search;
    let searchCity;
    $: searchCity = (city) => {
        for(let i = 0; i < city.length; i++){
            let options = city.slice([-city.length], [i+1])
            let optionsStr = options.join("")
            if (search == optionsStr){
                return true
            }
        }
    }
</script>

<div class = "container">
    <input use:init type = "search" id = "input" bind:value={search}/>
    <button on:click={func} class = "crossButton"><img src = "../cross.svg" alt = "x"/></button>
    <button class = "cancelButton">Cancel</button>
</div>
<div class = "citiesContainer">
    {#if searchCity(city1) == true}
        <CToAdd name = "Kazan" location = "Tatarstan, Russia" />
    {/if}
    {#if searchCity(city2) == true}
        <CToAdd name = "Zalupinsk2" location = "unknown" />
    {/if}
    {#if searchCity(city3) == true}
        <CToAdd name = "Krot" location = "tvoi ogorod" />
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