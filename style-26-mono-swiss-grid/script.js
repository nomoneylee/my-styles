/**
 * Style 26: 瑞士國際主義黑白刷色 (Mono Swiss Grid)
 * 100% Pure Vanilla JS Control Logic
 */

document.addEventListener('DOMContentLoaded', () => {
  // 1. Mobile Toggler
  const toggler = document.getElementById('swiToggler');
  const collapse = document.getElementById('swiCollapse');
  if (toggler && collapse) {
    toggler.addEventListener('click', () => {
      collapse.classList.toggle('show');
    });
  }

  // 2. Accordion Invert Switching
  const accordionHeaders = document.querySelectorAll('.swi-accordion-header');
  accordionHeaders.forEach(header => {
    header.addEventListener('click', () => {
      const body = header.nextElementSibling;
      const isOpen = body.classList.contains('show');

      document.querySelectorAll('.swi-accordion-header').forEach(h => h.classList.remove('active'));
      document.querySelectorAll('.swi-accordion-body').forEach(b => b.classList.remove('show'));

      if (!isOpen) {
        header.classList.add('active');
        body.classList.add('show');
      }
    });
  });

  // 3. Tabs Invert Switching
  const tabBtns = document.querySelectorAll('.swi-tab-btn');
  tabBtns.forEach(btn => {
    btn.addEventListener('click', () => {
      const target = btn.getAttribute('data-target');

      document.querySelectorAll('.swi-tab-btn').forEach(b => b.classList.remove('active'));
      document.querySelectorAll('.swi-tab-pane').forEach(p => p.classList.remove('active'));

      btn.classList.add('active');
      const targetPane = document.getElementById(target);
      if (targetPane) targetPane.classList.add('active');
    });
  });

  // 4. Modal
  const openModal = document.getElementById('openModalBtn');
  const closeModal = document.getElementById('closeModalBtn');
  const modal = document.getElementById('swiModal');

  if (openModal && modal) {
    openModal.addEventListener('click', () => modal.classList.add('show'));
  }
  if (closeModal && modal) {
    closeModal.addEventListener('click', () => modal.classList.remove('show'));
  }

  // 5. Offcanvas
  const openOffcanvas = document.getElementById('openOffcanvasBtn');
  const closeOffcanvas = document.getElementById('closeOffcanvasBtn');
  const offcanvas = document.getElementById('swiOffcanvas');

  if (openOffcanvas && offcanvas) {
    openOffcanvas.addEventListener('click', () => offcanvas.classList.add('show'));
  }
  if (closeOffcanvas && offcanvas) {
    closeOffcanvas.addEventListener('click', () => offcanvas.classList.remove('show'));
  }

  // 6. Range
  const range = document.getElementById('swiRange');
  const rangeVal = document.getElementById('swiRangeValue');
  if (range && rangeVal) {
    range.addEventListener('input', (e) => {
      rangeVal.textContent = e.target.value + ' PT';
    });
  }
});
