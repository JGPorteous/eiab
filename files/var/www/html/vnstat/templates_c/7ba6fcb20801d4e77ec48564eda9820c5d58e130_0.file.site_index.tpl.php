<?php
/* Smarty version 3.1.34-dev-7, created on 2019-12-17 15:31:39
  from '/var/www/html/vnstat/templates/site_index.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.34-dev-7',
  'unifunc' => 'content_5df8f4db0bed40_25474544',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '7ba6fcb20801d4e77ec48564eda9820c5d58e130' => 
    array (
      0 => '/var/www/html/vnstat/templates/site_index.tpl',
      1 => 1570256990,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:module_header.tpl' => 1,
    'file:module_graph.tpl' => 1,
    'file:module_table.tpl' => 1,
    'file:module_footer.tpl' => 1,
  ),
),false)) {
function content_5df8f4db0bed40_25474544 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_subTemplateRender("file:module_header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

<?php $_smarty_tpl->_subTemplateRender("file:module_graph.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

<?php $_smarty_tpl->_subTemplateRender("file:module_table.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

<?php $_smarty_tpl->_subTemplateRender("file:module_footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
}
}
