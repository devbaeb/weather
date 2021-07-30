<script>
    export let name
    export let location
    export let funcForAddingCity
</script>

<div class = "container">
    <div class = "textWrapper">
        <h3>{name}</h3>
        <p>{location}</p>
    </div>
    <button on:mousedown="{funcForAddingCity}"><img alt = "+" src = "../plus.svg" /></button>
</div>

<style>
    .container{
        margin-top: 0rem;
        display: flex;
        justify-content: space-between;
        width: 90%;
        margin-left: 5%;
        vertical-align: middle;
        align-items: flex-start;
        height: 5rem;
    }
    .textWrapper p{
        margin-top: -1rem;
    }
    .textWrapper h3{
        font-weight: 500;
    }
    .textWrapper p{
        font-weight: 300;
    }
    button{
        height: initial;
        margin-top: 1.5rem;
        background: transparent;
        border: none;
        width: 3.5rem;
        height: 3.5rem;
    }
</style>