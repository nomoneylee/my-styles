/**
 * Style 21: 溫室植物 / 自然選品風 (Botanical Concept)
 * 100% Pure Vanilla JS Interaction Logic
 */

document.addEventListener('DOMContentLoaded', () => {
  // 1. Mobile Navbar Toggle
  const navbarToggler = document.getElementById('navbarToggler');
  const navCollapse = document.getElementById('navCollapse');
  if (navbarToggler && navCollapse) {
    navbarToggler.addEventListener('click', () => {
      navCollapse.classList.toggle('show');
    });
  }

  // 2. Accordion Interaction
  const accordionHeaders = document.querySelectorAll('.bot-accordion-header');
  accordionHeaders.forEach(header => {
    header.addEventListener('click', () => {
      const body = header.nextElementSibling;
      const isActive = header.classList.contains('active');

      // Close all other accordions
      document.querySelectorAll('.bot-accordion-header').forEach(h => {
        h.classList.remove('active');
        if (h.nextElementSibling) h.nextElementSibling.classList.remove('show');
      });

      if (!isActive) {
        header.classList.add('active');
        body.classList.add('show');
      }
    });
  });

  // 3. Tabs Switching
  const tabBtns = document.querySelectorAll('.bot-tab-btn');
  tabBtns.forEach(btn => {
    btn.addEventListener('click', () => {
      const targetId = btn.getAttribute('data-target');

      document.querySelectorAll('.bot-tab-btn').forEach(b => b.classList.remove('active'));
      document.querySelectorAll('.bot-tab-pane').forEach(p => p.classList.remove('active'));

      btn.classList.add('active');
      const targetPane = document.getElementById(targetId);
      if (targetPane) targetPane.classList.add('active');
    });
  });

  // 4. Modal Open & Close
  const openModalBtn = document.getElementById('openModalBtn');
  const closeModalBtn = document.getElementById('closeModalBtn');
  const botModal = document.getElementById('botModal');

  if (openModalBtn && botModal) {
    openModalBtn.addEventListener('click', () => {
      botModal.classList.add('show');
    });
  }
  if (closeModalBtn && botModal) {
    closeModalBtn.addEventListener('click', () => {
      botModal.classList.remove('show');
    });
  }
  if (botModal) {
    botModal.addEventListener('click', (e) => {
      if (e.target === botModal) {
        botModal.classList.remove('show');
      }
    });
  }

  // 5. Offcanvas Drawer
  const openOffcanvasBtn = document.getElementById('openOffcanvasBtn');
  const closeOffcanvasBtn = document.getElementById('closeOffcanvasBtn');
  const botOffcanvas = document.getElementById('botOffcanvas');

  if (openOffcanvasBtn && botOffcanvas) {
    openOffcanvasBtn.addEventListener('click', () => {
      botOffcanvas.classList.add('show');
    });
  }
  if (closeOffcanvasBtn && botOffcanvas) {
    closeOffcanvasBtn.addEventListener('click', () => {
      botOffcanvas.classList.remove('show');
    });
  }

  // 6. Range Input Binding
  const rangeInput = document.getElementById('botRange');
  const rangeValue = document.getElementById('botRangeValue');
  if (rangeInput && rangeValue) {
    rangeInput.addEventListener('input', (e) => {
      rangeValue.textContent = e.target.value + '%';
    });
  }
});
