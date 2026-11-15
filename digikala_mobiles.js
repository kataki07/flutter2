const fs = require('fs');

async function getDigikalaMobiles(page = 1) {
  try {
    const url = `https://api.digikala.com/v1/categories/mobile-phone/search/?page=${page}`;
    const response = await fetch(url, {
      headers: {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)'
      }
    });
    
    const result = await response.json();
    const products = result.data.products.map(p => ({
      id: p.id,
      title: p.title_fa,
      price: p.default_variant?.price?.selling_price ? `${(p.default_variant.price.selling_price / 10).toLocaleString()} تومان` : 'ناموجود',
      url: `https://www.digikala.com${p.url.uri}`
    }));

    fs.writeFileSync('mobiles.json', JSON.stringify(products, null, 2), 'utf-8');
    console.log(`تعداد ${products.length} موبایل در mobiles.json ذخیره شد.`);
  } catch (error) {
    console.error('خطا در دریافت اطلاعات:', error.message);
  }
}

getDigikalaMobiles(1);
