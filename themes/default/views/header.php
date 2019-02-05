<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?><!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <base href="<?= site_url() ?>"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $page_title ?> - <?= $Settings->site_name ?></title>
    <link rel="shortcut icon" href="<?= $assets ?>images/icon.png"/>
    <link href="<?= $assets ?>styles/theme.css" rel="stylesheet"/>
    <link href="<?= $assets ?>styles/style.css" rel="stylesheet"/>
    <script type="text/javascript" src="<?= $assets ?>js/jquery-2.0.3.min.js"></script>
    <script type="text/javascript" src="<?= $assets ?>js/jquery-migrate-1.2.1.min.js"></script>
    <!--[if lt IE 9]>
    <script src="<?= $assets ?>js/jquery.js"></script>
    <![endif]-->
    <noscript>
        <style type="text/css">#loading {
                display: none;
            }
        </style>
    </noscript>
    <?php if ($Settings->user_rtl) { ?>
        <link href="<?= $assets ?>styles/helpers/bootstrap-rtl.min.css" rel="stylesheet"/>
        <link href="<?= $assets ?>styles/style-rtl.css" rel="stylesheet"/>
        <script type="text/javascript">
            $(document).ready(function () {
                $('.pull-right, .pull-left').addClass('flip');
            });
        </script>
    <?php } ?>
    <script type="text/javascript">
        $(window).load(function () {
            $("#loading").fadeOut("slow");
        });
    </script>
</head>

<body>
<noscript>
    <div class="global-site-notice noscript">
        <div class="notice-inner">
            <p><strong>JavaScript seems to be disabled in your browser.</strong><br>You must have JavaScript enabled in
                your browser to utilize the functionality of this website.</p>
        </div>
    </div>
</noscript>
<div id="loading"></div>
<div id="app_wrapper">
<header id="header" class="navbar">
<div class="container">
<a class="navbar-brand" href="<?= site_url() ?>"><span class="logo"><?= $Settings->site_name ?></span></a>

<div class="btn-group visible-xs pull-right btn-visible-sm">
    <button class="navbar-toggle btn" type="button" data-toggle="collapse" data-target="#sidebar_menu">
        <span class="fa fa-bars"></span>
    </button>
    <a href="<?= site_url('users/profile/' . $this->session->userdata('user_id')); ?>" class="btn">
        <span class="fa fa-user"></span>
    </a>
    <a href="<?= site_url('logout'); ?>" class="btn">
        <span class="fa fa-sign-out"></span>
    </a>
</div>
<div class="header-nav">
<ul class="nav navbar-nav pull-right">
    <li class="dropdown">
        <a class="btn account dropdown-toggle" data-toggle="dropdown" href="#">
            <img alt=""
                 src="<?= $this->session->userdata('avatar') ? site_url() . 'assets/uploads/avatars/thumbs/' . $this->session->userdata('avatar') : base_url('assets/images/' . $this->session->userdata('gender') . '.png'); ?>"
                 class="mini_avatar img-rounded">

            <div class="user">
                <span><?= lang('welcome') ?> <?= $this->session->userdata('username'); ?></span>
            </div>
        </a>
        <ul class="dropdown-menu pull-right">
            <li>
                <a href="<?= site_url('users/profile/' . $this->session->userdata('user_id')); ?>">
                    <i class="fa fa-user"></i> <?= lang('profile'); ?>
                </a>
            </li>
            <li>
                <a href="<?= site_url('users/profile/' . $this->session->userdata('user_id') . '/#cpassword'); ?>"><i
                        class="fa fa-key"></i> <?= lang('change_password'); ?>
                </a>
            </li>
            <li class="divider"></li>
            <li>
                <a href="<?= site_url('logout'); ?>">
                    <i class="fa fa-sign-out"></i> <?= lang('logout'); ?>
                </a>
            </li>
        </ul>
    </li>
