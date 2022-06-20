<div id="app">
	<p v-for="link in links">{{ link.url }}</p>
</div>
<script>
new Vue({
  el: '#app',
  data() {
	return {
		links: window.arden.links
	}
  }
});
</script>