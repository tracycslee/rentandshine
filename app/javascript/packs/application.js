import "bootstrap";
import "../plugins/flatpickr";
import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';
import swal from 'sweetalert';
import { initSweetalert } from '../plugins/init_sweetalert';

initMapbox();

initSweetalert('.sweet-alert-link', {
  title: 'Deleted',
  text: "You won't be able to revert this!",
  type: 'warning',
  showCancelButton: true,
  confirmButtonColor: '#3085d6',
  cancelButtonColor: '#d33',
  confirmButtonText: 'Yes, delete it!',
  icon: "success",
});
