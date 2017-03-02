var stripe_customer;

$(document).on('ready page:load', function () {
  Stripe.setPublishableKey($('meta[name="stripe-key"]').attr('content'));
  return stripe_customer.setupForm();
});

stripe_customer = {
  setupForm: function() {
    return $('#new_order #submit_order').click(function() {
      $('input[type=submit]').attr('disabled', true);
      if ($('#order_card_number').length) {
        stripe_customer.processCard();
        return false;
      } else {
        return true;
      }
    });
  },
  processCard: function() {
    var account;
    account = {
      number: $('#order_card_number').val(),
      cvc: $('#order_cvv').val(),
      expMonth: $('#order_exp_month').val(),
      expYear: $('#order_exp_year').val()
    };
    return Stripe.createToken(account, stripe_customer.handleStripeResponse);
  },
  handleStripeResponse: function(status, response) {
    if (status === 200) {
      console.log("11111")
     alert(response.id);
      $('#order_stripe_token').val(response.id);
      // $('#order_stripe_credit_card_id').val(response.card.id);
      $('#stripe_error').text("")
      $('#new_order').submit();
    } else {
      console.log("22222")
      // alert(response.error.message);
      $('#stripe_error').text(response.error.message);
      $('input[type=submit]').attr('disabled', false);
    }
  }
};