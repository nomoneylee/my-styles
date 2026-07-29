document.addEventListener('DOMContentLoaded', () => {
  const stakeBtn = document.getElementById('stake-btn');
  const explorerBtn = document.getElementById('explorer-btn');
  const contractInput = document.getElementById('contract-addr');
  const blurBtn = document.getElementById('blur-btn');
  const blobs = document.querySelectorAll('.blob');

  stakeBtn.addEventListener('click', () => {
    alert(`✨ 質押指令已發送至網頁合約：${contractInput.value}`);
  });

  explorerBtn.addEventListener('click', () => {
    alert('正在開啟 Etherscan 區塊鏈瀏覽器...');
  });

  blurBtn.addEventListener('click', () => {
    blobs.forEach(blob => {
      blob.style.transform = blob.style.transform === 'scale(1.3)' ? 'scale(1)' : 'scale(1.3)';
    });
  });
});
