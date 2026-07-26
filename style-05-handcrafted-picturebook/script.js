/**
 * Style 05: Handcrafted Picturebook Style (Pure Vanilla JS)
 */
document.addEventListener('DOMContentLoaded', () => {
  // 0. Navbar 行動端漢堡選單對折 Collapse
  const toggler = document.getElementById('pbNavbarToggler');
  const collapse = document.getElementById('pbNavbarCollapse');
  if (toggler && collapse) {
    toggler.addEventListener('click', () => collapse.classList.toggle('show'));
  }

  // 1. Accordion 手風琴折疊
  document.querySelectorAll('.pb-accordion-header').forEach(header => {
    header.addEventListener('click', () => {
      header.parentElement.classList.toggle('open');
    });
  });

  // 2. Modal 控制
  const modal = document.getElementById('modalOverlay');
  const openModal = document.getElementById('openModal');
  const closeModal = document.getElementById('closeModal');
  const closeModalBtn = document.getElementById('closeModalBtn');

  if (openModal && modal) {
    openModal.addEventListener('click', () => modal.classList.add('active'));
  }
  const hideModal = () => { if (modal) modal.classList.remove('active'); };
  if (closeModal) closeModal.addEventListener('click', hideModal);
  if (closeModalBtn) closeModalBtn.addEventListener('click', hideModal);

  // 3. Offcanvas 控制
  const offcanvas = document.getElementById('offcanvasElement');
  const openOffcanvas = document.getElementById('openOffcanvas');
  const closeOffcanvas = document.getElementById('closeOffcanvas');

  if (openOffcanvas && offcanvas) {
    openOffcanvas.addEventListener('click', () => offcanvas.classList.add('active'));
  }
  if (closeOffcanvas && offcanvas) {
    closeOffcanvas.addEventListener('click', () => offcanvas.classList.remove('active'));
  }
});
