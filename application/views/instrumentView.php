<?php
  // ------------------------------------------------------------------ //
  // Instrument data extraction (must run before the <head> uses $instrumentName)
  // ------------------------------------------------------------------ //
  $instrumentId = '';
  $instrumentbaseid = '';
  $instrumentType = '';
  $instrumentName = '';
  $parameters = '';
  $instituteName = '';
  $facultyName = '';
  $departmentName = '';
  $laboratoryName = '';
  $condition = '';
  $manufacturer = '';
  $model = '';
  $mYear = '';
  $accessories = '';
  $instdescription = '';
  $instkeywords = '';
  $description = '';
  $catalogLink = '';
  $catalogUpload = '';
  $imageUpload1 = '';
  $imageUpload2 = '';
  $imageUpload3 = '';
  $imageUpload4 = '';
  $catalogAccess = '';
  $price = '';
  $scharge = '';
  $vendorName = '';
  $vendorContact = '';
  $vendorUrl = '';
  $samplesNo = '';
  $samplesPerDay = '';
  $usageHour = '';
  $staffName = '';
  $externalResearch = '';
  $FundingSource = '';
  $operationsDate = '';
  $recordStatus = '';
  $contactPersonName = '';
  $contactPersonEmail = '';
  $contactPersonPhoneNumber = '';
  $contactPersonMobileNumber = '';
  $keywords = '';
  $relevantinstruments = '';
  $pcategories = '';
  $techspecification = '';

  if (!empty($instrumentInfo)) {
    foreach ($instrumentInfo as $if) {
      $instrumentId = $if->instrument_id;
      $instrumentbaseid = $if->instrument_id;
      $instrumentType = $if->instrument_type;
      $instrumentName = $if->instrument_name;
      $parameters = $if->parameters;
      $instituteName = $if->name;
      $facultyName = $if->faculty_name;
      $departmentName = $if->department_name;
      $laboratoryName = $if->laboratory_name;
      $condition = $if->instrument_condition;
      $manufacturer = $if->manufacturer;
      $model = $if->model;
      $mYear = $if->year_of_manufacture;
      $accessories = $if->accessories;
      $description = $if->description;
      $instdescription = $if->inst_description;
      $instkeywords = $if->inst_keywords;
      $catalogLink = $if->catalog_link;
      $catalogUpload = $if->catalog_upload;
      $imageUpload1 = $if->image_upload1;
      $imageUpload2 = $if->image_upload2;
      $imageUpload3 = $if->image_upload3;
      $imageUpload4 = $if->image_upload4;
      $catalogAccess = $if->catalog_access;
      $price = $if->price;
      $scharge = $if->service_charge;
      $vendorName = $if->vendor_name;
      $vendorContact = $if->vendor_contact;
      $vendorUrl = $if->vendor_url;
      $samplesNo = $if->no_of_samples_per_cycle;
      $samplesPerDay = $if->no_of_samples_per_day;
      $usageHour = $if->total_usage_hour_per_day;
      $staffName = $if->availabiltiy_of_staff;
      $externalResearch = $if->external_researchers;
      $FundingSource = $if->funding_source;
      $operationsDate = $if->date_commencement_operation;
      $recordStatus = $if->record_status;
      $contactPersonName = $if->contact_person_name;
      $contactPersonEmail = $if->contact_person_email;
      $contactPersonPhoneNumber = $if->contact_person_phone_number;
      $contactPersonMobileNumber = $if->contact_person_mobile_number;
      $keywords = $if->keywords;
      $relevantinstruments = $if->relevant_instruments;
      $pcategories = $if->p_categories;
      $techspecification = $if->specification;
    }
  }

  $prevId = max(1, (int)$instrumentId - 1);
  $nextId = (int)$instrumentId + 1;

  $mainImages = array();
  if (!empty($imageUpload1)) $mainImages[] = 'catalogUploads/' . rawurlencode($imageUpload1);
  if (!empty($imageUpload2)) $mainImages[] = 'catalogUploads/' . rawurlencode($imageUpload2);
  if (!empty($imageUpload3)) $mainImages[] = 'catalogUploads/' . rawurlencode($imageUpload3);
  if (!empty($imageUpload4)) $mainImages[] = 'catalogUploads/' . rawurlencode($imageUpload4);
  if (count($mainImages) == 0) $mainImages[] = 'layout/img/lab.png';

  $pageUrl = current_url();

  function is_filled($v)
  {
    return $v !== null && trim((string)$v) !== '';
  }
  ?>
