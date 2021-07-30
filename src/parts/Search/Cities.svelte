<script>
    export let name;
    export let weather;
    export let temp;
</script>

<div class = "container">
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
        margin-top: 1rem;
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
        justify-content: end;
    }
    .tempWrapper h3{
        margin: initial;
        font-size: 3rem;
        align-self: flex-end;
    }
    .tempWrapper img{
        width: 0.6rem;
        margin-bottom: 1rem;
        overflow: visible;
    }
</style>