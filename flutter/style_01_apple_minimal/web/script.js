// Apple Minimal Web Interactive Script

document.addEventListener('DOMContentLoaded', () => {
  // Slider Value Sync
  const slider = document.getElementById('sample-slider');
  const sliderValText = document.getElementById('slider-val-text');
  const progressFill = document.getElementById('progress-fill');

  if (slider && sliderValText && progressFill) {
    slider.addEventListener('input', (e) => {
      const val = e.target.value;
      sliderValText.textContent = `${val}%`;
      progressFill.style.width = `${val}%`;
    });
  }

  // Segmented Control Switch
  const segmentBtns = document.querySelectorAll('.segment-btn');
  segmentBtns.forEach(btn => {
    btn.addEventListener('click', () => {
      segmentBtns.forEach(b => b.classList.remove('active'));
      btn.classList.add('active');
    });
  });

  // Modal Dialog
  const dialogTriggerBtn = document.getElementById('dialog-trigger-btn');
  const sampleDialog = document.getElementById('sample-dialog');
  const dialogCancel = document.getElementById('dialog-cancel');
  const dialogConfirm = document.getElementById('dialog-confirm');

  if (dialogTriggerBtn && sampleDialog) {
    dialogTriggerBtn.addEventListener('click', () => {
      sampleDialog.classList.remove('hidden');
    });

    const closeDialog = () => sampleDialog.classList.add('hidden');
    if (dialogCancel) dialogCancel.addEventListener('click', closeDialog);
    if (dialogConfirm) dialogConfirm.addEventListener('click', closeDialog);
    sampleDialog.addEventListener('click', (e) => {
      if (e.target === sampleDialog) closeDialog();
    });
  }

  // Bottom Sheet
  const sheetTriggerBtn = document.getElementById('sheet-trigger-btn');
  const sampleSheet = document.getElementById('sample-sheet');
  const sheetShare = document.getElementById('sheet-share');
  const sheetCopy = document.getElementById('sheet-copy');

  if (sheetTriggerBtn && sampleSheet) {
    sheetTriggerBtn.addEventListener('click', () => {
      sampleSheet.classList.remove('hidden');
    });

    const closeSheet = () => sampleSheet.classList.add('hidden');
    if (sheetShare) sheetShare.addEventListener('click', closeSheet);
    if (sheetCopy) sheetCopy.addEventListener('click', closeSheet);
    sampleSheet.addEventListener('click', (e) => {
      if (e.target === sampleSheet) closeSheet();
    });
  }

  // Date & Time Picker Simulators
  const dateBtn = document.getElementById('date-picker-btn');
  const timeBtn = document.getElementById('time-picker-btn');

  if (dateBtn) {
    dateBtn.addEventListener('click', () => {
      const date = prompt('模擬選擇日期 (YYYY-MM-DD):', '2026-07-30');
      if (date) dateBtn.textContent = date;
    });
  }

  if (timeBtn) {
    timeBtn.addEventListener('click', () => {
      const time = prompt('模擬選擇時間 (HH:MM):', '14:30');
      if (time) timeBtn.textContent = time;
    });
  }

  // Bottom Navigation Bar
  const navItems = document.querySelectorAll('.nav-item');
  navItems.forEach(item => {
    item.addEventListener('click', () => {
      navItems.forEach(i => i.classList.remove('active'));
      item.classList.add('active');
    });
  });
});
