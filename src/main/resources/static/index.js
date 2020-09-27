const div_result = document.querySelector('.search-result .content')
const input_bar = document.querySelector('.input-search')
input_bar.value = "/REST/video-games/"
const btn_ok = document.querySelector('.button-ok')

window.addEventListener('keypress', (e) => {
    // keyCode 13 = "Enter"
    if (e.keyCode === 13) {
        fetch_rest()
    }
})
btn_ok.addEventListener('click', (e) => {
    fetch_rest()
})

async function fetch_rest ()
{
    console.log(input_bar.value)
    fetch(input_bar.value)
        .then(response => response.text())
        .then((data) => {
            div_result.innerHTML = "<pre>" + data + "</pre>"
        })
}
