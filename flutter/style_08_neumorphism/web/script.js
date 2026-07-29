document.addEventListener('DOMContentLoaded', () => {
  const saveBtn = document.getElementById('save-btn');
  const resetBtn = document.getElementById('reset-btn');
  const deviceInput = document.getElementById('device-id');

  saveBtn.addEventListener('click', () => {
    alert(`🎛️ 擬物雕刻參數 [${deviceInput.value}] 已成功更新！`);
  });

  resetBtn.addEventListener('click', () => {
    deviceInput.value = 'SMART_HOME_HUB_PRO';
  });
});
