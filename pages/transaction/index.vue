<template>
    <navbar></navbar>
    <create-transaction-form></create-transaction-form>
    <transaction></transaction>
    <homepage-footer></homepage-footer>
</template>

<script>
import navbar from "../../components/homepage/navbar";
import homepageFooter from "../../components/homepage/footer"
import transaction from "~/components/homepage/transaction";
import CreateTransactionForm from "~/components/homepage/create-transaction-form.vue";
export default {
    components: {
        CreateTransactionForm,
        transaction,
        navbar,
        homepageFooter
    }
}
</script>
