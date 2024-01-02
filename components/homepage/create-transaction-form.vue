<template>
    <div class="max-w-md mx-auto mt-10 p-6 bg-gray-100 rounded shadow-md">
        <form @submit.prevent="submitForm">

            <div class="mb-4">
                <label class="block text-gray-700 text-sm font-bold mb-2" for="name">Name</label>
                <input class="w-full px-3 py-2 border rounded focus:outline-none focus:border-[#0aad87]" type="text" v-model="formData.name" id="name" placeholder="eg. John Smith" />
            </div>

            <div class="mb-4">
                <label class="block text-gray-700 text-sm font-bold mb-2" for="type">Choose Transaction Type:</label>
                <select class="w-full px-3 py-2 border rounded focus:outline-none focus:border-[#0aad87]" name="type" id="type" v-model="formData.type">
                    <option value="Debit">Debit</option>
                    <option value="Credit">Credit</option>
                </select>
            </div>

            <div class="mb-4">
                <label class="block text-gray-700 text-sm font-bold mb-2" for="category">Choose Category:</label>
                <dropdown @dropdown-choose="handleChildEvent"></dropdown>
            </div>

            <div class="mb-4">
                <label class="block text-gray-700 text-sm font-bold mb-2" for="amount">Transaction Amount</label>
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
import Dropdown from "~/components/homepage/dropdown.vue";

const formData = ref({
    name: '',
    type: '',
    category: '',
    amount: '',
})

const handleChildEvent = async (data) => {
    formData.value.category = data;
}

const submitForm = async () => {
    const { data: responseData } = await useFetch('http://127.0.0.1:5000/api/v1/wallets', {
        method: 'put',
        body: {
            name: formData.value.name,
            type: formData.value.type,
            category: formData.value.category,
            amount: formData.value.amount,

        }
    })

    console.log(responseData.value)
}
</script>