<template>
    <div class="card m-2" style="width: 25rem;">
        <img :src="image_src" class="card-img-top">
        <div class="card-body">
            <h5 class="card-title">{{ title }}</h5>
            <p class="card-text">{{ text }}</p>
            <a :href="link" class="btn" style="background-color: rgba(0, 0, 256, 0.4); color: #fff;">View</a>
        </div>
    </div>
</template>

<script>
    export default {
        props: {
            image_src: String,
            title: String,
            text: String,
            link: String
        }
    }
</script>

<style scoped>
    div {
        font-family: 'Playfair Display', serif;
        color: #000;
    }

    .card-img-top {
        height: 150px;
        object-fit: cover;
        object-position: top;
    }
</style>