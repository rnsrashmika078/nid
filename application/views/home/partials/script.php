<script src="<?= base_url(); ?>layout/js/jquery-1.12.1.min.js"></script>
<script src="<?= base_url(); ?>layout/js/popper.min.js"></script>
<script src="<?= base_url(); ?>layout/js/bootstrap.min.js"></script>

<script src="<?= base_url(); ?>layout/js/jquery.magnific-popup.js"></script>
<script src="<?= base_url(); ?>layout/js/swiper.min.js"></script>
<script src="<?= base_url(); ?>layout/js/masonry.pkgd.js"></script>

<script src="<?= base_url(); ?>layout/js/owl.carousel.min.js"></script>
<script src="<?= base_url(); ?>layout/js/jquery.nice-select.min.js"></script>
<script src="<?= base_url(); ?>layout/js/slick.min.js"></script>

<script src="<?= base_url(); ?>layout/js/jquery.counterup.min.js"></script>
<script src="<?= base_url(); ?>layout/js/waypoints.min.js"></script>

<script src="<?= base_url(); ?>layout/js/contact.js"></script>
<script src="<?= base_url(); ?>layout/js/jquery.ajaxchimp.min.js"></script>
<script src="<?= base_url(); ?>layout/js/jquery.form.js"></script>
<script src="<?= base_url(); ?>layout/js/jquery.validate.min.js"></script>
<script src="<?= base_url(); ?>layout/js/mail-script.js"></script>

<script src="<?= base_url(); ?>layout/js/custom.js"></script>


<script>
$(document).ready(function () {


    $('.about-slider').owlCarousel({
        items: 1,
        loop: true,
        autoplay: true,
        autoplayTimeout: 6000,
        autoplayHoverPause: true,
        smartSpeed: 600,
        dots: true,
        nav: false
    });



    $('.instrument-slider').owlCarousel({
        loop: false,
        margin: 20,
        autoplay: true,
        autoplayTimeout: 5000,
        autoplayHoverPause: true,
        smartSpeed: 500,
        dots: true,
        nav: false,

        responsive: {

            0: {
                items: 1
            },

            576: {
                items: 2
            },

            992: {
                items: 3
            },

            1200: {
                items: 4
            }

        }
    });

    $('.technician-slider').owlCarousel({
        loop: false,
        margin: 18,
        autoplay: false,
        smartSpeed: 500,
        dots: true,
        nav: false,

        responsive: {

            0: {
                items: 1
            },

            576: {
                items: 2
            },

            992: {
                items: 3
            },

            1200: {
                items: 4
            }

        }
    });

    $('.stakeholder-slider').owlCarousel({
        loop: true,
        margin: 24,
        autoplay: true,
        autoplayTimeout: 5000,
        autoplayHoverPause: true,
        smartSpeed: 600,
        dots: true,
        nav: false,

        responsive: {

            0: {
                items: 1
            },

            576: {
                items: 2
            },

            992: {
                items: 3
            }

        }
    });

});



function openMessage(id) {

    const popup = document.getElementById(id);

    if (!popup) {
        return;
    }

    popup.classList.add('active');

    document.body.style.overflow = 'hidden';
}


function closeMessage(event, id) {

    if (
        event &&
        event.target !== event.currentTarget
    ) {
        return;
    }

    const popup = document.getElementById(id);

    if (!popup) {
        return;
    }

    popup.classList.remove('active');

    document.body.style.overflow = '';
}



document.addEventListener('keydown', function (event) {

    if (event.key === 'Escape') {

        document
            .querySelectorAll('.message-popup.active')
            .forEach(function (popup) {

                popup.classList.remove('active');

            });

        document.body.style.overflow = '';
    }

});
</script>