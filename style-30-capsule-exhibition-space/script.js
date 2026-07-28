/**
 * Style 30: 當代展覽膠囊 / 複合展演空間 (Capsule Exhibition Space)
 * 100% Pure Vanilla JS Control Logic
 */

document.addEventListener('DOMContentLoaded', () => {
  // 1. Mobile Toggler
  const toggler = document.getElementById('capToggler');
  const collapse = document.getElementById('capCollapse');
  if (toggler && collapse) {
    toggler.addEventListener('click', () => {
      collapse.classList.toggle('show');
    });
  }

  // 2. Accordion
  const accordionHeaders = document.querySelectorAll('.cap-accordion-header');
  accordionHeaders.forEach(header => {
    header.addEventListener('click', () => {
      const body = header.nextElementSibling;
      const isOpen = body.classList.contains('show');

      document.querySelectorAll('.cap-accordion-body').forEach(b => b.classList.remove('show'));
      if (!isOpen) {
        body.classList.add('show');
      }
    });
  });

  // 3. Tabs
  const tabBtns = document.querySelectorAll('.cap-tab-btn');
  tabBtns.forEach(btn => {
    btn.addEventListener('click', () => {
      const target = btn.getAttribute('data-target');

      document.querySelectorAll('.cap-tab-btn').forEach(b => b.classList.remove('active'));
      document.querySelectorAll('.cap-tab-pane').forEach(p => p.classList.remove('active'));

      btn.classList.add('active');
      const targetPane = document.getElementById(target);
      if (targetPane) targetPane.classList.add('active');
    });
  });

  // 4. Modal
  const openModal = document.getElementById('openModalBtn');
  const closeModal = document.getElementById('closeModalBtn');
  const modal = document.getElementById('capModal');

  if (openModal && modal) {
    openModal.addEventListener('click', () => modal.classList.add('show'));
  }
  if (closeModal && modal) {
    closeModal.addEventListener('click', () => modal.classList.remove('show'));
  }

  // 5. Offcanvas
  const openOffcanvas = document.getElementById('openOffcanvasBtn');
  const closeOffcanvas = document.getElementById('closeOffcanvasBtn');
  const offcanvas = document.getElementById('capOffcanvas');

  if (openOffcanvas && offcanvas) {
    openOffcanvas.addEventListener('click', () => offcanvas.classList.add('show'));
  }
  if (closeOffcanvas && closeOffcanvas) {
    closeOffcanvas.addEventListener('click', () => offcanvas.classList.remove('show'));
  }

  // 6. Range
  const range = document.getElementById('capRange');
  const rangeVal = document.getElementById('capRangeValue');
  if (range && rangeVal) {
    range.addEventListener('input', (e) => {
      rangeVal.textContent = e.target.value + ' Hz';
    });
  }
});
