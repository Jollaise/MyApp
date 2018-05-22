// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/



$(document).ready(function() {
  // $("#contact-form").on('submit.blocker', function (e) {
  //     setTimeout(function () {
  //         $("#contact-form").off('submit.blocker').trigger('submit');
  //     }, 4000);
  //     e.preventDefault();
  // });

  $("#contact-submit").on('click', function(e){
    swal({
      type: 'success',
      title: 'Thank You!',
      text: 'We have received your message and will get back to you as soon as possible!',
      showConfirmButton: false,
      timer: 4000})
    });
});




var map;
function initMap() {

var styledMapType = new google.maps.StyledMapType(
   [
        {
          elementType: 'geometry',
          stylers: [{color: '#f5f5f5'}]
        },
        {
          elementType: 'labels.icon',
          stylers: [{visibility: 'off'}]
        },
        {
          elementType: 'labels.text.fill',
          stylers: [{color: '#616161'}]
        },
        {
          elementType: 'labels.text.stroke',
          stylers: [{color: '#f5f5f5'}]
        },
        {
          featureType: 'administrative.land_parcel',
          elementType: 'labels.text.fill',
          stylers: [{color: '#bdbdbd'}]
        },
        {
          featureType: 'poi',
          elementType: 'geometry',
          stylers: [{color: '#eeeeee'}]
        },
        {
          featureType: 'poi',
          elementType: 'labels.text.fill',
          stylers: [{color: '#757575'}]
        },
        {
          featureType: 'poi.park',
          elementType: 'geometry',
          stylers: [{color: '#e5e5e5'}]
        },
        {
          featureType: 'poi.park',
          elementType: 'labels.text.fill',
          stylers: [{color: '#9e9e9e'}]
        },
        {
          featureType: 'road',
          elementType: 'geometry',
          stylers: [{color: '#ffffff'}]
        },
        {
          featureType: 'road.arterial',
          elementType: 'labels.text.fill',
          stylers: [{color: '#757575'}]
        },
        {
          featureType: 'road.highway',
          elementType: 'geometry',
          stylers: [{color: '#dadada'}]
        },
        {
          featureType: 'road.highway',
          elementType: 'labels.text.fill',
          stylers: [{color: '#616161'}]
        },
        {
          featureType: 'road.local',
          elementType: 'labels.text.fill',
          stylers: [{color: '#9e9e9e'}]
        },
        {
          featureType: 'transit.line',
          elementType: 'geometry',
          stylers: [{color: '#e5e5e5'}]
        },
        {
          featureType: 'transit.station',
          elementType: 'geometry',
          stylers: [{color: '#eeeeee'}]
        },
        {
          featureType: 'water',
          elementType: 'geometry',
          stylers: [{color: '#c9c9c9'}]
        },
        {
          featureType: 'water',
          elementType: 'labels.text.fill',
          stylers: [{color: '#9e9e9e'}]
        }
      ],
      {name: 'Styled Map'});

      var myLatLng = {lat: 52.5073893, lng: 13.3759072};

      var map = new google.maps.Map(document.getElementById('map'), {
        center: myLatLng,
        zoom: 15,
        mapTypeControlOptions: {
            mapTypeIds: ['roadmap', 'satellite', 'hybrid', 'terrain',
                    'styled_map']
          }
      });

      map.mapTypes.set('styled_map', styledMapType);
        map.setMapTypeId('styled_map');

      var marker = new google.maps.Marker({
        position: myLatLng,
        map: map,
        title: 'Office Location'
      });
  };