</ul>
<ul class="nav navbar-nav pull-right">
    <li class="dropdown hidden-xs"><a class="btn tip" title="<?= lang('dashboard') ?>"
                                      data-placement="bottom"
                                      href="<?= site_url('welcome') ?>"><i class="fa fa-dashboard"></i></a>
    </li>
    <?php if ($Owner) { ?>
        <li class="dropdown hidden-sm">
            <a class="btn tip" title="<?= lang('settings') ?>" data-placement="bottom"
               href="<?= site_url('system_settings') ?>">
                <i class="fa fa-cogs"></i>
            </a>
        </li>
    <?php } ?>
    <li class="dropdown hidden-xs">
        <a class="btn tip" title="<?= lang('calculator') ?>" data-placement="bottom" href="#"
           data-toggle="dropdown">
            <i class="fa fa-calculator"></i>
        </a>
        <ul class="dropdown-menu pull-right calc">
            <li class="dropdown-content">
                <span id="inlineCalc"></span>
            </li>
        </ul>
    </li>
    <?php if ($info) { ?>
        <li class="dropdown hidden-sm">
            <a class="btn tip" title="<?= lang('notifications') ?>" data-placement="bottom" href="#"
               data-toggle="dropdown">
                <i class="fa fa-info-circle"></i>
                <span class="number blightOrange black"><?= sizeof($info) ?></span>
            </a>
            <ul class="dropdown-menu pull-right content-scroll">
                <li class="dropdown-header"><i
                        class="fa fa-info-circle"></i> <?= lang('notifications'); ?></li>
                <li class="dropdown-content">
                    <div class="scroll-div">
                        <div class="top-menu-scroll">
                            <ol class="oe">
                                <?php
                                foreach ($info as $n) {
                                    echo '<li>' . $n->comment . '</li>';
                                }
                                ?>
                            </ol>
                        </div>
                    </div>
                </li>
            </ul>
        </li>
    <?php } ?>
    <?php if ($events) { ?>
        <li class="dropdown hidden-xs">
            <a class="btn tip" title="<?= lang('calendar') ?>" data-placement="bottom" href="#"
               data-toggle="dropdown">
                <i class="fa fa-calendar"></i>
                <span class="number blightOrange black"><?= sizeof($events) ?></span>
            </a>
            <ul class="dropdown-menu pull-right content-scroll">
                <li class="dropdown-header">
                    <i class="fa fa-calendar"></i> <?= lang('upcoming_events'); ?>
                </li>
                <li class="dropdown-content">
                    <div class="top-menu-scroll">
                        <ol class="oe">
                            <?php
                            foreach ($events as $event) {
                                echo '<li>' . date($dateFormats['php_ldate'], strtotime($event->start)) . ' <strong>' . $event->title . '</strong><br>' . $event->description . '</li>';
                            }
                            ?>
                        </ol>
                    </div>
                </li>
                <li class="dropdown-footer">
                    <a href="<?= site_url('calendar') ?>" class="btn-block link">
                        <i class="fa fa-calendar"></i> <?= lang('calendar') ?>
                    </a>
                </li>
            </ul>
        </li>
    <?php } else { ?>
        <li class="dropdown hidden-xs">
            <a class="btn tip" title="<?= lang('calendar') ?>" data-placement="bottom"
               href="<?= site_url('calendar') ?>">
                <i class="fa fa-calendar"></i>
            </a>
        </li>
    <?php } ?>
    <li class="dropdown hidden-sm">
        <a class="btn tip" title="<?= lang('styles') ?>" data-placement="bottom" data-toggle="dropdown"
           href="#">
            <i class="fa fa-css3"></i>
        </a>
        <ul class="dropdown-menu pull-right">
            <li class="bwhite noPadding">
                <a href="#" id="fixed" class="">
                    <i class="fa fa-angle-double-left"></i>
                    <span id="fixedText">Fixed</span>
                </a>
                <a href="#" id="cssLight" class="grey">
                    <i class="fa fa-stop"></i> Grey
                </a>
                <a href="#" id="cssBlue" class="blue">
                    <i class="fa fa-stop"></i> Blue
                </a>
                <a href="#" id="cssBlack" class="black">
                    <i class="fa fa-stop"></i> Black
                </a>
            </li>
        </ul>
    </li>
    <?php if ($Owner && $Settings->update) { ?>
        <li class="dropdown hidden-sm">
            <a class="btn blightOrange tip" title="<?= lang('update_available') ?>"
               data-placement="bottom" data-container="body"
               href="<?= site_url('system_settings/updates') ?>">
                <i class="fa fa-download"></i>
            </a>
        </li>
    <?php } ?>
    <?php if (($Owner || $Admin || $GP['reports-quantity_alerts'] || $GP['reports-expiry_alerts']) && ($qty_alert_num > 0 || $exp_alert_num > 0)) { ?>
        <li class="dropdown hidden-sm">
            <a class="btn blightOrange tip" title="<?= lang('alerts') ?>"
               data-placement="left" data-toggle="dropdown" href="#">
                <i class="fa fa-exclamation-triangle"></i>
            </a>
            <ul class="dropdown-menu pull-right">
                <li>
                    <a href="<?= site_url('reports/quantity_alerts') ?>" class="">
                        <span class="label label-danger pull-right"
                              style="margin-top:3px;"><?= $qty_alert_num; ?></span>
                        <span style="padding-right: 35px;"><?= lang('quantity_alerts') ?></span>
                    </a>
                </li>
                <?php if ($Settings->product_expiry) { ?>
                    <li>
                        <a href="<?= site_url('reports/expiry_alerts') ?>" class="">
                            <span class="label label-danger pull-right"
                                  style="margin-top:3px;"><?= $exp_alert_num; ?></span>
                            <span style="padding-right: 35px;"><?= lang('expiry_alerts') ?></span>
                        </a>
                    </li>
                <?php } ?>
            </ul>
        </li>
    <?php } ?>
    <?php if (POS && $GP['pos-index']) { ?>
        <li class="dropdown hidden-xs">
            <a class="btn bdarkGreen tip" title="<?= lang('pos') ?>" data-placement="bottom"
               href="<?= site_url('pos') ?>">
                <i class="fa fa-th-large"></i> <span class="padding05"><?= lang('pos') ?></span>
            </a>
        </li>
    <?php } ?>
    <?php if ($Owner) { ?>
        <li class="dropdown">
            <a class="btn bdarkGreen tip" id="today_profit"
               title="<span><?= lang('today_profit') ?></span>"
               data-placement="bottom" data-html="true" href="<?= site_url('reports/profit') ?>"
               data-toggle="modal" data-target="#myModal">
                <i class="fa fa-hourglass-2"></i>
            </a>
        </li>
    <?php } ?>
    <?php if ($Owner || $Admin) { ?>
        <?php if (POS) { ?>
            <li class="dropdown hidden-xs">
                <a class="btn bblue tip" title="<?= lang('list_open_registers') ?>"
                   data-placement="bottom"
                   href="<?= site_url('pos/registers') ?>">
                    <i class="fa fa-list"></i>
                </a>
            </li>
        <?php } ?>
        <li class="dropdown hidden-xs">
            <a class="btn bred tip" title="<?= lang('clear_ls') ?>" data-placement="bottom" id="clearLS"
               href="#">
                <i class="fa fa-eraser"></i>
            </a>
        </li>
    <?php } ?>

