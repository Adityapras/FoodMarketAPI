<template>
    <div class="col-lg-12">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <!-- <li class="breadcrumb-item">
                    <a href="#"> test</a>
                </li>
                <li class="breadcrumb-item"><a href="#">Library</a></li>
                <li aria-current="page" class="breadcrumb-item active">
                    Data
                </li> -->
                <li class="breadcrumb-item" v-for="list in listBreadCrumb">
                    {{list}}
                </li>
            </ol>
        </nav>
    </div>
</template>
<script>
export default {
    props : { listBreadCrumb :  Array },
};
</script>
