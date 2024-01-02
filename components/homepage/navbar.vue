<template>
  <div class="flex flex-wrap p-0.5 shadow">
    <div class="flex w-2/5 justify-center">
        <NuxtLink to="/">
          <img class="h-32" src="@/assets/img/logo.png">
        </NuxtLink>
    </div>
    <div class="flex w-7/12 items-center space-x-8">
      <div >
        <NuxtLink class="flex font-bold" to="/wallet">
          CREATE WALLET
        </NuxtLink>
      </div>
      <div >
        <NuxtLink class="flex font-bold" to="/transaction">
          TRANSACTION
        </NuxtLink>
      </div>
      <div>
        <NuxtLink class="flex font-bold" to="/statistics">
          STATISTICS
        </NuxtLink>
      </div>
    </div>
  </div>
</template>

<script>
export default {

}
</script>