<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title><?php echo htmlspecialchars($instrumentName); ?> | National Instrument Database</title>
  <link rel="icon" href="<?= base_url(); ?>layout/img/ph3.jpg">
  <link rel="stylesheet" href="<?= base_url(); ?>layout/css/bootstrap.min.css">
  <link rel="stylesheet" href="<?= base_url(); ?>layout/css/all.css">
  <link rel="stylesheet" href="<?= base_url(); ?>layout/css/lightslider.min.css">
  <link rel="stylesheet" href="<?= base_url(); ?>layout/css/owl.carousel.min.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap">
  <style>
    :root {
      --primary: #EE9310;
      --primary-dark: #d9830b;
      --ink: #1a1f2b;
      --muted: #6b7280;
      --surface: #ffffff;
      --surface-alt: #f7f8fa;
      --border: #e5e7eb;
      --radius: 14px;
      --shadow: 0 1px 2px rgba(16, 24, 40, .04), 0 8px 24px -12px rgba(16, 24, 40, .12);
    }

    * {
      box-sizing: border-box;
    }

    body {
      font-family: 'Inter', -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif;
      background-color: var(--surface-alt) !important;
      color: var(--ink);
      -webkit-font-smoothing: antialiased;
    }

    a {
      color: var(--primary);
    }

    a:hover {
      color: var(--primary-dark);
    }

    /* ============ Breadcrumb ============ */
    .crumb-bar {
      background: #fff;
      border-bottom: 1px solid var(--border);
      padding: 14px 0;
      position: sticky;
      top: 80px;
      z-index: 980;
      box-shadow: 0 2px 10px -8px rgba(16, 24, 40, .2);
    }

    .crumb-bar .crumb-list {
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      list-style: none;
      margin: 0;
      padding: 0;
      font-size: 13.5px;
    }

    .crumb-bar .crumb-list li {
      display: flex;
      align-items: center;
    }

    .crumb-bar .crumb-list a {
      color: var(--muted);
      text-decoration: none;
      font-weight: 500;
    }

    .crumb-bar .crumb-list a:hover {
      color: var(--primary);
    }

    .crumb-bar .crumb-list .sep {
      color: #d1d5db;
      margin: 0 10px;
    }

    .crumb-bar .crumb-list .current {
      color: var(--ink);
      font-weight: 600;
      max-width: 420px;
      overflow: hidden;
      white-space: nowrap;
      text-overflow: ellipsis;
    }

    /* ============ Product layout ============ */
    .product-shell {
      padding: 32px 0 0;
    }

    .card-modern {
      background: var(--surface);
      border: 1px solid var(--border);
      border-radius: var(--radius);
      box-shadow: var(--shadow);
    }

    .card-modern .card-head {
      padding: 18px 22px 14px;
      border-bottom: 1px solid var(--border);
    }

    .card-modern .card-head h2 {
      font-size: 17px;
      font-weight: 700;
      letter-spacing: -0.01em;
      margin: 0;
    }

    .card-modern .card-body {
      padding: 22px;
    }

    /* ============ Gallery ============ */
    .gallery-card {
      padding: 14px;
      overflow: hidden;
    }

    #vertical {
      height: 460px;
      max-height: 460px;
      overflow: hidden;
    }

    #vertical li {
      height: 460px;
      max-height: 460px;
      overflow: hidden;
    }

    #vertical li img {
      max-width: 100%;
      max-height: 460px;
      width: auto;
      height: 460px;
      object-fit: contain;
      border-radius: 10px;
      background: #fff;
    }

    .lSSlideOuter {
      max-height: 460px;
      overflow: hidden;
    }

    .lSSlideOuter .lSSlideWrapper {
      max-height: 460px;
      overflow: hidden;
    }

    .lSSlideOuter .lSPager.lSGallery {
      border-radius: 8px;
      max-height: 460px;
      overflow: hidden;
    }

    .lSSlideOuter .lSPager.lSGallery li {
      border-radius: 8px;
      overflow: hidden;
      border: 2px solid var(--border);
      opacity: .6;
      transition: opacity .2s ease, border-color .2s ease;
    }

    .lSSlideOuter .lSPager.lSGallery li.active,
    .lSSlideOuter .lSPager.lSGallery li:hover {
      opacity: 1;
      border-color: var(--primary);
    }

    .lSSlideOuter .lSPager.lSGallery img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }

    @media (max-width: 575.98px) {
      #vertical,
      #vertical li,
      .lSSlideOuter,
      .lSSlideOuter .lSSlideWrapper,
      .lSSlideOuter .lSPager.lSGallery {
        height: 300px;
        max-height: 300px;
      }

      #vertical li img {
        height: 300px;
        max-height: 300px;
      }
    }

    /* ============ Info panel ============ */
    .info-panel {
      display: flex;
      flex-direction: column;
      height: 100%;
    }

    .product-badge {
      display: inline-flex;
      align-items: center;
      gap: 6px;
      background: #fff3df;
      color: #7a4a00;
      font-size: 12px;
      font-weight: 700;
      letter-spacing: .04em;
      text-transform: uppercase;
      padding: 6px 12px;
      border-radius: 999px;
      margin-bottom: 12px;
    }

    .product-name {
      font-size: 27px;
      font-weight: 800;
      letter-spacing: -0.02em;
      line-height: 1.2;
      margin-bottom: 6px;
    }

    .product-institute {
      color: var(--muted);
      font-size: 15px;
      font-weight: 500;
      margin-bottom: 16px;
    }

    .product-institute i {
      color: var(--primary);
      margin-right: 6px;
    }

    .fact-list {
      list-style: none;
      margin: 0 0 20px;
      padding: 0;
    }

    .fact-list li {
      display: flex;
      align-items: flex-start;
      gap: 10px;
      padding: 9px 0;
      border-bottom: 1px dashed var(--border);
      font-size: 14px;
    }

    .fact-list li:last-child {
      border-bottom: none;
    }

    .fact-list .ft-label {
      width: 118px;
      min-width: 118px;
      color: var(--muted);
      font-weight: 500;
    }

    .fact-list .ft-value {
      color: var(--ink);
      font-weight: 600;
    }

    .fact-list .ft-value a {
      text-decoration: none;
      font-weight: 600;
    }

    .price-block {
      background: #fff9f0;
      border: 1px solid #ffe2b8;
      border-radius: 12px;
      padding: 14px 18px;
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 12px;
      margin-bottom: 18px;
    }

    .price-block .p-label {
      font-size: 13px;
      color: var(--muted);
      font-weight: 600;
      letter-spacing: .03em;
      text-transform: uppercase;
    }

    .price-block .p-value {
      font-size: 22px;
      font-weight: 800;
      color: var(--primary-dark);
    }

    .price-block .p-value small {
      font-size: 14px;
      font-weight: 700;
    }

    .cta-row {
      display: flex;
      flex-wrap: wrap;
      gap: 10px;
      margin-bottom: 20px;
    }

    .btn-cta {
      flex: 1 1 150px;
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
      font-size: 14.5px;
      font-weight: 700;
      padding: 13px 18px;
      border-radius: 10px;
      border: 1px solid var(--primary);
      background: var(--primary);
      color: #fff !important;
      text-decoration: none !important;
      transition: all .2s ease;
    }

    .btn-cta:hover {
      background: var(--primary-dark);
      border-color: var(--primary-dark);
    }

    .btn-cta-outline {
      background: #fff;
      color: var(--ink) !important;
      border-color: var(--border);
    }

    .btn-cta-outline:hover {
      border-color: var(--primary);
      color: var(--primary) !important;
      background: #fff9f0;
    }

    .nav-adjacent {
      display: flex;
      align-items: center;
      gap: 8px;
      font-size: 14px;
      color: var(--muted);
      margin-top: auto;
      padding-top: 16px;
      border-top: 1px solid var(--border);
    }

    .nav-adjacent a {
      display: inline-flex;
      align-items: center;
      gap: 6px;
      font-weight: 600;
      text-decoration: none;
      padding: 7px 12px;
      border: 1px solid var(--border);
      border-radius: 8px;
      color: var(--ink);
      transition: all .2s ease;
    }

    .nav-adjacent a:hover {
      border-color: var(--primary);
      color: var(--primary);
      background: #fff9f0;
    }

    .share-row {
      display: flex;
      align-items: center;
      gap: 8px;
      margin-top: 14px;
    }

    .share-row span {
      font-size: 13px;
      color: var(--muted);
      font-weight: 600;
    }

    .share-btn {
      width: 34px;
      height: 34px;
      border-radius: 8px;
      display: inline-flex;
      align-items: center;
      justify-content: center;
      color: #fff;
      font-size: 14px;
      text-decoration: none !important;
      transition: transform .2s ease, opacity .2s ease;
    }

    .share-btn:hover {
      transform: translateY(-2px);
      opacity: .9;
    }

    .share-fb {
      background: #3b5998;
    }

    .share-tw {
      background: #1da1f2;
    }

    .share-wa {
      background: #25d366;
    }

    /* ============ Tabs ============ */
    .tabs-wrap {
      margin-top: 8px;
    }

    .tab-nav-modern {
      display: flex;
      flex-wrap: wrap;
      gap: 8px;
      border: none;
      margin-bottom: 20px;
    }

    .tab-nav-modern .nav-link {
      background: #fff;
      border: 1px solid var(--border);
      color: var(--muted);
      border-radius: 10px;
      padding: 10px 18px;
      font-weight: 600;
      font-size: 14px;
      transition: all .2s ease;
    }

    .tab-nav-modern .nav-link:hover {
      border-color: var(--primary);
      color: var(--primary);
    }

    .tab-nav-modern .nav-link.active {
      background: var(--primary);
      color: #fff !important;
      border-color: var(--primary);
    }

    .spec-table {
      width: 100%;
      border-collapse: separate;
      border-spacing: 0;
    }

    .spec-table td {
      padding: 13px 16px;
      font-size: 14px;
      border-bottom: 1px solid var(--border);
      vertical-align: top;
      background: #fff;
    }

    .spec-table tr:last-child td {
      border-bottom: none;
    }

    .spec-table td:first-child {
      width: 38%;
      min-width: 190px;
      font-weight: 700;
      color: #374151;
      background: #f8fafc;
    }

    .contact-grid .spec-table td:first-child {
      width: 30%;
      min-width: 170px;
    }

    .dev-note {
      text-align: center;
      padding: 60px 20px;
      color: var(--muted);
    }

    .dev-note i {
      font-size: 44px;
      color: var(--primary);
      display: block;
      margin-bottom: 14px;
    }

    .dev-note h4 {
      font-size: 20px;
      font-weight: 700;
      color: var(--ink);
    }

    /* ============ Related instruments ============ */
    .related-section {
      padding: 44px 0 20px;
    }

    .section-title {
      font-size: 22px;
      font-weight: 800;
      letter-spacing: -0.01em;
      margin-bottom: 24px;
      text-align: center;
    }

    .section-title::after {
      content: "";
      display: block;
      width: 46px;
      height: 4px;
      border-radius: 4px;
      background: var(--primary);
      margin: 10px auto 0;
    }

    .related-card {
      background: #fff;
      border: 1px solid var(--border);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
      transition: transform .2s ease, box-shadow .2s ease;
      height: 360px;
      display: flex;
      flex-direction: column;
    }

    .related-card:hover {
      transform: translateY(-4px);
      box-shadow: 0 18px 40px -18px rgba(16, 24, 40, .25);
    }

    .related-card .thumb {
      height: 190px;
      min-height: 190px;
      background: var(--surface-alt);
      display: flex;
      align-items: center;
      justify-content: center;
      overflow: hidden;
      border-bottom: 1px solid var(--border);
    }

    .related-card .thumb img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }

    .related-card .body {
      padding: 14px 16px 16px;
      display: flex;
      flex-direction: column;
      flex: 1;
      overflow: hidden;
    }

    .related-card .body h5 {
      font-size: 15px;
      font-weight: 700;
      line-height: 1.35;
      margin-bottom: 4px;
      display: -webkit-box;
      -webkit-line-clamp: 2;
      -webkit-box-orient: vertical;
      overflow: hidden;
    }

    .related-card .body .inst {
      font-size: 12.5px;
      color: var(--muted);
      margin-bottom: 14px;
      white-space: nowrap;
      overflow: hidden;
      text-overflow: ellipsis;
    }

    .related-card .body .btn-view {
      margin-top: auto;
      text-align: center;
      display: block;
      font-size: 13.5px;
      font-weight: 700;
      padding: 10px 14px;
      border-radius: 9px;
      background: #fff9f0;
      border: 1px solid var(--primary);
      color: var(--primary-dark);
      text-decoration: none !important;
      transition: all .2s ease;
    }

    .related-card .body .btn-view:hover {
      background: var(--primary);
      color: #fff;
    }

    .best_product_slider .owl-nav {
      text-align: center;
      margin-top: 14px;
    }

    .best_product_slider .owl-nav button {
      width: 40px;
      height: 40px;
      border-radius: 10px !important;
      background: #fff !important;
      border: 1px solid var(--border) !important;
      color: var(--ink) !important;
      margin: 0 5px;
      transition: all .2s ease;
    }

    .best_product_slider .owl-nav button:hover {
      background: var(--primary) !important;
      border-color: var(--primary) !important;
      color: #fff !important;
    }

    .best_product_slider .owl-nav .owl-prev.disabled,
    .best_product_slider .owl-nav .owl-next.disabled {
      opacity: .35;
    }

    @media (max-width: 767.98px) {
      .product-shell {
        padding: 20px 0 0;
      }

      .fact-list .ft-label {
        width: 102px;
        min-width: 102px;
      }

      .spec-table td:first-child {
        width: 40%;
        min-width: 130px;
      }
    }
  </style>
