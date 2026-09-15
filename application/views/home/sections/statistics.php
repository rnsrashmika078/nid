<section class="page-section stats-section">

    <div class="container">

        <div class="section-heading section-heading-inline">
            <p class="section-kicker">National Instrument Database</p>
            <h2>NID at a Glance</h2>
            <!-- <p>
                Live overview of the institutions, facilities and scientific resources registered in the database.
                </p>  -->
        </div>

        <?php
        $stats = [
            [
                'count' => $instrumentCount ?? 0,
                'label' => 'Instruments',
                'icon' => 'machine.svg'
            ],
            [
                'count' => $instituteCount ?? 0,
                'label' => 'Institutes',
                'icon' => 'bank.svg'
            ],
            [
                'count' => $laboratoryCount ?? 0,
                'label' => 'Laboratories',
                'icon' => 'laboratory.svg'
            ],
            [
                'count' => $departmentCount ?? 0,
                'label' => 'Departments',
                'icon' => 'structure.svg'
            ],
            [
                'count' => $facultyCount ?? 0,
                'label' => 'Faculties',
                'icon' => 'graduation-hat.svg'
            ],
            [
                'count' => $productCount ?? 0,
                'label' => 'Products',
                'icon' => 'box.svg'
            ],
            [
                'count' => $techniciansCount ?? 0,
                'label' => 'Technicians',
                'icon' => 'user1.svg'
            ],
        ];
        ?>

        <div class="stats-grid">

            <?php foreach ($stats as $stat): ?>

                <div class="stat-item">

                    <div class="stat-card">

                        <div class="stat-icon">

                            <img
                                src="<?= base_url(); ?>layout/img/<?= $stat['icon']; ?>"
                                alt="">

                        </div>

                        <p class="count">
                            <?= $stat['count']; ?>
                        </p>

                        <p class="label">
                            <?= $stat['label']; ?>
                        </p>

                    </div>

                </div>

            <?php endforeach; ?>

        </div>

        <div class="users-count">
            <span class="users-label">Registered Users</span>
            <span>
                <?= $usersCount ?? 0; ?>
            </span>
        </div>

    </div>

</section>