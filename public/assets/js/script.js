function toggle(productId) {
    let request = new XMLHttpRequest();
    let url = '/cart/toggle/' + productId;
    request.open('POST', url, true);
    request.addEventListener('readystatechange', () => {
        if (request.readyState === 4 && request.status === 200) {
            let button = document.getElementById(productId);
            button.innerText = request.responseText;
        }
    });
    request.send();
}

let buttons = document.getElementsByTagName('button');
for (let i = 0; i < buttons.length; i++) {
    let button = buttons[i];
    button.addEventListener('click', () => {
        toggle(button.id);
    });
}
