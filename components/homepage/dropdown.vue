<script setup>
  const { data: responseData } = await useFetch('http://127.0.0.1:5000/api/v1/categories').catch((error) => error.data)
  const categories = responseData.value.categories
  console.log(categories)
</script>

<template>
    <select class="w-full px-3 py-2 border rounded focus:outline-none focus:border-[#0aad87]" @change="chooseData"  v-model="choosenData">
        <option value="">Pilih Kategori</option>
        <option
                v-for="(category, index) in categories"
                :value="category.category"
                :key="index"
        >
            {{ category.category }}
        </option>
    </select>
</template>

<script>
let choosenData;
export default {
    methods: {
        chooseData() {
            this.$emit('dropdown-choose', choosenData);
        },
    },
};
</script>