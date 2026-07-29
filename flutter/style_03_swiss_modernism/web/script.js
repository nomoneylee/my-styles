document.addEventListener('DOMContentLoaded', () => {
  const pdfBtn = document.getElementById('pdf-btn');
  const exportBtn = document.getElementById('export-btn');
  const gridSwitch = document.getElementById('grid-switch');

  pdfBtn.addEventListener('click', () => {
    alert('SWISS GRID PDF 匯出完成！');
  });

  exportBtn.addEventListener('click', () => {
    alert('GRID SYSTEM 規格 JSON 已成功複製至剪貼簿！');
  });

  gridSwitch.addEventListener('change', (e) => {
    if (e.target.checked) {
      document.body.style.backgroundImage = 'linear-gradient(to right, rgba(0,0,0,0.03) 1px, transparent 1px)';
      document.body.style.backgroundSize = '20px 100%';
    } else {
      document.body.style.backgroundImage = 'none';
    }
  });
});
