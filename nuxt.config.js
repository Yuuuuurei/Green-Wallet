// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({

    tailwindcss: {
        cssPath: '~/assets/css/input.css'
    },
    ssr:true,
    components:true,
    modules: [
        '@nuxtjs/tailwindcss'
    ],
    // runtimeConfig: {
    //     app: {
    //         baseURL: "http://127.0.0.1:5000/api/v1"
    //     }
    // },

})
