<script>
    import { fly, fade } from 'svelte/transition'

    import Cities from './Cities.svelte'
    import Navbar from './Navbar.svelte'
    import FlipSide from './FlipSide.svelte'
    import config from '../config.js'

    // logic for animation
    let toggle = false
    let searchHandler = () => {
        if (!toggle){
            toggle = true
        }else{
            toggle = false
        }
    }

    // api fetch
    const key = config.weatherApiKey
    async function fetchApi(city){
        try {
            const url = `https://api.openweathermap.org/data/2.5/weather?q=${city}&appid=${key}&units=metric`
            const response = await fetch(url)
            const cityData = await response.json()
            return cityData
        }catch (error){
            console.error('Error :( ', error)
        }
    }

    let searchRequest
    let newCity = {}
    async function enterHandler(event){
        if (event.keyCode === 13){
            const jsonObject = await fetchApi(searchRequest)
            console.log(jsonObject)
            newCity = {
                name: jsonObject.name,
                location: jsonObject.sys.country,
                temp: jsonObject.main.temp,
                weather: jsonObject.weather[0].description,
            }
        }
    }

    // logic for the city managmnt tab
    let cities = []
    const funcForAddingCity = () => {
        cities.unshift(newCity)
    }
</script>

{#if toggle == false}
    <div class = "citiesContainer" transition:fly = "{{y: -200, duration: 1000}}">
        <Navbar />
        <div class = "container">
            <input on:click = {searchHandler}>
            <button><img alt = "search" src = "./search.svg" /></button>
        </div>
        <div class = "container2">
            {#each cities as city}
                <Cities name = {city.name} weather = {city.weather} temp = {city.temp} />
            {/each}
        </div>
    </div>
{/if}

{#if toggle == true}
    <div class = "flipContainer" in:fly = "{{y: 10, duration: 1000}}">
        <FlipSide func = {searchHandler} name = {newCity.name} location = {newCity.location} {enterHandler} bind:search = {searchRequest} {funcForAddingCity} />
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
    .container2{
        margin-top: 2rem;
    }
</style>