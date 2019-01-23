<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<style>
    hr.line {
        border-top: 1px solid darkslategray;
    }
</style>
<div class="box">
    <div class="box-header">
        <h2 class="blue"><i class="fa-fw fa fa-plus"></i><?= lang('add_baina'); ?></h2>
    </div>
    <div class="box-content">
        <div class="row">
            <div class="col-lg-12">

                <p class="introtext"><?php echo lang('enter_info'); ?></p>
                <?php
                $attrib = array('data-toggle' => 'validator', 'role' => 'form');
                echo form_open_multipart("document/add_baina", $attrib);

                ?>
                <div class="row">
                    <div class="col-lg-12">

                        <div class="col-md-4">
                            <div class="form-group">
                                <?= lang("name", "name"); ?>
                                <?php echo form_input('name', (isset($_POST['name']) ? $_POST['name'] : ""), 'class="form-control input-tip" id="name" required="required"'); ?>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <?= lang("reference_no", "reference_no"); ?>
                                <?php echo form_input('reference_no', (isset($_POST['reference_no']) ? $_POST['reference_no'] : ""), 'class="form-control input-tip" required="required" id="reference_no"'); ?>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <?= lang("Company/Title", "Company/Title")." <b> *</b>"; ?>
                                <?php
                                $bl[""] = "";
                                foreach ($companies as $company) {
                                    $bl[$company->id] = $company->name;
                                }
                                echo form_dropdown('company_id', $bl, (isset($_POST['company_id']) ? $_POST['company_id'] : $Settings->default_biller), 'id="company_id" data-placeholder="' . $this->lang->line("select") . ' ' . $this->lang->line("company") . '" required="required" class="form-control input-tip select" style="width:100%;"');
                                ?>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <?= lang("Mouza", "Mouza")." <b> *</b>"; ?>
                                <?php echo form_input('mujja', (isset($_POST['mujja']) ? $_POST['mujja'] : ""), 'class="form-control input-tip" required="required" id="mujja" '); ?>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="form-group">
                                <?= lang("doc_type", "doc_type")." <b> *</b>" ; ?>
                                <?php
                                $wh[''] = '';
                                foreach ($doctypes as $doctype) {
                                    $wh[$doctype->id] = $doctype->description;
                                }
                                echo form_dropdown('doctype_id', $wh, (isset($_POST['doctype_id']) ? $_POST['doctype_id'] : ""), 'id="doctype_id" class="form-control input-tip select" data-placeholder="' . $this->lang->line("select") . ' ' . $this->lang->line("doc_type") . '" required="required" style="width:100%;" ');
                                ?>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <?= lang("District", "District")." <b> *</b>"; ?>
                                <?php
                                $bl[""] = "";
                                foreach ($districts as $district) {
                                    $bl[$district->id] = ($district->district);
                                }
                                echo form_dropdown('district_id', $bl, (isset($_POST['district_id']) ? $_POST['district_id'] : ""), 'id="district_id" data-placeholder="' . $this->lang->line("select") . ' ' . $this->lang->line("District") . '" required="required" class="form-control input-tip select" style="width:100%;"');
                                ?>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <?= lang("Baina_Date", "Baina_Date")." <b> *</b>"; ?>
                                <?php echo form_input('baina_date', (isset($_POST['baina_date']) ? $_POST['baina_date'] : ""), 'class="form-control input-tip date" required="required" id="baina_date"'); ?>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <?= lang("Seller_Name", "Seller_Name") ." <b> *</b>"; ?>
                                <?php echo form_input('seller_name', (isset($_POST['seller_name']) ? $_POST['seller_name'] : ""), 'class="form-control input-tip" id="seller_name" required="required"'); ?>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <?= lang("Land_Quantity_/Decimal", "Land_Quantity_/Decimal")." <b> *</b>";  ?>
                                <?php echo form_input('land_quantity', (isset($_POST['land_quantity']) ? $_POST['land_quantity'] : ""), 'class="form-control input-tip" id="land_quantity" required="required"'); ?>
                            </div>
                        </div>

                        <div class="clearfix"></div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <?= lang("Price", "Price")." <b> *</b>";  ?>
                                <?php echo form_input('price', (isset($_POST['price']) ? $_POST['price'] : ""), 'class="form-control input-tip" id="price" required="required"'); ?>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <?= lang("Advance_Amount", "Advance_Amount")." <b> *</b>";  ?>
                                <?php echo form_input('advance_amount', (isset($_POST['advance_amount']) ? $_POST['advance_amount'] : ""), 'class="form-control input-tip" id="advance_amount" required="required"'); ?>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <?= lang("Expiration_Date", "Expiration_Date")." <b> *</b>"; ?>
                                <?php echo form_input('expire_date', (isset($_POST['expire_date']) ? $_POST['expire_date'] : ""), 'class="form-control input-tip date" required="required" id="expire_date"'); ?>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <hr class="line">
                        <div class="row" id="bt">
                            <div class="col-md-12">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <?= lang("other_info", "other_info"); ?>
                                        <?php echo form_textarea('other_info', (isset($_POST['other_info']) ? $_POST['other_info'] : ""), 'class="form-control" id="other_info" style="margin-top: 10px; height: 100px;"'); ?>
                                    </div>
                                </div>

                            </div>

                        </div>

                        <div class="col-md-12">
                            <div
                                    class="fprom-group"><?php echo form_submit('add_sale', $this->lang->line("submit"), 'id="add_sale" class="btn btn-primary" style="padding: 6px 15px; margin:15px 0;"'); ?>
                                <button type="button" class="btn btn-danger" id="reset"><?= lang('reset') ?></div>
                        </div>
                    </div>
                </div>
                <?php echo form_close(); ?>
            </div>
        </div>
    </div>
</div>
