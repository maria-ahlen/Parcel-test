<template> 
    <div>
        <button @click="amount++"> Click me </button>
        <h3>The button has been clicked {{amount}} times.</h3>
    </div>
</template>

<script>
export default {
    data: () => ({
        amount: 0
    })
}
</script>

<style> 
    button {
        border-radius: 10px;
        padding: 2em;
    }
</style>