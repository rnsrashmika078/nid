<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>National Instrument Database</title>
  <link rel="icon" href="<?= base_url(); ?>layout/img/ph3.jpg">
  <link rel="stylesheet" href="<?= base_url(); ?>layout/css/bootstrap.min.css">
  <link rel="stylesheet" href="<?= base_url(); ?>layout/css/all.css">
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

    /* ============ Navbar ============ */
    .navbar-modern {
      background: #fff;
      box-shadow: 0 1px 0 var(--border), 0 8px 24px -20px rgba(16, 24, 40, .25);
      position: sticky;
      top: 0;
      z-index: 1030;
    }

    .navbar-modern .nav-link {
      font-size: 15px;
      font-weight: 600;
      color: var(--ink) !important;
      padding: 8px 0;
      margin: 0 14px;
      position: relative;
      transition: color .2s ease;
    }

    .navbar-modern .nav-link:hover,
    .navbar-modern .nav-link.active {
      color: var(--primary) !important;
    }

    .navbar-modern .nav-link.active::after {
      content: "";
      position: absolute;
      left: 0;
      right: 0;
      bottom: -4px;
      height: 3px;
      border-radius: 3px;
      background: var(--primary);
    }

    .btn-nav {
      font-size: 14px;
      font-weight: 600;
      padding: 9px 20px;
      border-radius: 8px;
      transition: all .2s ease;
    }

    .btn-nav-solid {
      background: var(--primary);
      color: #fff !important;
      border: 1px solid var(--primary);
    }

    .btn-nav-solid:hover {
      background: var(--primary-dark);
      border-color: var(--primary-dark);
    }

    .btn-nav-outline {
      background: #fff;
      color: var(--ink) !important;
      border: 1px solid var(--border);
    }

    .btn-nav-outline:hover {
      border-color: var(--primary);
      color: var(--primary) !important;
    }

    /* ============ Hero ============ */
    .dashboard-hero {
      background: linear-gradient(135deg, #241f14 0%, #3d2f16 55%, var(--primary-dark) 130%);
      color: #fff;
      padding: 56px 0 110px;
      position: relative;
      overflow: hidden;
    }

    .dashboard-hero::after {
      content: "";
      position: absolute;
      right: -140px;
      top: -140px;
      width: 420px;
      height: 420px;
      border-radius: 50%;
      background: radial-gradient(circle, rgba(238, 147, 16, .35), transparent 70%);
    }

    .dashboard-hero h1 {
      font-weight: 800;
      font-size: clamp(26px, 4vw, 38px);
      letter-spacing: -0.02em;
      margin-bottom: 12px;
    }

    .dashboard-hero p {
      color: rgba(255, 255, 255, .82);
      font-size: 17px;
      max-width: 640px;
      margin-bottom: 0;
    }

    /* ============ Cards & sections ============ */
    .content-wrap {
      margin-top: -70px;
      position: relative;
      z-index: 2;
    }

    .card-modern {
      background: var(--surface);
      border: 1px solid var(--border);
      border-radius: var(--radius);
      box-shadow: var(--shadow);
    }

    .card-modern .card-head {
      padding: 22px 26px 16px;
      border-bottom: 1px solid var(--border);
    }

    .card-modern .card-head h2 {
      font-size: 19px;
      font-weight: 700;
      letter-spacing: -0.01em;
      margin: 0;
    }

    .card-modern .card-body {
      padding: 26px;
    }

    .stat-card {
      transition: transform .2s ease, box-shadow .2s ease;
    }

    .stat-card:hover {
      transform: translateY(-3px);
      box-shadow: 0 18px 40px -18px rgba(16, 24, 40, .28);
    }

    .stat-icon {
      width: 46px;
      height: 46px;
      border-radius: 12px;
      display: inline-flex;
      align-items: center;
      justify-content: center;
      font-size: 20px;
      color: #fff;
    }

    .stat-num {
      font-size: 26px;
      font-weight: 800;
      letter-spacing: -0.02em;
      line-height: 1.1;
    }

    .stat-label {
      font-size: 13px;
      color: var(--muted);
      font-weight: 500;
    }

    /* ============ Chart ============ */
    .chart-scroll {
      overflow-x: auto;
    }

    #top_x_div {
      width: 100%;
      height: 1150px;
    }

    /* ============ Table ============ */
    .filter-control {
      border: 1px solid var(--border);
      border-radius: 10px;
      padding: 10px 16px 10px 40px;
      font-size: 14px;
      width: 100%;
      max-width: 420px;
      background: #fff url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="%236b7280" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="11" cy="11" r="8"/><line x1="21" y1="21" x2="16.65" y2="16.65"/></svg>') no-repeat 12px center;
      transition: border-color .2s ease, box-shadow .2s ease;
    }

    .filter-control:focus {
      outline: none;
      border-color: var(--primary);
      box-shadow: 0 0 0 3px rgba(238, 147, 16, .15);
    }

    .table-modern {
      margin-bottom: 0;
      border-collapse: separate;
      border-spacing: 0;
    }

    .table-modern thead th {
      background: #f3f4f6;
      color: #374151;
      font-size: 12px;
      font-weight: 700;
      text-transform: uppercase;
      letter-spacing: .04em;
      padding: 13px 16px;
      border-bottom: 1px solid var(--border);
      white-space: nowrap;
    }

    .table-modern tbody td {
      padding: 12px 16px;
      font-size: 14px;
      border-bottom: 1px solid var(--border);
      vertical-align: middle;
    }

    .table-modern tbody tr:last-child td {
      border-bottom: none;
    }

    .table-modern tbody tr:hover {
      background: #fff9f0;
    }

    .table-modern .row-label td {
      background: #fff3df;
      color: #7a4a00;
      font-size: 13px;
      font-weight: 700;
      letter-spacing: .03em;
    }

    .table-modern .text-muted-2 {
      color: var(--muted);
    }

    .table-scroll {
      overflow-x: auto;
    }

    @media (max-width: 768px) {
      #top_x_div {
        height: 960px;
      }

      .dashboard-hero {
        padding: 44px 0 96px;
      }
    }
  </style>
