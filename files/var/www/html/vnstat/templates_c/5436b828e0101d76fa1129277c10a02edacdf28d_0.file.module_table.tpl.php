<?php
/* Smarty version 3.1.34-dev-7, created on 2019-12-17 15:31:39
  from '/var/www/html/vnstat/templates/module_table.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.34-dev-7',
  'unifunc' => 'content_5df8f4db28f040_25774709',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '5436b828e0101d76fa1129277c10a02edacdf28d' => 
    array (
      0 => '/var/www/html/vnstat/templates/module_table.tpl',
      1 => 1570256990,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5df8f4db28f040_25774709 (Smarty_Internal_Template $_smarty_tpl) {
?>    <div class="container">
        <ul class="nav nav-tabs" id="tableTab" role="tablist">
            <li class="nav-item">
                <a class="nav-link active" id="hourly-table-tab" data-toggle="tab" href="#hourly-table" role="tab" aria-controls="hourly-table" aria-selected="true">Hourly</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="daily-table-tab" data-toggle="tab" href="#daily-table" role="tab" aria-controls="daily-table" aria-selected="false">Daily</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="monthly-table-tab" data-toggle="tab" href="#monthly-table" role="tab" aria-controls="monthly-table" aria-selected="false">Monthly</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="top10-table-tab" data-toggle="tab" href="#top10-table" role="tab" aria-controls="top10-table" aria-selected="false">Top 10</a>
            </li>
        </ul>

        <div class="tab-content" id="tableTabContent">
            <div class="tab-pane fade show active" id="hourly-table" role="tabpanel" aria-labelledby="hourly-table-tab">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Hour</th>
                            <th>Received</th>
                            <th>Sent</th>
                            <th>Total</th>
                        </tr>
                    </thead>
                    <tbody>
<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['hourlyTableData']->value, 'value', false, 'key');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['key']->value => $_smarty_tpl->tpl_vars['value']->value) {
?>
                        <tr>
                            <td><?php echo $_smarty_tpl->tpl_vars['value']->value['label'];?>
</td>
                            <td><?php echo $_smarty_tpl->tpl_vars['value']->value['rx'];?>
</td>
                            <td><?php echo $_smarty_tpl->tpl_vars['value']->value['tx'];?>
</td>
                            <td><?php echo $_smarty_tpl->tpl_vars['value']->value['total'];?>
</td>
                        </tr>
<?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                    </tbody>
                </table>
            </div>

            <div class="tab-pane fade" id="daily-table" role="tabpanel" aria-labelledby="daily-table-tab">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Day</th>
                            <th>Received</th>
                            <th>Sent</th>
                            <th>Total</th>
                        </tr>
                    </thead>
                    <tbody>
<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['dailyTableData']->value, 'value', false, 'key');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['key']->value => $_smarty_tpl->tpl_vars['value']->value) {
?>
                        <tr>
                            <td><?php echo $_smarty_tpl->tpl_vars['value']->value['label'];?>
</td>
                            <td><?php echo $_smarty_tpl->tpl_vars['value']->value['rx'];?>
</td>
                            <td><?php echo $_smarty_tpl->tpl_vars['value']->value['tx'];?>
</td>
                            <td><?php echo $_smarty_tpl->tpl_vars['value']->value['total'];?>
</td>
                        </tr>
<?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                    </tbody>
                </table>
            </div>

            <div class="tab-pane fade" id="monthly-table" role="tabpanel" aria-labelledby="monthly-table-tab">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Month</th>
                            <th>Received</th>
                            <th>Sent</th>
                            <th>Total</th>
                        </tr>
                    </thead>
                    <tbody>
<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['monthlyTableData']->value, 'value', false, 'key');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['key']->value => $_smarty_tpl->tpl_vars['value']->value) {
?>
                        <tr>
                            <td><?php echo $_smarty_tpl->tpl_vars['value']->value['label'];?>
</td>
                            <td><?php echo $_smarty_tpl->tpl_vars['value']->value['rx'];?>
</td>
                            <td><?php echo $_smarty_tpl->tpl_vars['value']->value['tx'];?>
</td>
                            <td><?php echo $_smarty_tpl->tpl_vars['value']->value['total'];?>
</td>
                        </tr>
<?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                    </tbody>
                </table>
            </div>

            <div class="tab-pane fade" id="top10-table" role="tabpanel" aria-labelledby="top10-table-tab">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Day</th>
                            <th>Received</th>
                            <th>Sent</th>
                            <th>Total</th>
                        </tr>
                    </thead>
                    <tbody>
<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['top10TableData']->value, 'value', false, 'key');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['key']->value => $_smarty_tpl->tpl_vars['value']->value) {
?>
                        <tr>
                            <td><?php echo $_smarty_tpl->tpl_vars['value']->value['label'];?>
</td>
                            <td><?php echo $_smarty_tpl->tpl_vars['value']->value['rx'];?>
</td>
                            <td><?php echo $_smarty_tpl->tpl_vars['value']->value['tx'];?>
</td>
                            <td><?php echo $_smarty_tpl->tpl_vars['value']->value['total'];?>
</td>
                        </tr>
<?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
<?php }
}