</ul>
</div>
</div>
</header>

<div class="container" id="container">
<div class="row" id="main-con">
<table class="lt">
<tr>
<td class="sidebar-con">
<div id="sidebar-left">
<div class="sidebar-nav nav-collapse collapse navbar-collapse" id="sidebar_menu">
<ul class="nav main-menu">
<li class="mm_welcome">
    <a href="<?= site_url() ?>">
        <i class="fa fa-dashboard"></i>
        <span class="text"> <?= lang('dashboard'); ?></span>
    </a>
</li>

<?php
if ($Owner || $Admin) {
    ?>

    <li class="mm_document">
        <a class="dropmenu" href="#">
            <i class="fa fa-list-alt"></i>
            <span class="text"> <?= lang('document'); ?> </span>
            <span class="chevron closed"></span>
        </a>
        <ul>
            <li id="document_index">
                <a class="submenu" href="<?= site_url('document'); ?>">
                    <i class="fa fa-list-alt"></i><span
                        class="text"> <?= lang('list_document'); ?></span>
                </a>
            </li>
            <li id="document_add_document">
                <a class="submenu" href="<?= site_url('document/add'); ?>">
                    <i class="fa fa-plus"></i><span
                        class="text"> <?= lang('add_document'); ?></span>
                </a>
            </li>
            <li id="document_list_baina">
                <a class="submenu" href="<?= site_url('document/list_baina'); ?>">
                    <i class="fa fa-list-alt"></i><span
                            class="text"> <?= lang('List_Baina'); ?></span>
                </a>
            </li>
            <li id="document_add_baina">
                <a class="submenu" href="<?= site_url('document/add_baina'); ?>">
                    <i class="fa fa-file-archive-o"></i><span
                            class="text"> <?= lang('add_baina'); ?></span>
                </a>
            </li>
            <li id="document_doc_movement_list">
                <a class="submenu" href="<?= site_url('document/doc_movement_list'); ?>">
                    <i class="fa fa-plus"></i><span
                        class="text"> <?= lang('doc_movement_list'); ?></span>
                </a>
            </li>
            <li id="document_add_movement">
                <a class="submenu" href="<?= site_url('document/add_movement'); ?>">
                    <i class="fa fa-plus"></i><span
                        class="text"> <?= lang('add_movement'); ?></span>
                </a>
            </li>
            <li id="document_file_explorer">
                <a class="submenu" href="<?= site_url('document/file_explorer'); ?>">
                    <i class="fa fa-search"></i><span
                        class="text"> <?= lang('File_Manager'); ?></span>
                </a>
            </li>
            <li id="document_file_manager">
                <a class="submenu" href="<?= site_url('document/file_manager'); ?>">
                    <i class="fa fa-search"></i><span
                            class="text"> <?= lang('File_Manager_New'); ?></span>
                </a>
            </li>
        </ul>
    </li>

    <li class="mm_auth mm_customers mm_suppliers mm_billers">
        <a class="dropmenu" href="#">
            <i class="fa fa-users"></i>
            <span class="text"> <?= lang('people'); ?> </span>
            <span class="chevron closed"></span>
        </a>
        <ul>
            <?php if ($Owner) { ?>
                <li id="auth_users">
                    <a class="submenu" href="<?= site_url('users'); ?>">
                        <i class="fa fa-users"></i><span
                            class="text"> <?= lang('list_users'); ?></span>
                    </a>
                </li>
                <li id="auth_create_user">
                    <a class="submenu" href="<?= site_url('users/create_user'); ?>">
                        <i class="fa fa-user-plus"></i><span
                            class="text"> <?= lang('new_user'); ?></span>
                    </a>
                </li>

            <?php } ?>
        </ul>
    </li>
    <li class="mm_notifications">
        <a class="submenu" href="<?= site_url('notifications'); ?>">
            <i class="fa fa-info-circle"></i><span
                class="text"> <?= lang('notifications'); ?></span>
        </a>
    </li>
    <?php if ($Owner) { ?>
        <li class="mm_system_settings <?= strtolower($this->router->fetch_method()) == 'sales' ? '' : 'mm_pos' ?>">
            <a class="dropmenu" href="#">
                <i class="fa fa-cog"></i><span
                    class="text"> <?= lang('settings'); ?> </span>
                <span class="chevron closed"></span>
            </a>
            <ul>
                <li id="system_settings_index">
                    <a href="<?= site_url('system_settings') ?>">
                        <i class="fa fa-cog"></i><span
                            class="text"> <?= lang('system_settings'); ?></span>
                    </a>
                </li>
                <li id="system_settings_change_logo">
                    <a href="<?= site_url('system_settings/change_logo') ?>"
                       data-toggle="modal" data-target="#myModal">
                        <i class="fa fa-upload"></i><span
                            class="text"> <?= lang('change_logo'); ?></span>
                    </a>
                </li>
                <li id="system_settings_currencies">
                    <a href="<?= site_url('system_settings/currencies') ?>">
                        <i class="fa fa-money"></i><span
                            class="text"> <?= lang('currencies'); ?></span>
                    </a>
                </li>
                <li id="system_settings_categories">
                    <a href="<?= site_url('system_settings/categories') ?>">
                        <i class="fa fa-folder-open"></i><span
                            class="text"> <?= lang('categories'); ?></span>
                    </a>
                </li>
                <li id="system_settings_units">
                    <a href="<?= site_url('system_settings/units') ?>">
                        <i class="fa fa-wrench"></i><span
                            class="text"> <?= lang('units'); ?></span>
                    </a>
                </li>
                <li id="system_settings_brands">
                    <a href="<?= site_url('system_settings/brands') ?>">
                        <i class="fa fa-th-list"></i><span
                            class="text"> <?= lang('brands'); ?></span>
                    </a>
                </li>
                <li id="system_settings_company">
                    <a href="<?= site_url('system_settings/company') ?>">
                        <i class="fa fa-th-list"></i><span
                            class="text"> <?= lang('company'); ?></span>
                    </a>
                </li>
                <li id="system_settings_designation">
                    <a href="<?= site_url('system_settings/designation') ?>">
                        <i class="fa fa-th-list"></i><span
                            class="text"> <?= lang('designation'); ?></span>
                    </a>
                </li>
                <li id="system_settings_designation">
                    <a href="<?= site_url('system_settings/doctype') ?>">
                        <i class="fa fa-th-list"></i><span
                            class="text"> <?= lang('doc_type'); ?></span>
                    </a>
                </li>
                <li id="system_settings_operator">
                    <a href="<?= site_url('system_settings/operator') ?>">
                        <i class="fa fa-th-list"></i><span
                            class="text"> <?= lang('operator'); ?></span>
                    </a>
                </li>
                <li id="system_settings_package">
                    <a href="<?= site_url('system_settings/package') ?>">
                        <i class="fa fa-th-list"></i><span
                            class="text"> <?= lang('package'); ?></span>
                    </a>
                </li>
                <li id="system_settings_variants">
                    <a href="<?= site_url('system_settings/variants') ?>">
                        <i class="fa fa-tags"></i><span
                            class="text"> <?= lang('variants'); ?></span>
                    </a>
                </li>
                <li id="system_settings_email_templates">
                    <a href="<?= site_url('system_settings/email_templates') ?>">
                        <i class="fa fa-envelope"></i><span
                            class="text"> <?= lang('email_templates'); ?></span>
                    </a>
                </li>
                <li id="system_settings_user_groups">
                    <a href="<?= site_url('system_settings/user_groups') ?>">
                        <i class="fa fa-key"></i><span
                            class="text"> <?= lang('group_permissions'); ?></span>
                    </a>
                </li>
                <li id="system_settings_backups">
                    <a href="<?= site_url('system_settings/backups') ?>">
                        <i class="fa fa-database"></i><span
                            class="text"> <?= lang('backups'); ?></span>
                    </a>
                </li>
                <li id="system_settings_updates">
                    <a href="<?= site_url('system_settings/updates') ?>">
                        <i class="fa fa-upload"></i><span
                            class="text"> <?= lang('updates'); ?></span>
                    </a>
                </li>
            </ul>
        </li>
    <?php } ?>
    <li class="mm_reports">
        <a class="dropmenu" href="#">
            <i class="fa fa-bar-chart-o"></i>
            <span class="text"> <?= lang('reports'); ?> </span>
            <span class="chevron closed"></span>
        </a>
        <ul>
            <li id="reports_index">
                <a href="<?= site_url('reports') ?>">
                    <i class="fa fa-bars"></i><span
                        class="text"> <?= lang('overview_chart'); ?></span>
                </a>
            </li>
            <li id="reports_warehouse_stock">
                <a href="<?= site_url('reports/warehouse_stock') ?>">
                    <i class="fa fa-building"></i><span
                        class="text"> <?= lang('warehouse_stock'); ?></span>
                </a>
            </li>
            <li id="reports_best_sellers">
                <a href="<?= site_url('reports/best_sellers') ?>">
                    <i class="fa fa-line-chart"></i><span
                        class="text"> <?= lang('best_sellers'); ?></span>
                </a>
            </li>
            <?php if (POS) { ?>
                <li id="reports_register">
                    <a href="<?= site_url('reports/register') ?>">
                        <i class="fa fa-th-large"></i><span
                            class="text"> <?= lang('register_report'); ?></span>
                    </a>
                </li>
            <?php } ?>
            <li id="reports_quantity_alerts">
                <a href="<?= site_url('reports/quantity_alerts') ?>">
                    <i class="fa fa-bar-chart-o"></i><span
                        class="text"> <?= lang('product_quantity_alerts'); ?></span>
                </a>
            </li>
            <?php if ($Settings->product_expiry) { ?>
                <li id="reports_expiry_alerts">
                    <a href="<?= site_url('reports/expiry_alerts') ?>">
                        <i class="fa fa-bar-chart-o"></i><span
                            class="text"> <?= lang('product_expiry_alerts'); ?></span>
                    </a>
                </li>
            <?php } ?>
            <li id="reports_products">
                <a href="<?= site_url('reports/products') ?>">
                    <i class="fa fa-barcode"></i><span
                        class="text"> <?= lang('products_report'); ?></span>
                </a>
            </li>
            <li id="reports_adjustments">
                <a href="<?= site_url('reports/adjustments') ?>">
                    <i class="fa fa-filter"></i><span
                        class="text"> <?= lang('adjustments_report'); ?></span>
                </a>
            </li>
            <li id="reports_categories">
                <a href="<?= site_url('reports/categories') ?>">
                    <i class="fa fa-folder-open"></i><span
                        class="text"> <?= lang('categories_report'); ?></span>
                </a>
            </li>
            <li id="reports_brands">
                <a href="<?= site_url('reports/brands') ?>">
                    <i class="fa fa-cubes"></i><span
                        class="text"> <?= lang('brands_report'); ?></span>
                </a>
            </li>
            <li id="reports_daily_sales">
                <a href="<?= site_url('reports/daily_sales') ?>">
                    <i class="fa fa-calendar"></i><span
                        class="text"> <?= lang('daily_sales'); ?></span>
                </a>
            </li>
            <li id="reports_monthly_sales">
                <a href="<?= site_url('reports/monthly_sales') ?>">
                    <i class="fa fa-calendar"></i><span
                        class="text"> <?= lang('monthly_sales'); ?></span>
                </a>
            </li>
            <li id="reports_sales">
                <a href="<?= site_url('reports/sales') ?>">
                    <i class="fa fa-heart"></i><span
                        class="text"> <?= lang('sales_report'); ?></span>
                </a>
            </li>
            <li id="reports_sales_margin">
                <a href="<?= site_url('reports/sales_margin') ?>">
                    <i class="fa fa-heart"></i><span
                        class="text"> <?= lang('sales_margin_report'); ?></span>
                </a>
            </li>
            <li id="reports_payments">
                <a href="<?= site_url('reports/payments') ?>">
                    <i class="fa fa-money"></i><span
                        class="text"> <?= lang('payments_report'); ?></span>
                </a>
            </li>
            <li id="reports_profit_loss">
                <a href="<?= site_url('reports/profit_loss') ?>">
                    <i class="fa fa-money"></i><span
                        class="text"> <?= lang('profit_and_loss'); ?></span>
                </a>
            </li>
            <li id="reports_daily_purchases">
                <a href="<?= site_url('reports/daily_purchases') ?>">
                    <i class="fa fa-calendar"></i><span
                        class="text"> <?= lang('daily_purchases'); ?></span>
                </a>
            </li>
            <li id="reports_monthly_purchases">
                <a href="<?= site_url('reports/monthly_purchases') ?>">
                    <i class="fa fa-calendar"></i><span
                        class="text"> <?= lang('monthly_purchases'); ?></span>
                </a>
            </li>
            <li id="reports_purchases">
                <a href="<?= site_url('reports/purchases') ?>">
                    <i class="fa fa-star"></i><span
                        class="text"> <?= lang('purchases_report'); ?></span>
                </a>
            </li>
            <li id="reports_expenses">
                <a href="<?= site_url('reports/expenses') ?>">
                    <i class="fa fa-star"></i><span
                        class="text"> <?= lang('expenses_report'); ?></span>
                </a>
            </li>
            <li id="reports_customer_report">
                <a href="<?= site_url('reports/customers') ?>">
                    <i class="fa fa-users"></i><span
                        class="text"> <?= lang('customers_report'); ?></span>
                </a>
            </li>
            <li id="reports_supplier_report">
                <a href="<?= site_url('reports/suppliers') ?>">
                    <i class="fa fa-users"></i><span
                        class="text"> <?= lang('suppliers_report'); ?></span>
                </a>
            </li>
            <li id="reports_staff_report">
                <a href="<?= site_url('reports/users') ?>">
                    <i class="fa fa-users"></i><span
                        class="text"> <?= lang('staff_report'); ?></span>
                </a>
            </li>
            <li id="reports_time_schedule_report">
                <a href="<?= site_url('reports/time_schedule') ?>">
                    <i class="fa fa-clock-o"></i><span
                        class="text"> <?= lang('Time Schedule Report'); ?></span>
                </a>
            </li>
            <li id="reports_company_bill_details">
                <a href="<?= site_url('reports/company_bill_details') ?>">
                    <i class="fa fa-tasks"></i><span
                        class="text"> <?= lang('company_bill_details'); ?></span>
                </a>
            </li>
            <li id="reports_company_wise_bill">
                <a href="<?= site_url('reports/company_wise_bill') ?>">
                    <i class="fa fa-tasks"></i><span
                        class="text"> <?= lang('company_wise_bill'); ?></span>
                </a>
            </li>
        </ul>
    </li>

<?php
} else { // not owner and not admin
    ?>

    <?php if ($GP['document-index'] || $GP['document-add_baina'] || $GP['document-edit_baina'] || $GP['document-list_baina'] || $GP['document-delete_baina'] || $GP['document-edit'] ||
//        $GP['document-delete'] || $GP['employees-employee_by_csv'] || $GP['employees-bill_add'] || $GP['employees-bill_index']
        $GP['document-delete']
    ) {
        ?>
        <li class="mm_document">
            <a class="dropmenu" href="#">
                <i class="fa fa-list-alt"></i>
                <span class="text"> <?= lang('document'); ?> </span>
                <span class="chevron closed"></span>
            </a>
            <ul>
                <?php if ($GP['document-index']) { ?>
                    <li id="document_index">
                        <a class="submenu" href="<?= site_url('document'); ?>">
                            <i class="fa fa-list-alt"></i><span
                                class="text"> <?= lang('list_document'); ?></span>
                        </a>
                    </li>
                <?php } ?>
                <?php if ($GP['document-add']) { ?>
                    <li id="document_add">
                        <a class="submenu" href="<?= site_url('document/add'); ?>">
                            <i class="fa fa-plus"></i><span
                                class="text"> <?= lang('add_document'); ?></span>
                        </a>
                    </li>
                <?php } ?>
                <?php if ($GP['document-list_baina']) { ?>
                    <li id="document_list_baina">
                        <a class="submenu" href="<?= site_url('document/list_baina'); ?>">
                            <i class="fa fa-list-alt"></i><span
                                    class="text"> <?= lang('list_baina'); ?></span>
                        </a>
                    </li>
                <?php } ?>
                <?php if ($GP['document-add_baina']) { ?>
                    <li id="document_add_baina">
                        <a class="submenu" href="<?= site_url('document/add_baina'); ?>">
                            <i class="fa fa-file-archive-o"></i><span
                                    class="text"> <?= lang('Add_Baina'); ?></span>
                        </a>
                    </li>
                <?php } ?>
                <?php if ($GP['document-doc_movement_list']) { ?>
                    <li id="document_doc_movement_list">
                        <a class="submenu" href="<?= site_url('document/doc_movement_list'); ?>">
                            <i class="fa fa-list-alt"></i><span
                                class="text"> <?= lang('doc_movement_list'); ?></span>
                        </a>
                    </li>
                <?php } ?>
                <?php if ($GP['document-add_movement']) { ?>
                    <li id="document_add_movement">
                        <a class="submenu" href="<?= site_url('document/add_movement'); ?>">
                            <i class="fa fa-plus"></i><span
                                class="text"> <?= lang('add_movement'); ?></span>
                        </a>
                    </li>
                <?php } ?>
                <?php if ($GP['document-file_manager']) { ?>
                    <li id="document_file_manager">
                        <a class="submenu" href="<?= site_url('document/file_manager'); ?>">
                            <i class="fa fa-search"></i><span
                                    class="text"> <?= lang('File_Manager'); ?></span>
                        </a>
                    </li>
                <?php } ?>
            </ul>
        </li>
    <?php } ?>

    <?php if ($GP['company-index'] || $GP['designation-index'] || $GP['operator-index'] || $GP['package-index'] || $GP['doctype-index'] || $GP['backups_index' ]) { ?>
        <li class="mm_system_settings">
            <a class="dropmenu" href="#">
                <i class="fa fa-cog"></i>
                <span class="text"> <?= lang('Settings'); ?> </span>
                <span class="chevron closed"></span>
            </a>
            <ul>
                <?php if ($GP['company-index']) { ?>
                    <li id="system_settings_company">
                        <a class="submenu"
                           href="<?= site_url('system_settings/company'); ?>">
                            <i class="fa fa-th"></i><span
                                class="text"> <?= lang('company'); ?></span>
                        </a>
                    </li>
                <?php } ?>
                <?php if ($GP['designation-index']) { ?>
                    <li id="mm-designation-index">
                        <a class="submenu"
                           href="<?= site_url('system_settings/designation'); ?>">
                            <i class="fa fa-th"></i><span
                                class="text"> <?= lang('designation'); ?></span>
                        </a>
                    </li>
                <?php } ?>
                <?php if ($GP['operator-index']) { ?>
                    <li id="mm-operator-index">
                        <a class="submenu"
                           href="<?= site_url('system_settings/operator'); ?>">
                            <i class="fa fa-th"></i><span
                                class="text"> <?= lang('operator'); ?></span>
                        </a>
                    </li>
                <?php } ?>
                <?php if ($GP['package-index']) { ?>
                    <li id="mm-package-index">
                        <a class="submenu"
                           href="<?= site_url('system_settings/package'); ?>">
                            <i class="fa fa-th"></i><span
                                class="text"> <?= lang('package'); ?></span>
                        </a>
                    </li>
                <?php } ?>
                <?php if ($GP['doctype-index']) { ?>
                    <li id="mm-doctype-index">
                        <a class="submenu"
                           href="<?= site_url('system_settings/doctype'); ?>">
                            <i class="fa fa-th"></i><span
                                class="text"> <?= lang('doc_type'); ?></span>
                        </a>
                    </li>
                <?php } ?>
         <?php if ($GP['backups_index']) { ?>
                <li id="system_settings_backups">
                    <a href="<?= site_url('system_settings/backups') ?>">
                        <i class="fa fa-database"></i><span
                            class="text"> <?= lang('backups'); ?></span>
                    </a>
                </li>
        <?php } ?>
            </ul>
        </li>
    <?php } ?>
<?php } ?>
</ul>
</div>
<a href="#" id="main-menu-act" class="full visible-md visible-lg">
    <i class="fa fa-angle-double-left"></i>
