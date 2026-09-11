<link rel="stylesheet" href="<?= base_url('layout/css/categories.css'); ?>?v=<?= filemtime(FCPATH . 'layout/css/categories.css'); ?>">

<section class="page-section categories-section">
    <div class="container">
        <!-- Section Header -->
        <div class="section-heading">
            <h2>Discover Institutes to test your Products</h2>
        </div>

        <?php
        $categories = [
            [
                'name'  => 'Water',
                'url'   => 'eproduct_water',
                'image' => 'water.png',
                'desc'  => 'Drinking, waste & ground water analysis'
            ],
            [
                'name'  => 'Soil',
                'url'   => 'eproduct_soil',
                'image' => 'soil.png',
                'desc'  => 'Agricultural, geological & environmental soil'
            ],
            [
                'name'  => 'Pharmaceutical',
                'url'   => 'eproduct_pharmaceutical',
                'image' => 'pharm.png',
                'desc'  => 'Formulations, medicines & active APIs'
            ],
            [
                'name'  => 'Food',
                'url'   => 'eproduct_food',
                'image' => 'food.png',
                'desc'  => 'Nutrition, food safety & microbial assays'
            ],
            [
                'name'  => 'Metal',
                'url'   => 'eproduct_metal',
                'image' => 'metal.png',
                'desc'  => 'Alloys, metallurgy & elemental analysis'
            ],
            [
                'name'  => 'Cosmetic',
                'url'   => 'eproduct_cosmetic',
                'image' => 'cos.png',
                'desc'  => 'Personal care, skincare & safety standards'
            ],
            [
                'name'  => 'Sewage',
                'url'   => 'eproduct_sewage',
                'image' => 'sewage.png',
                'desc'  => 'Industrial effluent & wastewater treatment'
            ],
            [
                'name'  => 'Mineral',
                'url'   => 'eproduct_mineral',
                'image' => 'mineral.png',
                'desc'  => 'Ores, rocks & geochemical minerals'
            ],
            [
                'name'  => 'Fiber',
                'url'   => 'eproduct_fiber',
                'image' => 'fiber.png',
                'desc'  => 'Textiles, polymers & composite materials'
            ],
            [
                'name'  => 'Gas',
                'url'   => 'eproduct_gas',
                'image' => 'gas.png',
                'desc'  => 'Air quality, emissions & compressed gases'
            ],
        ];
        ?>

        <!-- Categories Grid -->
        <div class="categories-grid">
            <?php foreach ($categories as $category): ?>
                <a href="<?= base_url($category['url']); ?>" class="category-card" title="Explore <?= htmlspecialchars($category['name'], ENT_QUOTES, 'UTF-8'); ?> Testing Services">
                    <div class="category-icon">
                        <img src="<?= base_url('layout/img/home/' . $category['image']); ?>" alt="<?= htmlspecialchars($category['name'], ENT_QUOTES, 'UTF-8'); ?>">
                    </div>
                    <h5><?= htmlspecialchars($category['name'], ENT_QUOTES, 'UTF-8'); ?></h5>
                </a>
            <?php endforeach; ?>
        </div>

        <!-- Section CTA Footer -->
        <div class="category-cta-wrapper">
            <a href="<?= base_url('eproduct_instituteView'); ?>" class="category-button">
                <span>View All Categories &amp; Institutes</span>
                <i class="fas fa-arrow-right"></i>
            </a>
        </div>
    </div>
</section>