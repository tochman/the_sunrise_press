// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

const stripeTokenHandler = (token) => {
    let stripeForm = document.getElementById('subscriber_form')
    const hiddenInput = document.createElement('input')
    hiddenInput.setAttribute('type', 'hidden')
    hiddenInput.setAttribute('name', 'stripeToken')
    hiddenInput.setAttribute('value', token.id)
    stripeForm.appendChild(hiddenInput)

    stripeForm.submit()
}

const initiateStripe = () => {
    
    const stripe = Stripe('pk_test_QicERB8w3kyqaYW3hUUQylRH');
    const elements = stripe.elements();
    const card = elements.create('card', {hidePostalCode: true})
    
    card.mount('#card-element');

    const form = document.getElementById('subscriber_form');
    
    form.addEventListener('submit', () => {
        event.preventDefault();
        stripe.createToken(card).then(result =>{
            stripeTokenHandler(result.token)
        })
    })

}

document.addEventListener('turbolinks:load', ()=>{
    let stripeForm = document.getElementById('subscriber_form')

    if (stripeForm){
        initiateStripe()
    }
})
