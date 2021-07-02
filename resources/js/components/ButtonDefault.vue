<template>
    <button @click="$emit(methodName)" v-bind:class="btnColor">
        {{ btnWord }}
    </button>
</template>
<script>
export default {
    props: {
        postTitle: String,
        counter: Number,
        methodName: String,
        btnColor: String,
        btnWord: String
    }
};
</script>
