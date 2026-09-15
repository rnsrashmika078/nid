<section class="page-section map-section">
    <div class="container">
        <div class="section-heading section-heading-inline">
            <!-- <p class="section-kicker">Explore the National Network</p> -->
            <!-- <h2>
                Instrument Availability by Location
            </h2>
-->
            <h2>
                Explore the National Network
            </h2>
            <p>
                Discover where instruments and Technicians are located across Sri Lanka in map
            </p>
        </div>
        <div class="map-tabs" role="tablist" aria-label="Map location type">
            <button type="button" class="map-tab is-active" role="tab" aria-selected="true" data-map-tab="instrument">
                <i class="fas fa-microscope" aria-hidden="true"></i>
                Instrument
            </button>
            <button type="button" class="map-tab" role="tab" aria-selected="false" data-map-tab="product">
                <i class="fas fa-th-large" aria-hidden="true"></i>
                Product Category
            </button>
            <button type="button" class="map-tab" role="tab" aria-selected="false" data-map-tab="technician">
                <i class="fas fa-user-cog" aria-hidden="true"></i>
                Technician
            </button>
        </div>

        <div class="map-frame-wrap">
            <form class="map-search" id="mapSearchForm">
                <label class="sr-only" for="mapSearchInput">Search instrument, product category or technician</label>
                <input id="mapSearchInput" placeholder="Search an instrument name" autocomplete="off">
                <button type="submit">Find location</button>
                <span class="map-search-status" id="mapSearchStatus" role="status" aria-live="polite"></span>
            </form>
            <iframe
                data-src="<?= base_url('google_home'); ?>"
                data-base="<?= base_url('google_home'); ?>"
                scrolling="no"
                title="National Instrument Database Map">
            </iframe>
        </div>

    </div>

</section>

<script>
    (function() {
        var form = document.getElementById('mapSearchForm');
        var input = document.getElementById('mapSearchInput');
        var status = document.getElementById('mapSearchStatus');
        var frame = document.querySelector('.map-frame-wrap iframe');
        var tabs = document.querySelectorAll('.map-tab');

        var placeholders = {
            instrument: 'Search an instrument name',
            product: 'Search a product category',
            technician: 'Search a technician name'
        };

        var loadMessages = {
            instrument: 'Loading instrument locations...',
            product: 'Loading product category locations...',
            technician: 'Loading technician locations...'
        };

        if (!form || !input || !frame) {
            return;
        }

        tabs.forEach(function(tab) {
            tab.addEventListener('click', function() {
                var category = tab.dataset.mapTab;
                var alreadyActive = tab.classList.contains('is-active');

                tabs.forEach(function(item) {
                    var isActive = item === tab;
                    item.classList.toggle('is-active', isActive);
                    item.setAttribute('aria-selected', isActive ? 'true' : 'false');
                });

                input.placeholder = placeholders[category] || placeholders.instrument;

                if (category === 'instrument') {
                    status.textContent = '';
                } else {
                    status.textContent = loadMessages[category] || '';
                }

                if (!alreadyActive) {
                    input.value = '';
                    frame.src = frame.getAttribute('data-base') + '/' + category;
                }
            });

            frame.addEventListener('load', function() {
                status.textContent = '';
            });
        });

        form.addEventListener('submit', function(event) {
            event.preventDefault();
            var query = input.value.trim();

            if (!query) {
                status.textContent = 'Enter a search term.';
                return;
            }

            status.textContent = 'Searching...';
            frame.contentWindow.postMessage({
                type: 'map-search',
                query: query
            }, window.location.origin);
        });

        window.addEventListener('message', function(event) {
            if (event.origin !== window.location.origin || !event.data || event.data.type !== 'map-search-result') {
                return;
            }
            status.textContent = event.data.message;
        });

        window.addEventListener('load', function() {
            if (frame && !frame.getAttribute('src')) {
                frame.src = frame.getAttribute('data-src');
            }
        });
    }());
</script>