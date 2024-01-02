<!--<template>-->
<!--    <div v-if="Object.keys(data).length > 0">-->
<!--        <pie-chart :data="data" :options="options"></pie-chart>-->
<!--    </div>-->
<!--    <div v-else>-->
<!--        <p>Loading...</p>-->
<!--    </div>-->
<!--</template>-->

<!--<script>-->
<!--import { Pie } from 'vue-chartjs';-->

<!--export default {-->
<!--    extends: Pie,-->
<!--    props: {-->
<!--        data: {-->
<!--            type: Object,-->
<!--            required: true,-->
<!--        },-->
<!--        options: {-->
<!--            type: Object,-->
<!--            default: () => ({}),-->
<!--        },-->
<!--    },-->
<!--    mounted() {-->
<!--        if (Object.keys(this.data).length > 0) {-->
<!--            this.renderChart(this.data, this.options);-->
<!--        }-->
<!--    },-->
<!--};-->
<!--</script>-->

<template>
    <div class="container">
        <Bar v-if="loaded" :data="chartData" />
    </div>
</template>

<script>
import { Bar } from 'vue-chartjs'
import { Chart as ChartJS, Title, Tooltip, Legend, BarElement, CategoryScale, LinearScale } from 'chart.js'

ChartJS.register(Title, Tooltip, Legend, BarElement, CategoryScale, LinearScale)

export default {
    name: 'BarChart',
    components: {Bar},
    data: () => ({
        loaded: false,
        chartData: null
    }),
    async mounted() {
        this.loaded = false

        try {
            const {userlist} = await fetch('http://127.0.0.1:5000/api/v1/transactions/chart?name=Kimbek&type=Kredit')
            this.chartdata = userlist

            this.loaded = true
        } catch (e) {
            console.error(e)
        }
    }
}
</script>