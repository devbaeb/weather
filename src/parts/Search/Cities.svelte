<script>
    export let margin;
    export let name;
    export let weather;
    export let temp;
</script>

<div class = "container" style = "margin-top: {margin}">
    <div class = "textWrapper">
        <h3>{name}</h3>
        <p>{weather}</p>
    </div>
    <div class = "tempWrapper">
        <h3>{temp}</h3>
        <img alt = '°' src = "../degree.svg" />
    </div>
</div>

<style>
    .container{
        --textColor: #4D29B4;
        background: white;
        color: var(--textColor);
        display: flex;
        justify-content: space-between;
        width: 90%;
        margin-left: 5%;
        border-radius: 15px;
        height: 10%;
    }
    .container div{
        margin-left: 1rem;
        margin-right: 1rem;
    }
    .textWrapper h3{
        margin-bottom: -0.5rem;
    }
    .tempWrapper{
        display: flex;
        margin-top: -2rem;
    }
    .tempWrapper h3{
        font-size: 3rem;
    }
    .tempWrapper img{
        margin-top: -0.7rem;
        margin-left: -0.2rem;
    }
</style>