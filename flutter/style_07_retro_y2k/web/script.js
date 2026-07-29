document.addEventListener('DOMContentLoaded', () => {
  const okBtn = document.getElementById('ok-btn');
  const cancelBtn = document.getElementById('cancel-btn');
  const cmdInput = document.getElementById('cmd-input');
  const closeBtn = document.getElementById('close-btn');

  okBtn.addEventListener('click', () => {
    alert(`💾 指令 [${cmdInput.value}] 執行完畢！`);
  });

  cancelBtn.addEventListener('click', () => {
    cmdInput.value = 'C:\\WINDOWS\\SYSTEM32\\Y2K.EXE';
  });

  closeBtn.addEventListener('click', () => {
    alert('無法關閉系統重要程式！');
  });
});
