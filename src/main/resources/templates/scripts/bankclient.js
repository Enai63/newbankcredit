let addClient = document.getElementById('addClient')
addClient.addEventListener('show.bs.modal', function (event) {
    // Button that triggered the modal
    let button = event.relatedTarget
    // Extract info from data-* attributes
    let recipient = button.getAttribute('data-whatever')
    // If necessary, you could initiate an AJAX request here
    // and then do the updating in a callback.

    // Update the modal's content.
    let modalTitle = addClient.querySelector('.modal-title')
    let modalBodyInput = addClient.querySelector('.modal-body input')

    console.log(modalBodyInput);

    modalTitle.textContent = 'New message to ' + recipient
    modalBodyInput.value = recipient
})