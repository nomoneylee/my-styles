document.addEventListener('DOMContentLoaded', () => {
  const execBtn = document.getElementById('exec-btn');
  const clearBtn = document.getElementById('clear-btn');
  const cliInput = document.getElementById('cli-input');

  execBtn.addEventListener('click', () => {
    alert(`💻 CLI 指令執行：[${cliInput.value}] 完成！系統傳輸正常。`);
  });

  clearBtn.addEventListener('click', () => {
    cliInput.value = '';
    alert('Log 快取已清空。');
  });
});
