<script setup>
  const { data: responseData } = await useFetch('http://127.0.0.1:5000/api/v1/wallets').catch((error) => error.data)
  const wallets = responseData.value.wallets
  console.log(wallets)
</script>

<template>
    <div class="mx-96 p-16 rounded">
        <table class="w-full border-collapse border-green-500 border">
            <thead>
            <tr class="bg-[#0aad87] text-white">
                <th class="py-2 px-4">Name</th>
                <th class="py-2 px-4">Amount</th>
            </tr>
            </thead>
            <tbody>
            <tr v-for="wallet in wallets" :key="wallet.id" class="border-gray-500">
                <td class="py-2 px-4">{{ wallet.name }}</td>
                <td class="py-2 px-4">{{ wallet.amount }}</td>
            </tr>
            </tbody>
        </table>
    </div>
</template>
