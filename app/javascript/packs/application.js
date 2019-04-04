import "bootstrap";
// import "../plugins/flatpickr";
import swal from 'sweetalert';
// ES6 Modules or TypeScript
// import Swal from 'sweetalert2'

// const initSweetalert = (selector) => {
//   const swalButton = document.querySelector(selector);
//   if (swalButton) { // protect other pages
//     swalButton.addEventListener('click', () => {
//       Swal.fire({
//         title: 'Are you sure?',
//         text: "You won't be able to revert this!",
//         type: 'warning',
//         showCancelButton: true,
//         confirmButtonColor: '#3085d6',
//         cancelButtonColor: '#d33',
//         confirmButtonText: 'Yes, delete it!'
//       }).then((result) => {
//         if (result.value) {
//           const link = document.querySelectorAll('#delete-link');
//           link.click();
//         }
//       })
//     });
//   }
// };

// initSweetalert('#sweet-alert-demo')


// const initSweetalert = (selector) => {
//   const swalButton = document.querySelector(selector);
//   if (swalButton) { // protect other pages
//     swalButton.addEventListener('click', () => {
//       Swal.fire({
//         title: 'Are you sure?',
//         text: "You won't be able to revert this!",
//         type: 'warning',
//         showCancelButton: true,
//         confirmButtonColor: '#3085d6',
//         cancelButtonColor: '#d33',
//         confirmButtonText: 'Yes, delete it!'
//     }).then((result) => {
//       console.log(3, result)
//     if (result.value) {
//       const link = document.querySelectorAll('.delete-link');
//       console.log(link)
//       Swal.fire(
//         'Deleted!',
//         'Your file has been deleted.',
//       'success'
//       )
//     }
//   })
//   })
//   }
// }
// initSweetalert('#sweet-alert-demo')

import { initSweetalert } from '../plugins/init_sweetalert';


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
