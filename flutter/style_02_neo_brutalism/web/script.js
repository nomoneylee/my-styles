document.addEventListener('DOMContentLoaded', () => {
  const cartBtn = document.getElementById('cart-btn');
  const favBtn = document.getElementById('fav-btn');
  const promoInput = document.getElementById('promo-code');
  const flashBtn = document.getElementById('flash-btn');

  cartBtn.addEventListener('click', () => {
    alert(`⚡ [CYBER_HOODIE #09] 已加入購物車！優惠碼：${promoInput.value}`);
  });

  favBtn.addEventListener('click', () => {
    favBtn.style.backgroundColor = '#FF6B6B';
    favBtn.textContent = '★ 已收藏';
  });

  flashBtn.addEventListener('click', () => {
    document.body.style.backgroundColor = document.body.style.backgroundColor === 'rgb(255, 230, 109)' ? '#F4F4F0' : '#FFE66D';
  });
});
