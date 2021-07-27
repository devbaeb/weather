<script>
    import { fly, fade } from 'svelte/transition';

    import Cities from './Cities.svelte';
    import Navbar from './Navbar.svelte';
    import FlipSide from './FlipSide.svelte'

    let toggle = false;
    let searchHandler = () => {
        if (!toggle){
            toggle = true;
        }else{
            toggle = false;
        };
    };
</script>

{#if toggle == false}
    <div class = "citiesContainer" transition:fly = "{{y: -200, duration: 1000}}">
        <Navbar />
        <div class = "container">
            <input on:click = {searchHandler}>
            <button><img alt = "search" src = "./search.svg" /></button>
        </div>
        <Cities margin = {"2rem"} name = "Rostov-on-Don" weather = "Mainly cloudy" temp = 12 />
        <Cities margin = {"1rem"} name = "Zalupinsk" weather = "Rainy" temp = -10/>
    </div>
{/if}

{#if toggle == true}
    <div class = "flipContainer" in:fly = "{{y: 10, duration: 1000}}">
        <FlipSide func = {searchHandler} />
    </div>
{/if}

<style>
    .citiesContainer{
        all:inherit;
        position: absolute;
    }
    .container{
        display: flex;
        justify-content: center;
        margin-top: 1.5rem;
    }
    .container input{
        width: 70%;
        border-top-left-radius: 30px;
        border-bottom-left-radius: 30px;
        border: none;
        outline: none;
        margin-left: 0.5rem;
    }
    .container button{
        border-top-right-radius: 30px;
        border-bottom-right-radius: 30px;
        background: white;
        border: none;
        margin-left: -0.5rem;
    }
</style>