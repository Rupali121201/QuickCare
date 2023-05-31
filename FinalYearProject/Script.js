document.addEventListener('DOMContentLoaded', function () {
    const form = document.querySelector('#search-form');
    form.addEventListener('submit', function (event) {
        event.preventDefault();
        const locationInput = document.querySelector('#location-input');
        const location = locationInput.value;
        fetch('mechanic.json')
            .then(response => response.json())
            .then(data => {
                const driversList = document.querySelector('#drivers-list');
                driversList.innerHTML = '';
                const heading = document.createElement('h2');
                heading.innerText = `Mechanics available in ${location}`;
                driversList.appendChild(heading);
                const row = document.createElement('div');
                row.className = 'row';
                data.forEach(driver => {
                    if (driver.city === location) {
                        const col = document.createElement('div');
                        col.className = 'col-md-6';
                        const driverDiv = document.createElement('div');
                        driverDiv.className = 'driver';
                        const name = document.createElement('h2');
                        name.innerText = driver.name;
                        const phone = document.createElement('p');
                        phone.innerHTML = `<strong>Phone:</strong> <a href="tel:${driver.phone}">${driver.phone}</a>`;
                        const whatsappLink = `https://wa.me/${driver.phone}`;
                        const linkElement = document.createElement('a');
                        linkElement.href = whatsappLink;
                        linkElement.className = 'whatsapp-link';
                        linkElement.innerText = 'Contact on WhatsApp';
                        const email = document.createElement('p');
                        email.innerHTML = `<strong>Shop Name:</strong> ${driver.shop}`;

                        // Create booking button
                        const bookingButton = document.createElement('button');
                        bookingButton.innerText = 'Book Now';
                        bookingButton.className = 'booking-button primary-color'; // Set the class for primary color styling
                        bookingButton.
                        driverDiv.appendChild(name);
                        driverDiv.appendChild(phone);
                        driverDiv.appendChild(linkElement);
                        driverDiv.appendChild(email);
                        driverDiv.appendChild(bookingButton); // Add the booking button to the driverDiv

                        col.appendChild(driverDiv);
                        row.appendChild(col);
                    }
                }); // Add the closing curly brace for the forEach loop
                driversList.appendChild(row);
            })
            .catch(error => {
                alert('There was an error loading the drivers list.');
                console.log(error);
            });
    });
});


//--------------------------------------------------------------------------------------------------

    document.addEventListener('DOMContentLoaded', function () {
        const detailsButtons = document.querySelectorAll('.booking-button');

        detailsButtons.forEach(button => {
            button.addEventListener('click', function () {
                const mechanicId = button.getAttribute('data-id');

                // Load the JSON file and retrieve the specific JSON content based on the mechanicId
                loadJsonFileAndRetrieveContent(mechanicId);
            });
        });
    });

function loadJsonFileAndRetrieveContent(mechanicId) {
    fetch('your-json-file.json')
        .then(response => response.json())
        .then(data => {
            // Filter the JSON data based on the mechanicId
            const mechanicData = data.find(item => item.id === parseInt(mechanicId));

            if (mechanicData) {
                // Do something with the mechanicData, such as displaying it on the page
                console.log(mechanicData);
            } else {
                console.error('Mechanic data not found');
            }
        })
        .catch(error => {
            console.error('Error loading JSON file:', error);
        });
}
