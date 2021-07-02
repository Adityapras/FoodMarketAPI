<template>
    <div class="row">
        <!-- header breadcrumb  -->
        <bread-crumb :listBreadCrumb="breadCrumbList"></bread-crumb>
        <!-- content  -->
        <div class="col-lg-12">
            <section class="card">
                <header class="card-header">
                    <btn-components-default
                        :btnColor="'btn btn-primary'"
                        :btnWord="'Add New Menu'"
                        @showAlert="showAlert"
                        :methodName="'showAlert'"
                    ></btn-components-default>
                </header>
                <div class="card-body">
                     
                </div>
            </section>
        </div>

        
    </div>
</template>
<script>
import BtnComponentsDefault from "./ButtonDefault.vue";

export default {
    data() {
        return {
            breadCrumbList: ["Master", "Menu"]
        };
    },
    components: {
        "btn-components-default": BtnComponentsDefault
    },
    methods: {
        showAlert() {
              this.$router.push('/master/treeview');
            // console.log(this.$router);
        }
    }
};
</script>
