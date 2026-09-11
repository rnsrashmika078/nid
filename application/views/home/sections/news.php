<section class="page-section news-section">
    <div class="container">
        <div class="row news-about-layout">
            <div class="col-lg-5 news-column">
                <div class="section-heading">
                    <h2>Latest News</h2>
                </div>

        <?php if (!empty($homenewsRecords)): ?>
            <div class="row">
                <?php foreach ($homenewsRecords as $record): ?>
                    <?php
                    $hasImage = !empty($record->home_image) && file_exists(FCPATH . 'homenewsimagesUpload/' . $record->home_image);
                    $dateStr = !empty($record->created_date_time) ? date('M d, Y', strtotime($record->created_date_time)) : '';
                    $cleanSnippet = !empty($record->home_news_subject) ? trim(preg_replace('/\s+/', ' ', strip_tags($record->home_news_subject))) : '';
                    ?>
                    <div class="col-12 mb-4">
                        <a href="<?= base_url('homenewsView/' . $record->home_news_id); ?>" class="news-card-link">
                            <div class="news-card">
                                <div class="news-thumb-wrapper <?= $hasImage ? '' : 'news-thumb-placeholder'; ?>">
                                    <?php if ($hasImage): ?>
                                        <img
                                            src="<?= base_url('homenewsimagesUpload/' . $record->home_image); ?>"
                                            alt="<?= htmlspecialchars($record->home_news_title, ENT_QUOTES, 'UTF-8'); ?>"
                                            class="news-thumb-img">
                                    <?php else: ?>
                                        <div class="news-thumb-icon">
                                            <i class="fas fa-newspaper"></i>
                                        </div>
                                    <?php endif; ?>
                                </div>

                                <div class="news-body">
                                    <div class="news-meta">
                                        <?php if (!empty($record->home_sub_title)): ?>
                                            <span class="news-tag" title="<?= htmlspecialchars($record->home_sub_title, ENT_QUOTES, 'UTF-8'); ?>">
                                                <?= htmlspecialchars($record->home_sub_title, ENT_QUOTES, 'UTF-8'); ?>
                                            </span>
                                        <?php else: ?>
                                            <span class="news-tag">Notice</span>
                                        <?php endif; ?>

                                        <?php if (!empty($dateStr)): ?>
                                            <span class="news-date">
                                                <i class="far fa-calendar-alt"></i>
                                                <?= $dateStr; ?>
                                            </span>
                                        <?php endif; ?>
                                    </div>

                                    <h3>
                                        <?= htmlspecialchars($record->home_news_title, ENT_QUOTES, 'UTF-8'); ?>
                                    </h3>

                                    <?php if (!empty($cleanSnippet)): ?>
                                        <p class="news-snippet">
                                            <?= htmlspecialchars($cleanSnippet, ENT_QUOTES, 'UTF-8'); ?>
                                        </p>
                                    <?php endif; ?>

                                    <div class="news-footer">
                                        <span class="news-read-more">
                                            <span>Read Full Notice</span>
                                            <i class="fas fa-arrow-right"></i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                <?php endforeach; ?>
            </div>
        <?php else: ?>
            <div class="news-empty-state">
                <i class="fas fa-newspaper d-block"></i>
                <p>No news or notices currently available.</p>
            </div>
        <?php endif; ?>
            </div>

            <div class="col-lg-7 about-column">
                <?php $this->load->view('home/sections/about'); ?>
            </div>
        </div>
    </div>
</section>