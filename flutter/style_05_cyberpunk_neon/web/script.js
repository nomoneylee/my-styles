document.addEventListener('DOMContentLoaded', () => {
  const overclockBtn = document.getElementById('overclock-btn');
  const backupBtn = document.getElementById('backup-btn');
  const neonKeyInput = document.getElementById('neon-key');
  const glowBtn = document.getElementById('glow-btn');

  overclockBtn.addEventListener('click', () => {
    alert(`⚡ 量子超頻指令：[${neonKeyInput.value}] 執行完畢！核心運作效率提升 +120%！`);
  });

  backupBtn.addEventListener('click', () => {
    alert('神經元矩陣備份檔已寫入冷存儲晶片！');
  });

  glowBtn.addEventListener('click', () => {
    const cards = document.querySelectorAll('.neon-card');
    cards.forEach(card => {
      card.style.boxShadow = card.style.boxShadow.includes('25px') ? '0 0 15px rgba(0, 240, 255, 0.2)' : '0 0 25px #FF007A';
    });
  });
});
