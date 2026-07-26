/**
 * Style 01: Apple / Premium Design Magazine (Pure Vanilla JS)
 */
document.addEventListener('DOMContentLoaded', () => {
  // 0. Navbar 行動端漢堡選單對折 (Bootstrap-style Collapse)
  const navToggler = document.getElementById('apNavbarToggler');
  const navCollapse = document.getElementById('apNavbarCollapse');
  if (navToggler && navCollapse) {
    navToggler.addEventListener('click', () => {
      navCollapse.classList.toggle('show');
    });
  }

  // 1. Accordion 手風琴展開/收合邏輯
  const accordionHeaders = document.querySelectorAll('.ap-accordion-header');
  accordionHeaders.forEach(header => {
    header.addEventListener('click', () => {
      const item = header.parentElement;
      item.classList.toggle('open');
    });
  });

  // 2. Modal 對話框控制邏輯
  const modalOverlay = document.getElementById('modalOverlay');
  const openModalBtn = document.getElementById('openModal');
  const closeModalBtn = document.getElementById('closeModal');
  const closeModalConfirmBtn = document.getElementById('closeModalBtn');

  if (openModalBtn && modalOverlay) {
    openModalBtn.addEventListener('click', () => {
      modalOverlay.classList.add('active');
    });
  }

  const closeModal = () => {
    if (modalOverlay) modalOverlay.classList.remove('active');
  };

  if (closeModalBtn) closeModalBtn.addEventListener('click', closeModal);
  if (closeModalConfirmBtn) closeModalConfirmBtn.addEventListener('click', closeModal);
  if (modalOverlay) {
    modalOverlay.addEventListener('click', (e) => {
      if (e.target === modalOverlay) closeModal();
    });
  }

  // 3. Offcanvas 側邊視窗控制邏輯
  const offcanvas = document.getElementById('offcanvasElement');
  const openOffcanvasBtn = document.getElementById('openOffcanvas');
  const closeOffcanvasBtn = document.getElementById('closeOffcanvas');

  if (openOffcanvasBtn && offcanvas) {
    openOffcanvasBtn.addEventListener('click', () => {
      offcanvas.classList.add('active');
    });
  }

  if (closeOffcanvasBtn && offcanvas) {
    closeOffcanvasBtn.addEventListener('click', () => {
      offcanvas.classList.remove('active');
    });
  }
});
