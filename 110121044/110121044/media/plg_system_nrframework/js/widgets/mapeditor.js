var NR_Map_Editor=function(){function e(){this.initEvents()}var t=e.prototype;return t.initEvents=function(){var t=this,n=this;document.addEventListener("onTFMapContextMenuAddMarker",function(e){var t=e.detail.map;if(t.classList.contains("map-editor")){var r=e.detail.e.latlng,a=n.addMarker(t,r.lat,r.lng,"","",!1),i=parseInt(n.getMaxMarkers(t)),o=parseInt(t.OpenStreetMap.options.markers.length);t.OpenStreetMap.options.pro||1!==i?t.OpenStreetMap.options.pro&&i<=o&&t.OpenStreetMap.map.contextmenu&&t.OpenStreetMap.map.contextmenu.disable():t.OpenStreetMap.map.contextmenu&&t.OpenStreetMap.map.contextmenu.disable(),t.querySelector(".tf-mapeditor-add-new-marker")&&n.addMarkerToList(a,t),i===o&&t.classList.add("markers-limit-reached"),t.classList.remove("clear-is-hidden"),n.scrollToTheBottomOfTheMarkersList(t)}}),document.addEventListener("onTFMapWidgetRender",function(e){var t=e.detail.map;if(t.classList.contains("map-editor")){var r=t.OpenStreetMap;n.determineFieldValidityAndToggleValidatorField(t);var a=n.getMaxMarkers(t);(r.options.pro||!r.options.pro&&0===r.options.markers.length)&&r.map.contextmenu&&r.map.contextmenu.enable(),r.options.pro&&a<=r.options.markers.length&&r.map.contextmenu&&r.map.contextmenu.disable(),r.markers_draggable=!0,r.map.on("click",function(e){r.map.contextmenu.hide(),1===r.options.markers.length&&1===a&&n.updateMarkerByIndex(r,e.latlng.lat,e.latlng.lng)})}}),document.addEventListener("onTFMapMarkerCreate",function(t){if(t.detail.map.classList.contains("map-editor")){var r=t;t.detail.markerMap.on("dblclick",function(){var e=r.detail.markerProps.id;document.querySelector('.tf-map-markers--list--item[data-id="'+e+'"]').querySelector(".tf-map-markers--list--item--actions--edit").click()}),t.detail.markerMap.on("movestart",function(){t.detail.markerMap.closeTooltip(),t.detail.markerMap.closePopup()}),t.detail.markerMap.on("moveend",function(){var e=t.detail.markerMap.getLatLng();n.getAddressDetails(e.lat,e.lng,t.detail.map,n.onAfterGetAddressDetails.bind(n),t.detail.markerProps),t.detail.map.OpenStreetMap.options.pro&&t.detail.map.OpenStreetMap.map.contextmenu.hide()}),t.detail.map.closest(".tf-mapaddress-editor")||t.detail.markerMap.bindContextMenu({contextmenu:!0,contextmenuInheritItems:!1,contextmenuItems:[{text:window.parent.Joomla.Text._("NR_EDIT_MARKER"),index:0,callback:function(e){var t=e.relatedTarget.options.id,r=document.querySelector('.tf-map-markers--list--item[data-id="'+t+'"]');r&&r.querySelector(".tf-map-markers--list--item--actions--edit").click()}},{separator:!0,index:1},{text:window.parent.Joomla.Text._("NR_DELETE_MARKER"),index:2,callback:function(e){var t=e.relatedTarget.options.id,r=document.querySelector('.tf-map-markers--list--item[data-id="'+t+'"]');r&&r.querySelector(".tf-map-markers--list--item--actions--delete").click()}}]})}}),Joomla.Modal?(document.addEventListener("show.bs.modal",function(e){n.onBeforeShowEditMarkerModal(e)}),document.addEventListener("shown.bs.modal",function(e){n.onEditMarker(e),n.onShowAddMarkerModal(e)})):(jQuery(document).on("show.bs.modal",function(e){n.onBeforeShowEditMarkerModal(e)}),jQuery(document).on("shown.bs.modal",function(e){n.onEditMarker(e),n.onShowAddMarkerModal(e)})),document.addEventListener("click",function(e){this.onClearMap(e),this.onBeforeShowAddMarkerModal(e),this.onSaveNewMarker(e),this.onEditMarkerClick(e),this.onDeleteMarker(e),this.onSaveExistingMarker(e)}.bind(this)),document.addEventListener("onTFAddressLookupSelectedItem",function(e){this.onSelectAutocompleteItem(e)}.bind(this)),document.querySelectorAll("joomla-field-subform").forEach(function(e){e.closest(".nrf-map-widget.map-editor")||e.addEventListener("subform-row-add",function(e){t.renderOnSubform(e)})})},t.addMarkerOnMapClick=function(e){var t=e.target._container.closest(".nrf-widget.openstreetmap"),r=t.OpenStreetMap;if(0===r.options.markers.length){var a=this.addMarker(t,e.latlng.lat,e.latlng.lng,"","",!1);t.querySelector(".tf-mapeditor-add-new-marker")&&this.addMarkerToList(a,t)}else if(0<r.options.markers.length&&1<this.getMaxMarkers(t)){var i=this.addMarker(t,e.latlng.lat,e.latlng.lng,"","",!1);t.querySelector(".tf-mapeditor-add-new-marker")&&this.addMarkerToList(i,t)}this.scrollToTheBottomOfTheMarkersList(t)},t.onBeforeShowAddMarkerModal=function(e){var t=e.target.closest(".tf-mapeditor-add-new-marker");if(t){var r=document.querySelector("#tfMapEditorMarkerAddModal");r.querySelector(".tf-address-lookup-field-address").value="",r.querySelector(".tf-marker-repeater-latitude").value="",r.querySelector(".tf-marker-repeater-longitude").value="",document.querySelectorAll('.nrf-widget.map-editor[data-adding-new-marker="true"]').forEach(function(e){e.removeAttribute("data-adding-new-marker")}),t.closest(".nrf-widget.map-editor").setAttribute("data-adding-new-marker",!0)}},t.onSaveNewMarker=function(e){var t=e.target.closest(".tf-mapeditor-save-new-marker");if(t){var r=document.querySelector('.nrf-widget.map-editor[data-adding-new-marker="true"]');e.preventDefault();var a=t.closest("#tfMapEditorMarkerAddModal"),i={latitude:a.querySelector(".tf-marker-repeater-latitude").value,longitude:a.querySelector(".tf-marker-repeater-longitude").value};if(""!==i.latitude||""!==i.longitude){var o=this.addMarker(r,i.latitude,i.longitude,"","",!0);this.addMarkerToList(o,r),this.scrollToTheBottomOfTheMarkersList(r),r.OpenStreetMap.centerMap(),r.removeAttribute("data-adding-new-marker"),r.classList.remove("clear-is-hidden"),parseInt(this.getMaxMarkers(r))===parseInt(r.OpenStreetMap.options.markers.length)&&r.OpenStreetMap.map.contextmenu.disable()}}},t.scrollToTheBottomOfTheMarkersList=function(e){var t=e.querySelector(".tf-map-markers--list");t&&(t.scrollTop=t.scrollHeight)},t.addMarkerToList=function(e,t){var r=t.querySelector(".tf-map-markers--list--item.is-template").cloneNode(!0);r.classList.remove("is-template","is-hidden"),r.setAttribute("data-id",e.options.id);var a=t.querySelectorAll(".tf-map-markers--list .tf-map-markers--list--item").length;r.querySelector(".tf-map-markers--list--item--label--wrapper--counter").innerHTML=a+1+".";var i=t.querySelector(".tf-map-markers--list");0===i.querySelectorAll(".tf-map-markers--list--item").length&&(i.innerHTML=""),i.appendChild(r)},t.onShowAddMarkerModal=function(e){var t=e.target.closest("#tfMapEditorMarkerAddModal");t&&(t.matches(".fade.in")||t.matches(".fade.show"))&&t.querySelector(".tf-address-lookup-field-address").focus()},t.onBeforeShowEditMarkerModal=function(e){var t=e.target.closest("#tfMapEditorMarkerEditModal");t&&(t.querySelector(".tf-marker-repeater-id").value="",t.querySelector(".tf-address-lookup-field-address").value="",t.querySelector(".tf-marker-repeater-latitude").value="",t.querySelector(".tf-marker-repeater-longitude").value="",t.querySelector(".tf-marker-repeater-label").value="",t.querySelector(".tf-marker-repeater-description").value="")},t.onEditMarkerClick=function(e){var t=e.target.closest(".tf-map-markers--list--item--actions--edit");if(t){var r=t.closest(".nrf-widget.map-editor");if(r){var a=r.querySelector(".tf-map-markers--list--item[data-clicked]");a&&a.removeAttribute("data-clicked"),t.closest(".tf-map-markers--list--item").setAttribute("data-clicked",!0)}}},t.onEditMarker=function(e){var t=e.target.closest("#tfMapEditorMarkerEditModal");if(t&&(t.matches(".fade.in")||t.matches(".fade.show"))){var r=document.querySelector('.tf-map-markers--list--item[data-clicked="true"]'),a=r.closest(".nrf-widget.map-editor");r.removeAttribute("data-clicked"),t.querySelectorAll("input").forEach(function(e){e.removeAttribute("name")}),t.querySelectorAll("textarea").forEach(function(e){e.removeAttribute("name")});var i=a.OpenStreetMap.options.markers,o=parseInt(r.dataset.id),n=i.filter(function(e){return e.id===o});n&&(t.querySelector(".tf-marker-repeater-id").value=o,t.querySelector(".tf-address-lookup-field-address").value=n[0].address,t.querySelector(".tf-marker-repeater-latitude").value=n[0].latitude,t.querySelector(".tf-marker-repeater-longitude").value=n[0].longitude,t.querySelector(".tf-marker-repeater-label").value=n[0].label,t.querySelector(".tf-marker-repeater-description").value=n[0].description)}},t.onSaveExistingMarker=function(e){var t=e.target.closest(".tf-mapeditor-save-marker");if(t){var r=t.closest(".modal"),a=parseInt(r.querySelector(".tf-marker-repeater-id").value),i=document.querySelector('.tf-map-markers--list--item[data-id="'+a+'"]').closest(".nrf-widget.map-editor"),o={id:a,address:r.querySelector(".tf-address-lookup-field-address").value,latitude:r.querySelector(".tf-marker-repeater-latitude").value,longitude:r.querySelector(".tf-marker-repeater-longitude").value,label:r.querySelector(".tf-marker-repeater-label").value,description:r.querySelector(".tf-marker-repeater-description").value};this.updateMarkerByID(i.OpenStreetMap,o.latitude,o.longitude,o.address,o.label,o.description,o.id),this.updateMapMarkersValue(i,o),this.updateMarkersList(i),i.OpenStreetMap.centerMap(),i.classList.remove("clear-is-hidden")}},t.onDeleteMarker=function(e){var t=e.target.closest(".tf-map-markers--list--item--actions--delete");if(t&&(e.preventDefault(),confirm(window.parent.Joomla.Text._("NR_ARE_YOU_SURE_YOU_WANT_TO_DELETE_THIS_MARKER")))){var r=t.closest(".nrf-widget.map-editor"),a=parseInt(t.closest(".tf-map-markers--list--item").dataset.id);this.deleteMarkerById(a,r),0===r.OpenStreetMap.options.markers.length&&(r.querySelector(".tf-mapeditor-add-new-marker").classList.remove("is-hidden"),r.querySelector(".tf-map-markers--list").innerHTML=r.querySelector(".tf-map-markers").dataset.noMarkers,r.classList.add("clear-is-hidden")),this.fixMarkersListCounter(r),this.determineFieldValidityAndToggleValidatorField(r),r.OpenStreetMap.centerMap();var i=this.getMaxMarkers(r);r.OpenStreetMap.options.markers.length<i&&(r.classList.remove("markers-limit-reached"),r.OpenStreetMap.map.contextmenu.enable())}},t.fixMarkersListCounter=function(e){e.querySelectorAll(".tf-map-markers--list .tf-map-markers--list--item").forEach(function(e,t){e.querySelector(".tf-map-markers--list--item--label--wrapper--counter").innerHTML=t+1+"."})},t.renderOnSubform=function(e){e.target.querySelectorAll(".nrf-widget.map-editor:not(.no-map):not(.done)").forEach(function(e){var t=new NR_OSM_Map(e);t.render(),t.renderMarkers(),t.centerMap(),e.classList.add("done")})},t.addNewMarkerAtCenter=function(e){var t=e.closest(".nrf-widget.map-editor");if(t){var r=t.OpenStreetMap.map.getCenter(),a=this.addMarker(t,r.lat,r.lng,"","",!1);return this.determineFieldValidityAndToggleValidatorField(t),a}},t.deleteMarkerById=function(t,e){var r=e.OpenStreetMap,a=r.markersObjects.filter(function(e){return e.options.id===t});if(0!==a.length){r.deleteMarker(a[0]),this.deleteMapMarkerFromValue(e,t);var i=e.querySelector('.tf-map-markers--list--item[data-id="'+t+'"]');i&&i.remove()}},t.onAfterGetAddressDetails=function(e,t,r,a,i){var o=new CustomEvent("onTFMapEditorMarkerMoveEnd",{detail:{map:a,coords:{lat:t,lng:r},address:e}});document.dispatchEvent(o);var n="display_name"in e?e.display_name:window.parent.Joomla.Text._("NR_UNKNOWN_LOCATION"),d=this.getSavedMarkerByID(i.id,a),s=a.querySelector(".tf-address-lookup-field-address");s&&(s.value=n);var l=Object.assign({},d,{latitude:t,longitude:r,address:n});this.updateMapMarkersValue(a,l),this.updateMarkersList(a),this.determineFieldValidityAndToggleValidatorField(a),a.OpenStreetMap&&a.OpenStreetMap.updateMarkers()},t.updateMarkersList=function(e){var t=e.querySelectorAll(".tf-map-markers--list .tf-map-markers--list--item");if(t){var i=e.OpenStreetMap.options.markers;t.forEach(function(e){var t=parseInt(e.dataset.id),r=i.filter(function(e){return e.id===t});if(r){var a=r[0].label&&""!==r[0].label.trim()?r[0].label.trim():!!r[0].address&&r[0].address;a&&(e.querySelector(".tf-map-markers--list--item--label--wrapper--label").innerHTML=a)}})}},t.getAddressDetails=function(t,r,a,i,o){void 0===o&&(o=""),fetch("https://nominatim.openstreetmap.org/reverse?lat="+t+"&lon="+r+"&addressdetails=1&format=json").then(function(e){return e.json()}).then(function(e){i(e,t,r,a,o)})},t.updateMarkerByIndex=function(e,t,r,a,i,o,n){void 0===a&&(a=null),void 0===i&&(i=null),void 0===o&&(o=null),void 0===n&&(n=0),null!==a&&(e.options.markers[n].address=a),e.options.markers[n].latitude=t,e.options.markers[n].longitude=r,e.options.markers[n].label=i,e.options.markers[n].description=o,e.updateMarkers(),e.markersObjects[n].fire("moveend")},t.updateMarkerByID=function(e,t,r,a,i,o,n){for(var d in void 0===a&&(a=null),void 0===i&&(i=null),void 0===o&&(o=null),void 0===n&&(n=null),e.options.markers)e.options.markers[d].id===n&&(null!==a&&(e.options.markers[d].address=a),e.options.markers[d].latitude=t,e.options.markers[d].longitude=r,e.options.markers[d].label=i,e.options.markers[d].description=o);e.updateMarkers()},t.addMarker=function(e,t,r,a,i,o){void 0===a&&(a=""),void 0===i&&(i=""),void 0===o&&(o=!0);var n={latitude:t,longitude:r,label:a,description:i},d=e.OpenStreetMap.createMarker(n);return e.OpenStreetMap.map.addLayer(d),o&&e.OpenStreetMap.centerMap(),d.fire("moveend"),e.querySelector(".map-markers").value=JSON.stringify(e.OpenStreetMap.options.markers),this.getMaxMarkers(e)===e.OpenStreetMap.options.markers.length&&e.classList.add("markers-limit-reached"),d},t.getSavedMarkerByID=function(t,e){var r=e.OpenStreetMap.options.markers.filter(function(e){return e.id===t});if(r)return r[0]},t.getMaxMarkers=function(e){var t=JSON.parse(e.dataset.options)||{},r="max_markers"in t?parseInt(t.max_markers):1;return 0===r&&(r=9999),r},t.debounce=function(r,a){var i;return function(){var e=this,t=arguments;clearTimeout(i),i=setTimeout(function(){return r.apply(e,t)},a)}},t.onClearMap=function(e){var t=e.target.closest(".tf-map-editor-clear");if(t&&(e.preventDefault(),confirm(window.parent.Joomla.Text._("NR_ARE_YOU_SURE_YOU_WANT_TO_DELETE_ALL_MARKERS")))){var r=t.closest(".nrf-widget.map-editor");r.classList.add("clear-is-hidden"),r.classList.remove("markers-limit-reached");var a=r.OpenStreetMap.options.markers.length;if(this.deleteMarkers(r),a=r.OpenStreetMap.options.markers.length,r.OpenStreetMap&&0===a){var i=r.querySelector(".tf-mapeditor-add-new-marker");i&&i.classList.remove("is-hidden"),r.querySelector(".tf-map-markers--list")&&(r.querySelector(".tf-map-markers--list").innerHTML=r.querySelector(".tf-map-markers").dataset.noMarkers)}r.OpenStreetMap&&r.OpenStreetMap.map.contextmenu.enable(),this.determineFieldValidityAndToggleValidatorField(r);var o=new CustomEvent("onTFMapEditorClearMap",{detail:{map:r}});document.dispatchEvent(o)}},t.deleteMarkers=function(e){if(e.OpenStreetMap)for(;0<e.OpenStreetMap.options.markers.length;){var t=parseInt(e.OpenStreetMap.options.markers[0].id);this.deleteMarkerById(t,e)}},t.hideAutocompleteResult=function(e){e.classList.remove("is-visible"),e.innerHTML=""},t.onSelectAutocompleteItem=function(e){var t=e.detail.item.closest(".nrf-widget.map-editor");if(t){var r=e.detail.lat,a=e.detail.lng,i=this.getOpenedMarkerModal();if(t&&t.OpenStreetMap){if(1===this.getMaxMarkers(t))if(0===t.OpenStreetMap.options.markers.length)i?this.updateMarkerModalWithValues(i,{latitude:r,longitude:a,address:e.detail.address}):this.addMarker(t,r,a);else if(i){var o=e.detail.item.closest(".modal");this.updateMarkerModalWithValues(o,{latitude:r,longitude:a,address:e.detail.address})}else this.updateMarkerByIndex(t.OpenStreetMap,r,a);else{var n=e.detail.item.closest(".modal");if(i){var d={latitude:r,longitude:a,address:e.detail.address};this.updateMarkerModalWithValues(n,d)}else{var s=parseInt(n.querySelector(".tf-marker-repeater-id").value);this.updateMarkerByID(t.OpenStreetMap,r,a,e.detail.address,null,null,s);var l=t.OpenStreetMap.markersObjects.filter(function(e){return e.options.id===s});1===l.length&&(l[0].fire("moveend"),t.OpenStreetMap.updateMarkers())}}i||t.OpenStreetMap.centerMap()}}},t.updateMarkerModalWithValues=function(e,t){e.querySelector(".tf-address-lookup-field-coordinates-value")&&(e.querySelector(".tf-address-lookup-field-coordinates-value").value=[t.latitude,t.longitude].join(",")),e.querySelector(".tf-address-lookup-field-address").value=t.address,e.querySelector(".tf-marker-repeater-latitude").value=t.latitude,e.querySelector(".tf-marker-repeater-longitude").value=t.longitude},t.getOpenedMarkerModal=function(){var e,t=document.querySelector("#tfMapEditorMarkerEditModal.fade.show");if(!(e=t=t||document.querySelector("#tfMapEditorMarkerEditModal.fade.in"))){var r=document.querySelector("#tfMapEditorMarkerAddModal.fade.show");e=r=r||document.querySelector("#tfMapEditorMarkerAddModal.fade.in")}return e},t.getMaps=function(){return document.querySelectorAll(".nrf-widget.map-editor:not(.done)")},t.syncMapMarkersToInstanceMarkers=function(e){var t=e.OpenStreetMap.options.markers;e.querySelector(".map-markers").value=JSON.stringify(t)},t.updateMapMarkersValue=function(e,t){var r=e.querySelector(".map-markers").value,a=[];if(""!==r&&(a=JSON.parse(r)||[]),0===a.length)a=[t];else for(var i in a)a[i].id===t.id&&(a[i]=t);e.OpenStreetMap.options.markers=a,e.querySelector(".map-markers").value=JSON.stringify(a)},t.deleteMapMarkerFromValue=function(e,t){var r=e.querySelector(".map-markers").value,a=[];for(var i in""!==r&&(a=JSON.parse(r)||[]),a)a[i].id===t&&a.splice(i,1);e.querySelector(".map-markers").value=JSON.stringify(a)},t.determineFieldValidityAndToggleValidatorField=function(e){if(this.isRequired(e)&&e.OpenStreetMap){var t=0!==e.OpenStreetMap.options.markers.length?"hide":"show",r=e.querySelector(':scope > input[type="hidden"].required');if("hide"==t)return r.removeAttribute("required"),void r.classList.remove("required");r.setAttribute("required","required"),r.classList.add("required")}},t.isRequired=function(e){return!!e.querySelector(':scope > input[type="hidden"].required')},e}();document.addEventListener("DOMContentLoaded",function(){new NR_Map_Editor});

