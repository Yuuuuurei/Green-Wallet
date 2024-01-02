<template>
  <div>
    <navbar></navbar>
    <homepage-content></homepage-content>
    <homepageFooter></homepageFooter>
  </div>

</template>

<script>
import navbar from "../components/homepage/navbar";
import homepageContent from "../components/homepage/content";
import homepageFooter from "../components/homepage/footer"
export default {
  name: "index",
  components: {
                navbar,
                homepageContent,
                homepageFooter
              }
}
</script>