</head>

<body>

  <?php
  // -- Institution metadata -------------------------------------------------
  // Each entry: [database suffix id, display name, type]
  $universities = array(
    9  => "Eastern University, Sri Lanka",
    25 => "Gampaha Wickramarachchi University of Indigenous Medicine",
    48 => "General Sir John Kotelawala Defence University",
    46 => "Institute of Biochemistry Molecular and Biotechnology, University of Colombo (IBMBB)",
    30 => "Institute of Indigenous Medicine",
    78 => "Institute of Technology, University of Moratuwa (ITUM)",
    26 => "Postgraduate Institute of Agriculture",
    7  => "Rajarata University of Sri Lanka",
    33 => "Sabaragamuwa University of Sri Lanka",
    12 => "South Eastern University of Sri Lanka",
    42 => "Sri Lanka Technological Campus (SLTC) - Research University",
    40 => "The Open University of Sri Lanka",
    4  => "University of Colombo",
    35 => "University of Jaffna",
    1  => "University of Kelaniya",
    47 => "University of Moratuwa",
    3  => "University of Peradeniya",
    24 => "University of Ruhuna",
    27 => "University of Sri Jayewardenepura",
    6  => "University of Vauniya",
    34 => "University of the Visual and Performing Arts",
    45 => "University of Vocational Technology",
    17 => "Uva Wellassa University",
    36 => "Wayamba University of Sri Lanka",
  );

  $institutes = array(
    31 => "Allergy Immunology and Cell Biology Unit (AICBU)",
    52 => "Arthur C. Clarke Institute for Modern Technologies",
    56 => "AVATO Laboratory (PVT) Ltd",
    28 => "Bandaranayake Memorial Ayurveda Research Institute",
    43 => "Central Environmental Authority (CEA)",
    69 => "Ceylon Petroleum Corporation",
    71 => "Ceylon Petroleum Storage Terminal Limited",
    20 => "China-Sri Lanka Joint Research and Demonstration Centre for Water Technology",
    49 => "Coconut Development Authority (CDA)",
    18 => "Coconut Research Institute of Sri Lanka (CRI)",
    84 => "Construction Guarantee Fund",
    22 => "Department of Agriculture (PGIA)",
    32 => "Department of Ayurveda",
    13 => "Department of Export Agriculture",
    83 => "Department of Government Factory",
    75 => "Environmental Laboratory & Consultancy Services (ELCS)",
    65 => "Gem and Jewellery Research and Training Institute (GJRTI)",
    58 => "Geological Survey & Mines Bureau (GSMB)",
    61 => "Government Analyst's Department",
    8  => "Hector Kobbekaduwa Agrarian Research and Training Institute",
    23 => "Horticultural Crops Research and Development Institute",
    64 => "Industrial Development Board (IDB)",
    2  => "Industrial Technology Institute (ITI)",
    80 => "Institute of Sports Medicine",
    53 => "Institute for Research and Development",
    74 => "Laboratory for Cultural Material Analysis",
    66 => "Lanka Mineral Sands Ltd",
    68 => "National Aquatic Resources Research and Development Agency (NARA)",
    73 => "National Building Research Organization (NBRO)",
    59 => "National Cinnamon Research and Training Center",
    50 => "National Engineering Research and Development Centre (NERD)",
    29 => "National Institute of Fundamental Studies (NIFS)",
    15 => "National Institute of Post Harvest Management (NIPHM)",
    5  => "National Science Foundation (Test Instruments)",
    82 => "National Water Supply and Drainage Board",
    72 => "Palmyrah Research Institute",
    63 => "Road Development Authority",
    39 => "Rubber Research Institute of Sri Lanka (RRI)",
    60 => "SGS Lanka (PVT) Ltd",
    55 => "Sri Lanka Atomic Energy Board",
    79 => "Sri Lanka Institute of Biotechnology",
    54 => "Sri Lanka Institute of Nanotechnology (SLINTEC)",
    70 => "Sri Lanka Institute of Information Technology (SLIIT)",
    67 => "Sri Lanka Institute of Textile & Apparel (SLITA)",
    57 => "Sri Lanka Tea Board (STB)",
    11 => "Sri Lanka Standards Institution (SLSI)",
    81 => "State Engineering Corporation",
    62 => "State Pharmaceuticals Corporation",
    51 => "Sugarcane Research Institute (SRI)",
    16 => "Tea Research Institute of Sri Lanka (TRI)",
    76 => "The Adolescent and Adult Thalassemia Care Unit",
    38 => "Veterinary Research Institute",
  );

  // Snapshot all view-scope count variables so the helper below can read
  // them (view data is extracted into local scope by CodeIgniter).
  $GLOBALS['_nid_counts'] = get_defined_vars();

  function nval($type, $suffix)
  {
    $key = $type . 'Count' . $suffix;
    return isset($GLOBALS['_nid_counts'][$key]) ? $GLOBALS['_nid_counts'][$key] : '0';
  }
  ?>

  <!-- ============ Navbar ============ -->
  <?php $this->load->view('home/partials/navbar_v2'); ?>


  <!-- ============ Hero ============ -->
  <section class="dashboard-hero">
    <div class="container">
      <h1>National Instrument Database</h1>
      <p>Explore the scientific and research instruments available across universities and R&amp;D institutes in Sri Lanka.</p>
    </div>
  </section>

  <!-- ============ Content ============ -->
  <div class="container content-wrap pb-5">

    <!-- Chart card -->
    <div class="card-modern mb-5">
      <div class="card-head d-flex flex-wrap justify-content-between align-items-center">
        <h2>Instruments available by Universities and R&amp;D Institutes</h2>
      </div>
      <div class="card-body chart-scroll">
        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
        <script type="text/javascript">
          google.charts.load('current', {
            'packages': ['bar']
          });
          google.charts.setOnLoadCallback(drawStuff);

          function drawStuff() {
            var data = new google.visualization.arrayToDataTable([
              ['Universities & Institutes', 'Number of Instruments'],
              ["Universities", 0],
              <?php foreach ($universities as $id => $name): ?>["<?php echo $name; ?>", <?php echo nval('instrument', $id); ?>],
              <?php endforeach; ?>["Institutes", 0],
              <?php foreach ($institutes as $id => $name): ?>["<?php echo $name; ?>", <?php echo nval('instrument', $id); ?>],
              <?php endforeach; ?>
            ]);

            var options = {
              width: '100%',
              legend: {
                position: 'none'
              },
              bars: 'horizontal',
              bar: {
                groupWidth: '70%'
              },
              backgroundColor: 'transparent',
              chartArea: {
                left: 2,
                top: 8,
                width: '88%',
                height: '94%'
              },
              axes: {
                x: {
                  0: {
                    side: 'top',
                    label: 'Number of Instruments'
                  }
                }
              },
              hAxis: {
                textStyle: {
                  fontName: 'Inter',
                  fontSize: 11
                }
              },
              vAxis: {
                textStyle: {
                  fontName: 'Inter',
                  fontSize: 11,
                  color: '#374151'
                }
              }
            };

            var chart = new google.charts.Bar(document.getElementById('top_x_div'));
            chart.draw(data, options);

            function boldCategoryLabels() {
              document.querySelectorAll('#top_x_div text').forEach(function(el) {
                var txt = el.textContent;
                if (txt === 'Universities' || txt === 'Institutes') {
                  el.setAttribute('font-weight', 'bold');
                  el.setAttribute('font-size', '12');
                  el.style.fontWeight = 'bold';
                }
              });
            }
            boldCategoryLabels();

            var resizeTimer;
            window.addEventListener('resize', function() {
              clearTimeout(resizeTimer);
              resizeTimer = setTimeout(function() {
                chart.draw(data, options);
                boldCategoryLabels();
              }, 200);
            });
          };
        </script>
        <div id="top_x_div"></div>
      </div>
    </div>

    <!-- Summary table card -->
    <div class="card-modern">
      <div class="card-head d-flex flex-wrap justify-content-between align-items-center">
        <h2>Summary of Registered Universities and R&amp;D Institutes</h2>
        <input type="search" class="light-table-filter filter-control mt-2 mt-md-0" data-table="order-table" placeholder="Search institute...">
      </div>
      <div class="card-body table-scroll">
        <table class="order-table table-modern table">
          <thead>
            <tr>
              <th>#</th>
              <th>Institute Name</th>
              <th>Faculties</th>
              <th>Departments</th>
              <th>Laboratories</th>
              <th>Users</th>
              <th>Products</th>
              <th>Instruments</th>
            </tr>
          </thead>
          <tbody>
            <tr class="row-label">
              <td colspan="8">Universities (24)</td>
            </tr>
            <?php
            $row = 1;
            foreach ($universities as $id => $name):
            ?>
              <tr>
                <td><?php echo $row++; ?></td>
                <td><?php echo $name; ?></td>
                <td><?php echo nval('faculty', $id); ?></td>
                <td><?php echo nval('department', $id); ?></td>
                <td><?php echo nval('laboratory', $id); ?></td>
                <td><?php echo nval('users', $id); ?></td>
                <td><?php echo nval('product', $id); ?></td>
                <td><b><?php echo nval('instrument', $id); ?></b></td>
              </tr>
            <?php endforeach; ?>
            <tr class="row-label">
              <td colspan="8">R&amp;D Institutes (52)</td>
            </tr>
            <?php foreach ($institutes as $id => $name): ?>
              <tr>
                <td><?php echo $row++; ?></td>
                <td><?php echo $name; ?></td>
                <td class="text-muted-2">—</td>
                <td><?php echo nval('department', $id); ?></td>
                <td><?php echo nval('laboratory', $id); ?></td>
                <td><?php echo nval('users', $id); ?></td>
                <td><?php echo nval('product', $id); ?></td>
                <td><b><?php echo nval('instrument', $id); ?></b></td>
              </tr>
            <?php endforeach; ?>
          </tbody>
        </table>
      </div>
    </div>
  </div>

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

  <script>
    (function(document) {
      'use strict';

      var LightTableFilter = (function(Arr) {
        var _input;

        function _onInputEvent(e) {
          _input = e.target;
          var tables = document.getElementsByClassName(_input.getAttribute('data-table'));
          Arr.forEach.call(tables, function(table) {
            Arr.forEach.call(table.tBodies, function(tbody) {
              Arr.forEach.call(tbody.rows, _filter);
            });
          });
        }

        function _filter(row) {
          var text = row.textContent.toLowerCase(),
            val = _input.value.toLowerCase();
          row.style.display = text.indexOf(val) === -1 ? 'none' : 'table-row';
        }

        return {
          init: function() {
            var inputs = document.getElementsByClassName('light-table-filter');
            Arr.forEach.call(inputs, function(input) {
              input.oninput = _onInputEvent;
            });
          }
        };
      })(Array.prototype);

      document.addEventListener('readystatechange', function() {
        if (document.readyState === 'complete') {
          LightTableFilter.init();
        }
      });

    })(document);
  </script>

</body>

</html>