</head>

<body>

  <!-- ============ Navbar ============ -->
  <?php $this->load->view('home/partials/navbar_v2'); ?>

  <!-- ============ Breadcrumb ============ -->
  <div class="crumb-bar">
    <div class="container">
      <ol class="crumb-list">
        <li><a href="<?= base_url('home'); ?>">Home</a></li>
        <li class="sep"><i class="fa fa-angle-right" aria-hidden="true"></i></li>
        <li><a href="<?= base_url('einstrumentView'); ?>">Instruments</a></li>
        <li class="sep"><i class="fa fa-angle-right" aria-hidden="true"></i></li>
        <li class="current"><?= htmlspecialchars($instrumentName); ?></li>
      </ol>
    </div>
  </div>

  <!-- ============ Product section ============ -->
  <section class="product-shell">
    <div class="container">
      <div class="row">

        <!-- Gallery -->
        <div class="col-lg-7 mb-4">
          <div class="card-modern gallery-card">
            <ul id="vertical">
              <?php foreach ($mainImages as $mi): ?>
                <li data-thumb="<?= base_url() . $mi; ?>">
                  <img src="<?= base_url() . $mi; ?>" alt="<?= htmlspecialchars($instrumentName); ?>">
                </li>
              <?php endforeach; ?>
            </ul>
          </div>

          <?php if (is_filled($instdescription)): ?>
            <div class="card-modern mt-4">
              <div class="card-head">
                <h2>About This Instrument</h2>
              </div>
              <div class="card-body">
                <p class="mb-0" style="font-size:15px; line-height:1.7; color:#374151; text-align:justify;">
                  <?= htmlspecialchars($instdescription); ?>
                </p>
              </div>
            </div>
          <?php endif; ?>
        </div>

        <!-- Info -->
        <div class="col-lg-5 mb-4">
          <div class="info-panel">
            <?php if (is_filled($condition)): ?>
              <span class="product-badge">
                <i class="fa fa-check-circle" aria-hidden="true"></i> <?= htmlspecialchars($condition); ?>
              </span>
            <?php endif; ?>

            <h1 class="product-name"><?= htmlspecialchars($instrumentName); ?></h1>

            <?php if (is_filled($instituteName)): ?>
              <div class="product-institute">
                <i class="fa fa-map-marker-alt" aria-hidden="true"></i>
                <?= htmlspecialchars($instituteName); ?>
              </div>
            <?php endif; ?>

            <ul class="fact-list">
              <?php if (is_filled($facultyName)): ?>
                <li>
                  <span class="ft-label"><i class="fa fa-graduation-cap" aria-hidden="true"></i>&nbsp; Faculty</span>
                  <span class="ft-value"><?= htmlspecialchars($facultyName); ?></span>
                </li>
              <?php endif; ?>
              <?php if (is_filled($departmentName)): ?>
                <li>
                  <span class="ft-label"><i class="fa fa-building" aria-hidden="true"></i>&nbsp; Department</span>
                  <span class="ft-value"><?= htmlspecialchars($departmentName); ?></span>
                </li>
              <?php endif; ?>
              <?php if (is_filled($laboratoryName)): ?>
                <li>
                  <span class="ft-label"><i class="fa fa-flask" aria-hidden="true"></i>&nbsp; Laboratory</span>
                  <span class="ft-value"><?= htmlspecialchars($laboratoryName); ?></span>
                </li>
              <?php endif; ?>
              <?php if (is_filled($instrumentType)): ?>
                <li>
                  <span class="ft-label"><i class="fa fa-tag" aria-hidden="true"></i>&nbsp; Category</span>
                  <span class="ft-value"><?= htmlspecialchars($instrumentType); ?></span>
                </li>
              <?php endif; ?>
              <?php if (is_filled($keywords)): ?>
                <li>
                  <span class="ft-label"><i class="fa fa-layer-group" aria-hidden="true"></i>&nbsp; Sub Category</span>
                  <span class="ft-value"><?= htmlspecialchars($keywords); ?></span>
                </li>
              <?php endif; ?>
              <?php if (is_filled($instkeywords)): ?>
                <li>
                  <span class="ft-label"><i class="fa fa-key" aria-hidden="true"></i>&nbsp; Keywords</span>
                  <span class="ft-value"><?= htmlspecialchars($instkeywords); ?></span>
                </li>
              <?php endif; ?>
            </ul>

            <div class="price-block">
              <span class="p-label">Service Charge</span>
              <?php if ((float)$scharge == 0): ?>
                <span class="p-value"><small>Contact Institute</small></span>
              <?php else: ?>
                <span class="p-value">Rs. <?= htmlspecialchars($scharge); ?></span>
              <?php endif; ?>
            </div>

            <div class="cta-row">
              <a href="#contact-details" class="btn-cta js-open-contact">
                <i class="fa fa-envelope" aria-hidden="true"></i> Contact Institute
              </a>
              <?php if (is_filled($catalogUpload)): ?>
                <a href="<?= base_url(); ?>catalogUploads/<?= rawurlencode($catalogUpload); ?>" target="_blank" class="btn-cta btn-cta-outline">
                  <i class="fa fa-file-pdf" aria-hidden="true"></i> View Catalog
                </a>
              <?php elseif (is_filled($catalogLink)): ?>
                <a href="<?= htmlspecialchars($catalogLink); ?>" target="_blank" class="btn-cta btn-cta-outline">
                  <i class="fa fa-external-link-alt" aria-hidden="true"></i> View Catalog
                </a>
              <?php endif; ?>
            </div>

            <div class="nav-adjacent">
              <a href="<?= base_url(); ?>instrumentView/<?= $prevId; ?>">
                <i class="fa fa-angle-left" aria-hidden="true"></i> Previous
              </a>
              <a href="<?= base_url(); ?>instrumentView/<?= $nextId; ?>">
                Next <i class="fa fa-angle-right" aria-hidden="true"></i>
              </a>
              <span style="margin-left:auto;"><?= htmlspecialchars($instrumentId); ?></span>
            </div>

            <div class="share-row">
              <span>Share:</span>
              <a class="share-btn share-fb" target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=<?= urlencode($pageUrl); ?>" aria-label="Share on Facebook"><i class="fab fa-facebook-f"></i></a>
              <a class="share-btn share-tw" target="_blank" href="https://twitter.com/intent/tweet?url=<?= urlencode($pageUrl); ?>&text=<?= urlencode($instrumentName); ?>" aria-label="Share on Twitter"><i class="fab fa-twitter"></i></a>
              <a class="share-btn share-wa" target="_blank" href="https://wa.me/?text=<?= urlencode($instrumentName . ' - ' . $pageUrl); ?>" aria-label="Share on WhatsApp"><i class="fab fa-whatsapp"></i></a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- ============ Tabs: details ============ -->
  <section class="tabs-wrap pt-4">
    <div class="container">
      <div class="card-modern">
        <div class="card-body">
          <ul class="nav tab-nav-modern" id="productTabs" role="tablist">
            <li class="nav-item">
              <a class="nav-link active" id="basic-tab" data-toggle="tab" href="#home1" role="tab" aria-controls="home1" aria-selected="true">Basic Information</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" id="contact-tab" data-toggle="tab" href="#home2" role="tab" aria-controls="home2" aria-selected="false">Contact Details</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" id="category-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="false">Product Category</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" id="spec-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Specification</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" id="review-tab" data-toggle="tab" href="#review" role="tab" aria-controls="review" aria-selected="false">Feedback</a>
            </li>
          </ul>

          <div class="tab-content" id="productTabContent">

            <!-- Basic Information -->
            <div class="tab-pane fade show active" id="home1" role="tabpanel" aria-labelledby="basic-tab">
              <div class="table-responsive">
                <table class="spec-table">
                  <tbody>
                    <tr><td>Manufacturer</td><td><?= is_filled($manufacturer) ? htmlspecialchars($manufacturer) : '—'; ?></td></tr>
                    <tr><td>Model</td><td><?= is_filled($model) ? htmlspecialchars($model) : '—'; ?></td></tr>
                    <tr><td>Manufactured Year</td><td><?= is_filled($mYear) ? htmlspecialchars($mYear) : '—'; ?></td></tr>
                    <tr><td>HS Code</td><td><?= is_filled($accessories) ? htmlspecialchars($accessories) : '—'; ?></td></tr>
                    <tr><td>Instrument Condition</td><td><?= is_filled($condition) ? htmlspecialchars($condition) : '—'; ?></td></tr>
                    <tr><td>Instrument Price (Rs)</td><td><?= is_filled($price) ? htmlspecialchars($price) : '—'; ?></td></tr>
                    <tr><td>Funding Source</td><td><?= is_filled($FundingSource) ? htmlspecialchars($FundingSource) : '—'; ?></td></tr>
                    <tr>
                      <td>External Research Support</td>
                      <td><?= ($externalResearch == 1 || $externalResearch == '1') ? 'Yes' : 'No'; ?></td>
                    </tr>
                    <tr><td>Availability of Technical Staff</td><td><?= is_filled($staffName) ? htmlspecialchars($staffName) : '—'; ?></td></tr>
                    <tr><td>Commencement of Operations</td><td><?= is_filled($operationsDate) ? htmlspecialchars($operationsDate) : '—'; ?></td></tr>
                    <tr><td>Vendor Name</td><td><?= is_filled($vendorName) ? htmlspecialchars($vendorName) : '—'; ?></td></tr>
                    <tr><td>Vendor Contact</td><td><?= is_filled($vendorContact) ? htmlspecialchars($vendorContact) : '—'; ?></td></tr>
                    <tr>
                      <td>Vendor URL</td>
                      <td>
                        <?php if (is_filled($vendorUrl)): ?>
                          <a href="<?= htmlspecialchars($vendorUrl); ?>" target="_blank" rel="noopener"><?= htmlspecialchars($vendorUrl); ?></a>
                        <?php else: ?>—<?php endif; ?>
                      </td>
                    </tr>
                    <tr><td>Catalog Access</td><td><?= is_filled($catalogAccess) ? htmlspecialchars($catalogAccess) : '—'; ?></td></tr>
                    <tr>
                      <td>Catalog Upload</td>
                      <td>
                        <?php if (is_filled($catalogUpload)): ?>
                          <a href="<?= base_url(); ?>catalogUploads/<?= rawurlencode($catalogUpload); ?>" target="_blank" style="font-weight:600;">
                            <i class="fa fa-file-pdf" aria-hidden="true"></i> View File
                          </a>
                        <?php else: ?>—<?php endif; ?>
                      </td>
                    </tr>
                    <tr>
                      <td>Catalog Link</td>
                      <td>
                        <?php if (is_filled($catalogLink)): ?>
                          <a href="<?= htmlspecialchars($catalogLink); ?>" target="_blank" rel="noopener"><?= htmlspecialchars($catalogLink); ?></a>
                        <?php else: ?>—<?php endif; ?>
                      </td>
                    </tr>
                    <tr><td>Stage of the Record</td><td><?= ($recordStatus == 1 || $recordStatus == '1') ? 'Completed' : 'Incomplete'; ?></td></tr>
                  </tbody>
                </table>
              </div>
            </div>

            <!-- Contact Details -->
            <div class="tab-pane fade" id="home2" role="tabpanel" aria-labelledby="contact-tab">
              <div class="table-responsive contact-grid">
                <table class="spec-table">
                  <tbody>
                    <tr><td>Institute</td><td><?= is_filled($instituteName) ? htmlspecialchars($instituteName) : '—'; ?></td></tr>
                    <tr><td>Faculty</td><td><?= is_filled($facultyName) ? htmlspecialchars($facultyName) : '—'; ?></td></tr>
                    <tr><td>Department</td><td><?= is_filled($departmentName) ? htmlspecialchars($departmentName) : '—'; ?></td></tr>
                    <tr><td>Laboratory</td><td><?= is_filled($laboratoryName) ? htmlspecialchars($laboratoryName) : '—'; ?></td></tr>
                    <tr><td>Contact Person</td><td><?= is_filled($contactPersonName) ? htmlspecialchars($contactPersonName) : '—'; ?></td></tr>
                    <tr>
                      <td>Email</td>
                      <td style="text-transform:lowercase;">
                        <?php if (is_filled($contactPersonEmail)): ?>
                          <a href="mailto:<?= htmlspecialchars($contactPersonEmail); ?>"><?= htmlspecialchars($contactPersonEmail); ?></a>
                        <?php else: ?>—<?php endif; ?>
                      </td>
                    </tr>
                    <tr>
                      <td>Phone Number</td>
                      <td>
                        <?php if (is_filled($contactPersonPhoneNumber)): ?>
                          <a href="tel:<?= htmlspecialchars($contactPersonPhoneNumber); ?>"><?= htmlspecialchars($contactPersonPhoneNumber); ?></a>
                        <?php else: ?>—<?php endif; ?>
                      </td>
                    </tr>
                    <tr>
                      <td>Mobile Number</td>
                      <td>
                        <?php if (is_filled($contactPersonMobileNumber)): ?>
                          <a href="tel:<?= htmlspecialchars($contactPersonMobileNumber); ?>"><?= htmlspecialchars($contactPersonMobileNumber); ?></a>
                        <?php else: ?>—<?php endif; ?>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>

            <!-- Product Category -->
            <div class="tab-pane fade" id="home" role="tabpanel" aria-labelledby="category-tab">
              <div class="table-responsive">
                <table class="spec-table">
                  <tbody>
                    <tr><td>Product Category</td><td><?= is_filled($instrumentType) ? htmlspecialchars($instrumentType) : '—'; ?></td></tr>
                    <tr><td>Sub Category</td><td><?= is_filled($keywords) ? htmlspecialchars($keywords) : '—'; ?></td></tr>
                    <tr><td>Testing Parameters</td><td><?= is_filled($parameters) ? htmlspecialchars($parameters) : '—'; ?></td></tr>
                    <tr><td>Description</td><td><?= is_filled($description) ? htmlspecialchars($description) : '—'; ?></td></tr>
                    <tr><td>Relevant Instruments</td><td><?= is_filled($relevantinstruments) ? htmlspecialchars($relevantinstruments) : '—'; ?></td></tr>
                  </tbody>
                </table>
              </div>
            </div>

            <!-- Specification -->
            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="spec-tab">
              <div class="table-responsive">
                <table class="spec-table">
                  <tbody>
                    <tr><td>Technical Specification</td><td><?= is_filled($techspecification) ? htmlspecialchars($techspecification) : '—'; ?></td></tr>
                    <tr><td>Number of Samples per Cycle</td><td><?= is_filled($samplesNo) ? htmlspecialchars($samplesNo) : '—'; ?></td></tr>
                    <tr><td>Number of Samples per Day</td><td><?= is_filled($samplesPerDay) ? htmlspecialchars($samplesPerDay) : '—'; ?></td></tr>
                    <tr><td>Total Usage Hours per Day</td><td><?= is_filled($usageHour) ? htmlspecialchars($usageHour) : '—'; ?></td></tr>
                  </tbody>
                </table>
              </div>
            </div>

            <!-- Feedback -->
            <div class="tab-pane fade" id="review" role="tabpanel" aria-labelledby="review-tab">
              <div class="dev-note">
                <i class="fa fa-comments" aria-hidden="true"></i>
                <h4>Under Development</h4>
                <p class="mb-0">Feedback for this instrument will be available soon.</p>
              </div>
            </div>

          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- ============ Related instruments ============ -->
  <?php if (!empty($instrumentRecords)): ?>
    <section class="related-section">
      <div class="container">
        <h2 class="section-title">Related Instruments</h2>

        <div class="best_product_slider owl-carousel">
          <?php foreach ($instrumentRecords as $record): ?>
            <div class="related-card">
              <div class="thumb">
                <?php if (!empty($record->image_upload1)): ?>
                  <img src="<?= base_url(); ?>catalogUploads/<?= rawurlencode($record->image_upload1); ?>" alt="<?= htmlspecialchars($record->instrument_name); ?>">
                <?php else: ?>
                  <img src="<?= base_url(); ?>layout/img/lab.png" alt="<?= htmlspecialchars($record->instrument_name); ?>">
                <?php endif; ?>
              </div>
              <div class="body">
                <h5><?= htmlspecialchars($record->instrument_name); ?></h5>
                <div class="inst"><?= htmlspecialchars($record->name); ?></div>
                <a href="<?= base_url(); ?>instrumentView/<?= $record->instrument_id; ?>" class="btn-view">
                  <i class="fa fa-eye" aria-hidden="true"></i>&nbsp; View Instrument
                </a>
              </div>
            </div>
          <?php endforeach; ?>
        </div>
      </div>
    </section>
  <?php endif; ?>

  <!-- ============ Footer ============ -->
  <footer class="footer_part" style="background:#0d0b07; margin-top:40px;">
    <div class="container py-5">
      <div class="row justify-content-around">
        <div class="col-sm-6 col-lg-5 mb-4">
          <h4 class="text-white mb-3" style="font-size:17px;font-weight:700;">Contact Us</h4>
          <ul class="list-unstyled" style="color:#c9c6c0;">
            <li class="mb-1">National Science Foundation</li>
            <li class="mb-1"># 47/5, Maitland Place, Colombo 07</li>
            <li class="mb-1">Phone : +94 (0)11 2 696771, Fax : +94 (0)11 2 694754</li>
            <li class="mb-1">Email : info@nsf.gov.lk</li>
          </ul>
        </div>

        <div class="col-sm-6 col-lg-4 mb-4">
          <h4 class="text-white mb-3" style="font-size:17px;font-weight:700;">Quick Links</h4>
          <ul class="list-unstyled">
            <li class="mb-1"><a href="http://www.nsf.ac.lk/" style="color:#c9c6c0;" target="_blank">NSF Home</a></li>
            <li class="mb-1"><a href="https://gdp.nsf.gov.lk/" style="color:#c9c6c0;" target="_blank">Global Digital Platform</a></li>
            <li class="mb-1"><a href="https://stmis.nsf.gov.lk/" style="color:#c9c6c0;" target="_blank">S &amp; T Management Information System</a></li>
            <li class="mb-1"><a href="http://viduketha.nsf.gov.lk/RTGRA" style="color:#c9c6c0;" target="_blank">Research &amp; Technology Grant Database</a></li>
            <li class="mb-1"><a href="http://viduketha.nsf.gov.lk" style="color:#c9c6c0;" target="_blank">Viduketha</a></li>
          </ul>
        </div>

        <div class="col-sm-6 col-lg-3 mb-4">
          <h4 class="text-white mb-3" style="font-size:17px;font-weight:700;">Subscribe to NSF eAlerts</h4>
          <a href="http://lists.nsf.gov.lk/" class="btn btn-nav btn-nav-solid mb-3" target="_blank">Subscribe</a>
          <div class="d-flex mt-2">
            <a href="https://www.facebook.com/profile.php?id=100085521581430" class="mr-2" target="_blank" aria-label="Facebook">
              <span class="stat-icon" style="background:#3B5998;"><i class="fab fa-facebook-f"></i></span>
            </a>
            <a href="https://twitter.com/instrumentNSF" target="_blank" aria-label="Twitter">
              <span class="stat-icon" style="background:#55ACEE;"><i class="fab fa-twitter"></i></span>
            </a>
          </div>
        </div>
      </div>
    </div>
    <div class="border-top" style="border-color:rgba(255,255,255,.08) !important;">
      <div class="container py-3">
        <p class="text-center mb-0" style="color:#8f8b84;font-size:13px;">
          Copyright &copy;<script>
            document.write(new Date().getFullYear());
          </script> All rights reserved | Powered by National Science Foundation
        </p>
      </div>
    </div>
  </footer>

  <!-- ============ Scripts ============ -->
  <script src="<?= base_url(); ?>layout/js/jquery.min.js"></script>
  <script src="<?= base_url(); ?>layout/js/popper.min.js"></script>
  <script src="<?= base_url(); ?>layout/js/bootstrap.min.js"></script>
  <script src="<?= base_url(); ?>layout/js/lightslider.min.js"></script>
  <script src="<?= base_url(); ?>layout/js/owl.carousel.min.js"></script>

  <script>
    (function($) {
      'use strict';

      // Gallery
      var gallery = $('#vertical');
      if (gallery.length) {
        gallery.lightSlider({
          gallery: true,
          item: 1,
          vertical: true,
          verticalHeight: 460,
          thumbItem: 4,
          slideMargin: 0,
          speed: 600,
          loop: true,
          responsive: [{
            breakpoint: 991,
            settings: {
              item: 1
            }
          }, {
            breakpoint: 576,
            settings: {
              item: 1,
              slideMove: 1,
              verticalHeight: 300
            }
          }]
        });
      }

      // Related instruments carousel
      var related = $('.best_product_slider');
      if (related.length) {
        related.owlCarousel({
          items: 4,
          loop: true,
          dots: false,
          autoplay: true,
          autoplayHoverPause: true,
          autoplayTimeout: 5000,
          margin: 24,
          nav: true,
          navText: [
            '<i class="fa fa-chevron-left" aria-hidden="true"></i>',
            '<i class="fa fa-chevron-right" aria-hidden="true"></i>'
          ],
          responsive: {
            0: {
              items: 1,
              nav: false
            },
            576: {
              items: 2,
              nav: false
            },
            768: {
              items: 3,
              nav: true
            },
            991: {
              items: 4,
              nav: true
            }
          }
        });
      }

      // "Contact Institute" CTA -> open contact tab
      $('.js-open-contact').on('click', function(e) {
        e.preventDefault();
        $('#productTabs a[href="#home2"]').tab('show');
        $('html, body').animate({
          scrollTop: $('#productTabs').offset().top - 90
        }, 400);
      });

    })(jQuery);
  </script>

</body>

</html>