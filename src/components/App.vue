<template> 
    <div>
        <button @click="amount++"> Click me </button>
        The button has been clicked {{amount}} times.
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