var TF_Address_Lookup=function(){function e(){this.controller=null,this.initEvents()}var t=e.prototype;return t.initEvents=function(){var t=this;document.addEventListener("click",function(e){this.onSelectAutocompleteItem(e),this.onHideAutocompleteResults(e)}.bind(this)),document.addEventListener("focusout",function(e){this.onFocusOut(e)}.bind(this)),document.addEventListener("keyup",this.debounce(function(e){t.onAddressAutocomplete(e)},500))},t.onFocusOut=function(e){var t=e.target.closest(".tf-address-lookup-field-address");t&&""===t.value&&(this.controller&&this.controller.abort(),t.previousElementSibling.value="")},t.debounce=function(o,n){var s;return function(){var e=this,t=arguments;clearTimeout(s),s=setTimeout(function(){return o.apply(e,t)},n)}},t.onAddressAutocomplete=function(e){var t=e.target.closest('.tf-address-lookup-field-address[data-autocomplete="true"]');if(t){this.controller&&this.controller.abort(),this.controller=new AbortController;var o=this.controller.signal,n=t.nextElementSibling,s=this,i=t.value.split(" ").map(function(e){return encodeURIComponent(e)}).join("+").trim();if(null!=i)if(""!==i)fetch("https://nominatim.openstreetmap.org/search?q="+i+"&addressdetails=1&format=json",{signal:o}).then(function(e){return e.json()}).then(function(e){s.showResults(e,n)});else this.hideResults(n);else this.hideResults(n)}},t.showResults=function(e,o){o.innerHTML="",e.length?(e.forEach(function(e){var t='<div class="tf-address-lookup-field-autocomplete-item" data-coordinates="{coordinates}">{label}</div>';t=(t=t.replace("{coordinates}",e.lat+","+e.lon)).replace("{label}",e.display_name),o.innerHTML+=t}),o.classList.add("is-visible")):this.hideResults(o)},t.hideResults=function(e){e.classList.remove("is-visible")},t.onSelectAutocompleteItem=function(e){var t=e.target.closest(".tf-address-lookup-field-autocomplete-item");if(t){t.parentElement.previousElementSibling.value=t.innerHTML,t.parentElement.previousElementSibling.previousElementSibling.value=t.dataset.coordinates;var o=t.dataset.coordinates.split(","),n=o[0].trim(),s=o[1].trim(),i=new CustomEvent("onTFAddressLookupSelectedItem",{detail:{item:t,lat:n,lng:s,address:t.innerHTML}});document.dispatchEvent(i),this.hideAutocompleteResult(t.parentElement)}},t.onHideAutocompleteResults=function(e){var t=this;e.target.closest(".tf-address-lookup-field-autocomplete-results")||document.querySelectorAll(".tf-address-lookup-field-autocomplete-results.is-visible").forEach(function(e){t.hideAutocompleteResult(e)})},t.hideAutocompleteResult=function(e){e.classList.remove("is-visible"),e.innerHTML=""},e}();document.addEventListener("DOMContentLoaded",function(){new TF_Address_Lookup});
