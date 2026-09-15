<section class="page-section instruments-section">

    <div class="container">

        <div class="section-heading section-heading-inline">



            <h2>
                Recently Added Instruments
            </h2>

            <p>
                Explore some of the latest instruments added to the National Instrument Database.
            </p>


        </div>

        <?php if (!empty($instrumentRecords)): ?>

            <div class="instrument-slider owl-carousel">

                <?php foreach ($instrumentRecords as $record): ?>

                    <div class="instrument-card">

                        <div class="instrument-image-wrap">
                            <?php $instrumentImage = base_url() . 'catalogUploads/' . (!empty($record->image_upload1) ? rawurlencode($record->image_upload1) : 'layout/img/lab.png'); ?>
                            <img
                                src="<?= $instrumentImage; ?>"
                                class="instrument-image"
                                alt="<?= htmlspecialchars($record->instrument_name); ?>"
                                onerror="this.onerror=null;this.src='<?= base_url(); ?>layout/img/lab.png';">
                        </div>

                        <div class="instrument-body">

                            <h4>
                                <?= $record->instrument_name; ?>
                            </h4>

                            <h5>
                                <?= $record->name; ?>
                            </h5>

                            <div class="instrument-meta">
                            </div>

                            <a
                                href="<?= base_url() . 'instrumentView/' . $record->instrument_id; ?>"
                                class="instrument-link">

                                View Instrument

                            </a>

                        </div>

                    </div>

                <?php endforeach; ?>

            </div>

            <div class="instruments-see-more">
                <a href="<?= base_url('einstrumentView'); ?>" class="see-more-btn">
                    VIEW MORE <i class="fa fa-arrow-right" aria-hidden="true"></i>
                </a>
            </div>

        <?php else: ?>

            <div class="text-center news-empty-state">
                <i class="fa fa-search" aria-hidden="true"></i>
                <p>No instruments available.</p>
            </div>

        <?php endif; ?>

    </div>

</section>