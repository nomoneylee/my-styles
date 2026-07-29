document.addEventListener('DOMContentLoaded', () => {
  const startBtn = document.getElementById('start-btn');
  const logBtn = document.getElementById('log-btn');
  const diaryInput = document.getElementById('diary-title');

  startBtn.addEventListener('click', () => {
    alert(`🌿 已開始記錄「${diaryInput.value}」冥想練習！`);
  });

  logBtn.addEventListener('click', () => {
    alert('開啟莫蘭迪個人養護日誌歷史分析...');
  });
});
