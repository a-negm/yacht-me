import flatpickr from "flatpickr";
const initFlatpickr = () => {
  flatpickr(".datepicker", {altInput: true
, allowInput: true
});
}

export { initFlatpickr };