</a>
</div>
</td>
<td class="content-con">
    <div id="content">
        <div class="row">
            <div class="col-sm-12 col-md-12">
                <ul class="breadcrumb">
                    <?php
                    foreach ($bc as $b) {
                        if ($b['link'] === '#') {
                            echo '<li class="active">' . $b['page'] . '</li>';
                        } else {
                            echo '<li><a href="' . $b['link'] . '">' . $b['page'] . '</a></li>';
                        }
                    }
                    ?>
                    <li class="right_log hidden-xs">
                        <?= lang('your_ip') . ' ' . $ip_address . " <span class='hidden-sm'>( " . lang('last_login_at') . ": " . date($dateFormats['php_ldate'], $this->session->userdata('old_last_login')) . " " . ($this->session->userdata('last_ip') != $ip_address ? lang('ip:') . ' ' . $this->session->userdata('last_ip') : '') . " )</span>" ?>
                    </li>
                </ul>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <?php if ($message) { ?>
                    <div class="alert alert-success">
                        <button data-dismiss="alert" class="close" type="button">×</button>
                        <?= $message; ?>
                    </div>
                <?php } ?>
                <?php if ($error) { ?>
                    <div class="alert alert-danger">
                        <button data-dismiss="alert" class="close" type="button">×</button>
                        <?= $error; ?>
                    </div>
                <?php } ?>
                <?php if ($warning) { ?>
                    <div class="alert alert-warning">
                        <button data-dismiss="alert" class="close" type="button">×</button>
                        <?= $warning; ?>
                    </div>
                <?php } ?>
                <?php
                if ($info) {
                    foreach ($info as $n) {
                        if (!$this->session->userdata('hidden' . $n->id)) {
                            ?>
                            <div class="alert alert-info">
                                <a href="#" id="<?= $n->id ?>" class="close hideComment external"
                                   data-dismiss="alert">&times;</a>
                                <?= $n->comment; ?>
                            </div>
                        <?php
                        }
                    }
                }
                ?>
                <div class="alerts-con"></div>
