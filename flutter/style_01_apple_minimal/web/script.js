document.addEventListener('DOMContentLoaded', () => {
  const syncBtn = document.getElementById('sync-btn');
  const resetBtn = document.getElementById('reset-btn');
  const progressFill = document.getElementById('progress-fill');
  const deviceNameInput = document.getElementById('device-name');
  const wifiSwitch = document.getElementById('wifi-switch');

  syncBtn.addEventListener('click', () => {
    syncBtn.style.transform = 'scale(0.97)';
    setTimeout(() => {
      syncBtn.style.transform = 'scale(1)';
      alert(`已成功同步「${deviceNameInput.value}」的裝置狀態！`);
    }, 150);
  });

  resetBtn.addEventListener('click', () => {
    progressFill.style.width = '50%';
    deviceNameInput.value = 'Apple Silicon M3 Max';
    wifiSwitch.checked = true;
    const metricText = document.querySelector('.metric-text');
    if (metricText) {
      metricText.textContent = 'CPU 負載 50%';
    }
  });
});
