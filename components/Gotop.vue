<template>
    <div>
        <div class="goTop">
            <div class="animate__animated animate__slideOutUp">
                <a href="#"><img src="..//assets/picture/gotop.png" alt=""></a>
            </div>
        </div>
    </div>
</template>
<style scoped>
.goTop{
    position: relative;
}
.goTop>div{
    position: fixed;
    right: 50px;
    bottom: 100px;
    z-index: 8000;
    cursor: pointer;
}
.goTop img{
    width: 40px;
    height: 40px;
}
.animate__animated{
    animation-iteration-count: infinite;
    animation-duration:1.5s;
}
</style>