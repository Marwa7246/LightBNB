$(() => {

  const $makeReservationForm = $(`
  <form id="makeReservation-form" class="makeReservation-form">
      <p>Make Reservation</p>
      <div class="makeReservation-form__field-wrapper">
        <label for="makeReservation-form__startDate">Start Date</label>
        <input type="date" name="start-date">
      </div>

      <div class="makeReservation-form__field-wrapper">
        <label for="makeReservation-form__endDate">End Date</label>
        <input type="date" name="end-date">
      </div>

      <div class="makeReservation-form__field-wrapper">
          <button>Reserve</button>
          <a id="makeReservation-form__cancel" href="#">Cancel</a>
      </div>
    </form>
  `);

  window.$makeReservationForm = $makeReservationForm;

  $makeReservationForm.on('submit', function(event) {
    event.preventDefault();

    const data = $(this).serialize();

  });

  $('body').on('click', '#makeReservation-form__cancel', function() {
    views_manager.show('listings');
    return false;
  });
      
});