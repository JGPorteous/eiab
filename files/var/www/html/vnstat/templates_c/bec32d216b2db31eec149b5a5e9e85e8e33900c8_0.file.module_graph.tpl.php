<?php
/* Smarty version 3.1.34-dev-7, created on 2019-12-17 15:31:39
  from '/var/www/html/vnstat/templates/module_graph.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.34-dev-7',
  'unifunc' => 'content_5df8f4db1ac2f9_86103103',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'bec32d216b2db31eec149b5a5e9e85e8e33900c8' => 
    array (
      0 => '/var/www/html/vnstat/templates/module_graph.tpl',
      1 => 1570256990,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5df8f4db1ac2f9_86103103 (Smarty_Internal_Template $_smarty_tpl) {
?>    <div class="container">
        <ul class="nav nav-tabs" id="graphTab" role="tablist">
            <li class="nav-item">
                <a class="nav-link active" id="hourly-graph-tab" data-toggle="tab" href="#hourly-graph" role="tab" aria-controls="hourly-graph" aria-selected="true">Hourly Graph</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="daily-graph-tab" data-toggle="tab" href="#daily-graph" role="tab" aria-controls="daily-graph" aria-selected="false">Daily Graph</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="monthly-graph-tab" data-toggle="tab" href="#monthly-graph" role="tab" aria-controls="monthly-graph" aria-selected="false">Monthly Graph</a>
            </li>
        </ul>

        <div class="tab-content">
            <div class="tab-pane fade show active" id="hourly-graph" role="tabpanel" aria-labelledby="hourly-graph-tab">
                <div id="hourlyNetworkTrafficGraph" style="height: 300px;"></div>
            </div>

            <div class="tab-pane fade" id="daily-graph" role="tabpanel" aria-labelledby="daily-graph-tab">
                <div id="dailyNetworkTrafficGraph" style="height: 300px;"></div>
            </div>

            <div class="tab-pane fade" id="monthly-graph" role="tabpanel" aria-labelledby="monthly-graph-tab">
                <div id="monthlyNetworkTrafficGraph" style="height: 300px;"></div>
            </div>
        </div>
    </div>
<?php }
}
