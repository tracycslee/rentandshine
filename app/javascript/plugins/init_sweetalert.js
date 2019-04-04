import swal from 'sweetalert';

const initSweetalert = (selector, options = {}) => {
  const swalButtons = document.querySelectorAll(selector);
  swalButtons.forEach(button => button.addEventListener('click', (e) => {
      swal(options).then(
        (value) => {
          if (value) {
            const link = document.querySelector(`.delete-link-${e.srcElement.id}`);
            link.click();
            // Swal.fire(
            //   'Deleted!',
            //   'Your file has been deleted.',
            //   'Success'
            // )
          }
        }
      ); // <-- add the `.then(callback)`
    }));

  // if (swalButton) { // protect other pages
  //   swalButton.addEventListener('click', () => {
  //     console.log("clicked")
  //     swal(options).then(callback); // <-- add the `.then(callback)`
  //   });
  // }
};

export { initSweetalert };
