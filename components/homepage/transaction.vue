<script setup>
const { data: responseData } = await useFetch('http://127.0.0.1:5000/api/v1/transactions').catch((error) => error.data)
const transactions = responseData.value.transactions
</script>

<template>
    <div class="mx-96 p-16 rounded">
        <table class="w-full border-collapse border-[#0aad87] border">
            <thead>
            <tr class="bg-[#0aad87] text-white">
                <th class="py-2 px-4">ID</th>
                <th class="py-2 px-4">Category</th>
                <th class="py-2 px-4">Amount</th>
                <th class="py-2 px-4">Created Date</th>
                <th class="py-2 px-4">Type</th>
            </tr>
            </thead>
            <tbody>
            <tr v-for="trx in transactions" :key="trx.id" class="border-gray-500">
                <td class="py-2 px-4">{{ trx.id }}</td>
                <td class="py-2 px-4">{{ trx.category }}</td>
                <td class="py-2 px-4">{{ trx.amount }}</td>
                <td class="py-2 px-4">{{ trx.createDate }}</td>
                <td class="py-2 px-4">{{ trx.type }}</td>
            </tr>
            </tbody>
        </table>
    </div>
</template>
