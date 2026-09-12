<section class="page-section technicians-section">

    <div class="container">

        <div class="section-heading section-heading-inline">



            <h2>
                Recently Registered Technicians
            </h2>

            <p>
                Find technicians and laboratory equipment specialists registered in the National Instrument Database.
            </p>


        </div>

        <?php if (!empty($technicianRecords)): ?>

            <div class="technician-slider owl-carousel">

                <?php foreach ($technicianRecords as $record): ?>
                    <!-- <pre>
        <?php print_r($technicianRecords); ?>
    </pre> -->
                    <article class="technician-card">

                        <div class="technician-avatar">
                            <?php if (!empty($record->picture)): ?>

                                <img src="<?= base_url('imagesUpload/' . rawurlencode($record->picture)); ?>" class="technician-image" alt="">
                            <?php else: ?>
                                <i class="fas fa-user-cog" aria-hidden="true"></i>
                            <?php endif; ?>
                        </div>

                        <div class="technician-body">

                            <h3><?= htmlspecialchars(trim($record->first_name . ' ' . $record->last_name), ENT_QUOTES, 'UTF-8'); ?></h3>

                            <p class="technician-designation">
                                <?= htmlspecialchars($record->designation ?: 'Laboratory Equipment Specialist', ENT_QUOTES, 'UTF-8'); ?>
                            </p>

                            <p class="technician-institute">
                                <i class="fas fa-building" aria-hidden="true"></i>
                                <?= htmlspecialchars($record->institute_name ?: $record->other_institute_name ?: 'Independent technician', ENT_QUOTES, 'UTF-8'); ?>
                            </p>

                        </div>

                    </article>

                <?php endforeach; ?>

            </div>

        <?php else: ?>

            <div class="text-center news-empty-state">
                <i class="fa fa-search" aria-hidden="true"></i>
                <p>No technicians available.</p>
            </div>

        <?php endif; ?>

    </div>

</section>