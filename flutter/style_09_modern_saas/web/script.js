document.addEventListener('DOMContentLoaded', () => {
  const upgradeBtn = document.getElementById('upgrade-btn');
  const csvBtn = document.getElementById('csv-btn');
  const saasDomainInput = document.getElementById('saas-domain');

  upgradeBtn.addEventListener('click', () => {
    alert(`🚀 [${saasDomainInput.value}] 升級企業 Pro 方案發票已發送！`);
  });

  csvBtn.addEventListener('click', () => {
    alert('ARR 財務報表已自動產出並下載 CSV 檔案！');
  });
});
