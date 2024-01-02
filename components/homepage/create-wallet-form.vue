<template>
    <div class="max-w-md mx-auto mt-10 p-6 bg-gray-100 rounded shadow-md">
        <form @submit.prevent="submitForm">
            <div class="mb-4">
                <label class="block text-gray-700 text-sm font-bold mb-2" for="name">Name</label>
                <input class="w-full px-3 py-2 border rounded focus:outline-none focus:border-[#0aad87]" type="text" v-model="formData.name" id="name" placeholder="eg. John Smith" />
            </div>

            <div class="mb-4">
                <label class="block text-gray-700 text-sm font-bold mb-2" for="amount">Wallet Amount</label>
                <input class="w-full px-3 py-2 border rounded focus:outline-none focus:border-[#0aad87]" type="number" v-model="formData.amount" id="amount" placeholder="50000" />
            </div>

            <div>
                <button class="bg-[#0aad87] text-white px-4 py-2 rounded hover:bg-[#0aad87]" type="submit">Submit Form</button>
            </div>
        </form>
    </div>
</template>

<script setup>
import { ref } from 'vue'

const formData = ref({
    name: '',
    amount: '',
})

const submitForm = async () => {
    const { data: responseData } = await useFetch('http://127.0.0.1:5000/api/v1/wallets', {
        method: 'post',
        body: {
            name: formData.value.name,
            amount: formData.value.amount,
        }
    })

    console.log(responseData.value)
}
</script>