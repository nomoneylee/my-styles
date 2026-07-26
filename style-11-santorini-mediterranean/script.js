/**
 * Style 11: 希臘聖托里尼 / 地中海度假風 (Santorini Mediterranean Style)
 * Pure Vanilla JS - 100% 自建無外部依賴
 */
document.addEventListener('DOMContentLoaded', () => {
  // 0. Navbar 行動端漢堡選單對折
  const navToggler = document.getElementById('stNavbarToggler');
  const navCollapse = document.getElementById('stNavbarCollapse');
  if (navToggler && navCollapse) {
    navToggler.addEventListener('click', () => {
      navCollapse.classList.toggle('show');
    });
  }

  // 1. Accordion 手風琴展開/收合
  const accordionHeaders = document.querySelectorAll('.st-accordion-header');
  accordionHeaders.forEach(header => {
    header.addEventListener('click', () => {
      const item = header.parentElement;
      item.classList.toggle('open');
    });
  });

  // 2. Modal 對話框控制
  const modalOverlay = document.getElementById('stModalOverlay');
  const openModalBtn = document.getElementById('openModal');
  const closeModalBtns = document.querySelectorAll('.st-close-modal');

  if (openModalBtn && modalOverlay) {
    openModalBtn.addEventListener('click', () => {
      modalOverlay.classList.add('active');
    });
  }

  const closeModal = () => {
    if (modalOverlay) modalOverlay.classList.remove('active');
  };

  closeModalBtns.forEach(btn => btn.addEventListener('click', closeModal));
  if (modalOverlay) {
    modalOverlay.addEventListener('click', (e) => {
      if (e.target === modalOverlay) closeModal();
    });
  }

  // 3. Offcanvas 側邊欄
  const offcanvas = document.getElementById('stOffcanvas');
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

  // 4. Tabs 分頁切換
  const tabBtns = document.querySelectorAll('.st-tab-btn');
  const tabPanes = document.querySelectorAll('.st-tab-pane');

  tabBtns.forEach(btn => {
    btn.addEventListener('click', () => {
      const targetId = btn.getAttribute('data-tab');
      tabBtns.forEach(b => b.classList.remove('active'));
      tabPanes.forEach(p => p.classList.remove('active'));

      btn.classList.add('active');
      const targetPane = document.getElementById(targetId);
      if (targetPane) targetPane.classList.add('active');
    });
  });
});
