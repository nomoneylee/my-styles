/**
 * Style 27: 韓系柔焦莫蘭迪 / 藝文畫廊 (Soft Morandi Atelier)
 * 100% Pure Vanilla JS Control Logic
 */

document.addEventListener('DOMContentLoaded', () => {
  // 1. Mobile Toggler
  const toggler = document.getElementById('morToggler');
  const collapse = document.getElementById('morCollapse');
  if (toggler && collapse) {
    toggler.addEventListener('click', () => {
      collapse.classList.toggle('show');
    });
  }

  // 2. Accordion
  const accordionHeaders = document.querySelectorAll('.mor-accordion-header');
  accordionHeaders.forEach(header => {
    header.addEventListener('click', () => {
      const body = header.nextElementSibling;
      const isOpen = body.classList.contains('show');

      document.querySelectorAll('.mor-accordion-body').forEach(b => b.classList.remove('show'));
      if (!isOpen) {
        body.classList.add('show');
      }
    });
  });

  // 3. Tabs
  const tabBtns = document.querySelectorAll('.mor-tab-btn');
  tabBtns.forEach(btn => {
    btn.addEventListener('click', () => {
      const target = btn.getAttribute('data-target');

      document.querySelectorAll('.mor-tab-btn').forEach(b => b.classList.remove('active'));
      document.querySelectorAll('.mor-tab-pane').forEach(p => p.classList.remove('active'));

      btn.classList.add('active');
      const targetPane = document.getElementById(target);
      if (targetPane) targetPane.classList.add('active');
    });
  });

  // 4. Modal
  const openModal = document.getElementById('openModalBtn');
  const closeModal = document.getElementById('closeModalBtn');
  const modal = document.getElementById('morModal');

  if (openModal && modal) {
    openModal.addEventListener('click', () => modal.classList.add('show'));
  }
  if (closeModal && modal) {
    closeModal.addEventListener('click', () => modal.classList.remove('show'));
  }

  // 5. Offcanvas
  const openOffcanvas = document.getElementById('openOffcanvasBtn');
  const closeOffcanvas = document.getElementById('closeOffcanvasBtn');
  const offcanvas = document.getElementById('morOffcanvas');

  if (openOffcanvas && offcanvas) {
    openOffcanvas.addEventListener('click', () => offcanvas.classList.add('show'));
  }
  if (closeOffcanvas && offcanvas) {
    closeOffcanvas.addEventListener('click', () => offcanvas.classList.remove('show'));
  }

  // 6. Range
  const range = document.getElementById('morRange');
  const rangeVal = document.getElementById('morRangeValue');
  if (range && rangeVal) {
    range.addEventListener('input', (e) => {
      rangeVal.textContent = e.target.value + '%';
    });
  }
});
