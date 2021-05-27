

const changeStatusColor = () => {
  const status = document.getElementById("booking-status");
  if (status) {
  const bookingStatus = status.dataset.bookingStatus
  console.log(bookingStatus);
  if (bookingStatus === 'pending') {
    status.classList.add('status-pending')
  } else if (bookingStatus === 'rejected') {
    status.classList.add('status-rejected');
  } else {
    status.classList.add('status-accepted')
  }
}
}


export { changeStatusColor };
