// Retro 70s Arcade Web Interactive Script

document.addEventListener('DOMContentLoaded', () => {
  const slider = document.getElementById('sample-slider');
  const sliderValText = document.getElementById('slider-val-text');
  const progressValText = document.getElementById('progress-val-text');
  const progressFill = document.getElementById('progress-fill');

  if (slider && sliderValText && progressFill) {
    slider.addEventListener('input', (e) => {
      const val = e.target.value;
      sliderValText.textContent = `${val}%`;
      if (progressValText) progressValText.textContent = `TRACK PROGRESS: ${val}%`;
      progressFill.style.width = `${val}%`;
    });
  }

  const segmentBtns = document.querySelectorAll('.segment-btn');
  segmentBtns.forEach(btn => {
    btn.addEventListener('click', () => {
      segmentBtns.forEach(b => b.classList.remove('active'));
      btn.classList.add('active');
    });
  });

  const dialogTriggerBtn = document.getElementById('dialog-trigger-btn');
  const sampleDialog = document.getElementById('sample-dialog');
  const dialogClose = document.getElementById('dialog-close');

  if (dialogTriggerBtn && sampleDialog) {
    dialogTriggerBtn.addEventListener('click', () => sampleDialog.classList.remove('hidden'));
    if (dialogClose) dialogClose.addEventListener('click', () => sampleDialog.classList.add('hidden'));
  }

  const sheetTriggerBtn = document.getElementById('sheet-trigger-btn');
  const sampleSheet = document.getElementById('sample-sheet');
  const sheetClose = document.getElementById('sheet-close');

  if (sheetTriggerBtn && sampleSheet) {
    sheetTriggerBtn.addEventListener('click', () => sampleSheet.classList.remove('hidden'));
    if (sheetClose) sheetClose.addEventListener('click', () => sampleSheet.classList.add('hidden'));
  }

  const navItems = document.querySelectorAll('.nav-item');
  navItems.forEach(item => {
    item.addEventListener('click', () => {
      navItems.forEach(i => i.classList.remove('active'));
      item.classList.add('active');
    });
  });
});
