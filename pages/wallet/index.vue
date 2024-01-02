<template>
  <navbar></navbar>
  <create-wallet-form></create-wallet-form>
  <wallet></wallet>
  <homepage-footer></homepage-footer>
</template>

<script>
import navbar from "../../components/homepage/navbar";
import homepageFooter from "../../components/homepage/footer"
import wallet from "~/components/homepage/wallet.vue"
import CreateWalletForm from "~/components/homepage/create-wallet-form.vue"

export default {
  components: {
    CreateWalletForm,
    wallet,
    navbar,
    homepageFooter
  }
}
</script>
