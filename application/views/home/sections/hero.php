<link rel="stylesheet" href="<?= base_url('layout/css/hero.css'); ?>?v=<?= filemtime(FCPATH . 'layout/css/hero.css'); ?>">
<section class="hero">
    <div class="top-banner">
        <!-- Hero Header -->
        <div class="hero-header-content">
            <h1 class="title">National Instrument Database</h1>
        </div>
        <div class="row justify-content-center align-items-center">
            <div class="col-12">
                <!-- Search Selection Cards -->
                <div class="row search-cards" id="searchCardsRow">
                    <!-- Instrument Search Card -->
                    <div class="col-lg-4 col-md-4 col-12 mb-3">
                        <div class="search-card"
                            data-action="einstrumentView"
                            data-placeholder="Instrument Name or Testing Parameter or Keyword (e.g. Spectrophotometer)"
                            data-title="Search Instrument"
                            data-pill="Instrument"
                            data-autocomplete="1">
                            <div class="search-card-icon">
                                <i class="fas fa-microscope" aria-hidden="true"></i>
                            </div>
                            <h4>Search by Instrument</h4>
                        </div>
                    </div>

                    <!-- Category Search Card -->
                    <div class="col-lg-4 col-md-4 col-12 mb-3">
                        <div class="search-card"
                            data-action="eproduct_instituteView"
                            data-placeholder="Enter Institute or Product Category Name"
                            data-title="Search by Product Category"
                            data-pill="Category">
                            <div class="search-card-icon">
                                <i class="fas fa-flask" aria-hidden="true"></i>
                            </div>
                            <h4>Search by Product Category</h4>
                        </div>
                    </div>

                    <!-- Technician Search Card -->
                    <div class="col-lg-4 col-md-4 col-12 mb-3">
                        <div class="search-card"
                            data-action="etechnicianView"
                            data-placeholder="Enter Technician or Operator Name"
                            data-title="Search Technician"
                            data-pill="Technician">
                            <div class="search-card-icon">
                                <i class="fas fa-user-cog" aria-hidden="true"></i>
                            </div>
                            <h4>Search Technician</h4>
                        </div>
                    </div>
                </div>

                <!-- Single Shared Dynamic Search Bar -->
                <div id="sharedSearchBar" class="shared-search-bar">
                    <div class="shared-search-header">
                        <div class="shared-search-title-wrap">
                            <h3 class="shared-search-title" id="sharedSearchTitle">Search Instrument</h3>
                        </div>
                    </div>

                    <form id="sharedSearchForm" action="<?= base_url('einstrumentView'); ?>" method="POST" enctype="multipart/form-data">
                        <div class="input-group">
                            <span class="search-input-prefix-icon">
                                <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
                                    <circle cx="11" cy="11" r="8"></circle>
                                    <line x1="21" y1="21" x2="16.65" y2="16.65"></line>
                                </svg>
                            </span>
                            <input type="text"
                                class="form-control"
                                id="sharedSearchInput"
                                name="searchText"
                                placeholder="Type your search keyword..."
                                autocomplete="off">
                            <div class="input-group-append">
                                <button type="submit" class="btn db-btn-search">
                                    <span>Search</span>
                                    <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
                                        <line x1="5" y1="12" x2="19" y2="12"></line>
                                        <polyline points="12 5 19 12 12 19"></polyline>
                                    </svg>
                                </button>
                            </div>
                        </div>
                    </form>

                    <!-- Popular Quick Search Tags -->
                    <!-- <div class="quick-search-tags" id="quickSearchTags">
                        <span class="tags-label">Popular searches:</span>
                        <a href="javascript:void(0)" class="quick-tag" data-tag="Spectrophotometer">Spectrophotometer</a>
                        <a href="javascript:void(0)" class="quick-tag" data-tag="HPLC">HPLC</a>
                        <a href="javascript:void(0)" class="quick-tag" data-tag="GC-MS">GC-MS</a>
                        <a href="javascript:void(0)" class="quick-tag" data-tag="Centrifuge">Centrifuge</a>
                        <a href="javascript:void(0)" class="quick-tag" data-tag="Autoclave">Autoclave</a>
                        <a href="javascript:void(0)" class="quick-tag" data-tag="Microscope">Microscope</a>
                    </div> -->
                </div>
              
                <?php $this->load->view('home/sections/categories'); ?>
            </div>
        </div>
    </div>
</section>

<script>
    (function() {
        var BASE_URL = "<?= base_url(); ?>";

        var cards = document.querySelectorAll('.search-card');
        var bar = document.getElementById('sharedSearchBar');
        var form = document.getElementById('sharedSearchForm');
        var input = document.getElementById('sharedSearchInput') || document.getElementById('autoInstrument');
        var titleLabel = document.getElementById('sharedSearchTitle');
        var modePill = document.getElementById('searchModePill');
        var quickTags = document.querySelectorAll('.quick-tag');

        if (!cards.length || !bar || !form || !titleLabel) {
            return;
        }

        function selectSearchMode(card, shouldFocus) {
                input = document.getElementById('sharedSearchInput') || document.getElementById('autoInstrument');

                cards.forEach(function(c) {
                    c.classList.remove('active');
                });
                card.classList.add('active');

                form.action = BASE_URL + card.getAttribute('data-action');
                input.placeholder = card.getAttribute('data-placeholder');
                titleLabel.textContent = card.getAttribute('data-title');
                if (modePill) {
                    modePill.textContent = card.getAttribute('data-pill') || 'Search';
                }
                input.value = '';

                // Only the Instrument card keeps the #autoInstrument id for autocomplete scripts
                if (card.getAttribute('data-autocomplete') === '1') {
                    input.id = 'autoInstrument';
                } else {
                    input.id = 'sharedSearchInput';
                }

                bar.style.display = 'block';
                if (shouldFocus) {
                    input.focus();
                }
        }

        cards.forEach(function(card) {
            card.addEventListener('click', function() {
                selectSearchMode(card, true);
            });
        });

        selectSearchMode(cards[0], false);

        // Quick tags autofill & focus
        if (quickTags.length) {
            quickTags.forEach(function(tag) {
                tag.addEventListener('click', function() {
                    input = document.getElementById('sharedSearchInput') || document.getElementById('autoInstrument');
                    if (input) {
                        input.value = this.getAttribute('data-tag');
                        input.focus();
                    }
                });
            });
        }
    })();
</script>