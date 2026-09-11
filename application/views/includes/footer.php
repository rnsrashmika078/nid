<footer class="main-footer" style=" background-color:#050300  ;">
    <div class="pull-right hidden-xs">
       <!-- <b>National Instrument Database</b> Admin Panel-->
    </div>
    <!--<strong >Copyright &copy; 2022
        <a href="home">NATIONAL INSTRUMENT DATABASE</a>
    </strong> All rights reserved | Powered by National Scienec Foundation of Sri Lanka-->
	
	<P style="color: #FFFFFF;"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | Powered by National Science Foundation of Sri Lanka <!--<i class="ti-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></P>
</footer>

<!-- jQuery UI 1.11.2 -->
<!-- <script src="http://code.jquery.com/ui/1.11.2/jquery-ui.min.js" type="text/javascript"></script> -->
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<!-- Bootstrap 3.3.2 JS -->
<script src="<?php echo base_url(); ?>assets/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/dist/js/app.min.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/js/jquery.validate.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/js/validation.js" type="text/javascript"></script>
<script type="text/javascript">
    var windowURL = window.location.href;
    pageURL = windowURL.substring(0, windowURL.lastIndexOf('/'));
    var x = $('a[href="' + pageURL + '"]');
    x.addClass('active');
    x.parent().addClass('active');
    var y = $('a[href="' + windowURL + '"]');
    y.addClass('active');
    y.parent().addClass('active');
</script>
<!-- DataTables JavaScript -->
<script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.16/af-2.2.2/b-1.5.1/b-colvis-1.5.1/fc-3.2.4/fh-3.1.3/r-2.2.1/sc-1.4.4/sl-1.2.5/datatables.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/pdfmake.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/vfs_fonts.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/v/bs4/jszip-2.5.0/dt-1.10.16/af-2.2.2/b-1.5.1/b-colvis-1.5.1/b-flash-1.5.1/b-html5-1.5.1/b-print-1.5.1/cr-1.4.1/fc-3.2.4/fh-3.1.3/kt-2.3.2/r-2.2.1/rg-1.0.2/rr-1.2.3/sc-1.4.4/sl-1.2.5/datatables.min.js"></script>
<!-- Tables - Use for reference -->
<script>
    $(document).ready(function () {
        $('#dataTables-example').DataTable({
           //Dom Display B-> buttons l-> lengthMenu f-> filter etc.
            dom: "<'row'<'col-sm-6'l><'col-sm-6'f>>" +
                "<'row'<'col-sm-12'tr>>" +
                "<'row'<'col-sm-9'i><'col-sm-3'B>>" +
                "<'row'<'col-sm-7 col-centered'p>>",
            lengthMenu: [
                [10, 15, 25, 50, -1],
                [10, 15, 25, 50, "All"]
            ],

            //Dil
            language: {
                select: {
                    rows: "%d row selected."
                },

                url: "http://cdn.datatables.net/plug-ins/1.10.12/i18n/English.json"
            },

             // If true, row is selectable
            select: true,


            buttons: [{
                    extend: "print",
                    text: "Print",
                    exportOptions: {
                        orthogonal: 'export',
                        columns: ':visible'
                    },
                },
                {
                    extend: 'excelHtml5',
                    exportOptions: {
                        orthogonal: 'export'
                    },
                    text: "Excel",
                },
                {
                    extend: 'pdfHtml5',
                    exportOptions: {
                        orthogonal: 'export'
                    },
                    text: "PDF",
                }
            ],
            "order": [],
            responsive: true
        });
    });
</script>
</body>

</html>