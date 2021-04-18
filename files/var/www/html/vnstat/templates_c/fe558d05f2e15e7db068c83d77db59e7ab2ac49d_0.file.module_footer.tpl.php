<?php
/* Smarty version 3.1.34-dev-7, created on 2019-12-17 15:31:39
  from '/var/www/html/vnstat/templates/module_footer.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.34-dev-7',
  'unifunc' => 'content_5df8f4db2e1556_68983474',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'fe558d05f2e15e7db068c83d77db59e7ab2ac49d' => 
    array (
      0 => '/var/www/html/vnstat/templates/module_footer.tpl',
      1 => 1570256990,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:module_graph_js.tpl' => 1,
  ),
),false)) {
function content_5df8f4db2e1556_68983474 (Smarty_Internal_Template $_smarty_tpl) {
?>    <footer class="footer">
        <div class="container">
            <span class="text-muted">Copyright (C) <?php echo $_smarty_tpl->tpl_vars['year']->value;?>
 Alexander Marston -
                <a href="https://github.com/alexandermarston/vnstat-dashboard">vnstat-dashboard</a>
            </span>
        </div>
    </footer>

    <?php echo '<script'; ?>
 type="text/javascript" src="https://www.gstatic.com/charts/loader.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"><?php echo '</script'; ?>
>
<?php $_smarty_tpl->_subTemplateRender("file:module_graph_js.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

</body>

</html>
<?php }
}
