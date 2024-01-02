<!--
<script setup>
    try {
        const { data: responseData } = await useFetch('http://127.0.0.1:5000/api/v1/transactions/chart?name=Kimbek&type=Kredit').catch((error) => error.data)
        const data = responseData.value
        chartData: data
    } catch (error) {
        console.error('Error fetching pie chart data:', error);
        chartData: {}
    }

</script>
-->

<template>
    <navbar></navbar>
<!--    <div class="container mx-auto mt-8">-->
<!--        <PieChart :data="chartData" :options="chartOptions" />-->
<!--    </div>-->
    <pie_chart></pie_chart>
    <statistics></statistics>
    <homepage-footer></homepage-footer>
</template>

<script>
import navbar from "../../components/homepage/navbar";
import homepageFooter from "../../components/homepage/footer"
import statistics from "~/components/homepage/statistics.vue";
import Pie_chart from "~/components/homepage/pie_chart.vue";
export default {
    components: {
        Pie_chart,
        statistics,
        navbar,
        homepageFooter
    },
/*    data() {
        return {
            chartData: {},
            chartOptions: {
                responsive: true,
                maintainAspectRatio: false,
            },
        };
    },*/
};
</script>
