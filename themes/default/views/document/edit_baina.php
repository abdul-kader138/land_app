<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<style>
    hr.line {
        border-top: 1px solid darkslategray;
    }
</style>
<div class="box">
    <div class="box-header">
        <h2 class="blue"><i class="fa-fw fa fa-plus"></i><?= lang('Edit_Baina'); ?></h2>
    </div>
    <div class="box-content">
        <div class="row">
            <div class="col-lg-12">

                <p class="introtext"><?php echo lang('enter_info'); ?></p>
                <?php
                $attrib = array('data-toggle' => 'validator', 'role' => 'form');
                echo form_open_multipart("document/edit_baina/" . $document->id, $attrib);

                ?>
                <div class="row">
                    <div class="col-lg-12">

                        <div class="col-md-4">
                            <div class="form-group">
                                <?= lang("name", "name"); ?>
                                <?php echo form_input('name', $document->name, 'class="form-control input-tip" id="name" required="required"'); ?>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <?= lang("reference_no", "reference_no"); ?>
                                <?php echo form_input('reference_no', $document->reference_no, 'class="form-control input-tip" required="required" id="reference_no"'); ?>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <?= lang("Company/Title", "Company/Title") . " <b> *</b>"; ?>
                                <?php
                                $bl[""] = "";
                                foreach ($companies as $company) {
                                    $bl[$company->id] = $company->name;
                                }
                                echo form_dropdown('company_id', $bl, $document->company_id, 'id="company_id" data-placeholder="' . $this->lang->line("select") . ' ' . $this->lang->line("company") . '" required="required" class="form-control input-tip select" style="width:100%;"');
                                ?>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <?= lang("Mouza", "Mouza")." <b> *</b>"; ?>
                                <?php echo form_input('mujja', $document->mujja, 'class="form-control input-tip" required="required" id="mujja" '); ?>
                            </div>
                        </div>



                        <div class="col-md-4">
                            <div class="form-group">
                                <?= lang("doc_type", "doc_type") . " <b> *</b>"; ?>
                                <?php
                                $wh[''] = '';
                                foreach ($doctypes as $doctype) {
                                    $wh[$doctype->id] = $doctype->description;
                                }
                                echo form_dropdown('doctype_id', $wh, $document->doctype_id, 'id="doctype_id" class="form-control input-tip select" data-placeholder="' . $this->lang->line("select") . ' ' . $this->lang->line("doc_type") . '" required="required" style="width:100%;" ');
                                ?>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <?= lang("District", "District") . " <b> *</b>"; ?>
                                <?php
                                $bl[""] = "";
                                foreach ($districts as $district) {
                                    $bl[$district->id] = ($district->district);
                                }
                                echo form_dropdown('district_id', $bl, $document->district_id, 'id="district_id" data-placeholder="' . $this->lang->line("select") . ' ' . $this->lang->line("District") . '" required="required" class="form-control input-tip select" style="width:100%;"');
                                ?>
                            </div>
                        </div>

                        <div class="clearfix"></div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <?= lang("Baina_Date", "Baina_Date")." <b> *</b>"; ?>
                                <?php echo form_input('baina_date', $document->baina_date, 'class="form-control input-tip date" required="required" id="baina_date"'); ?>
                            </div>
                        </div>

                        <div class="col-sm-4">
                            <div class="form-group">
                                <?= lang("Seller_Name", "Seller_Name") . " <b> *</b>"; ?>
                                <?php echo form_input('seller_name', $document->seller_name, 'class="form-control input-tip" id="seller_name" required="required"'); ?>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <?= lang("Land_Quantity_/Decimal", "Land_Quantity_/Decimal") . " <b> *</b>"; ?>
                                <?php echo form_input('land_quantity', $document->land_quantity, 'class="form-control input-tip" id="land_quantity" required="required"'); ?>
                            </div>
                        </div>
                        <div class="clearfix"></div>

                        <div class="col-sm-4">
                            <div class="form-group">
                                <?= lang("Price", "Price")." <b> *</b>";  ?>
                                <?php echo form_input('price', $document->price, 'class="form-control input-tip" id="price" required="required"'); ?>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <?= lang("Advance_Amount", "Advance_Amount")." <b> *</b>";  ?>
                                <?php echo form_input('advance_amount', $document->advance_amount, 'class="form-control input-tip" id="advance_amount" required="required"'); ?>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <?= lang("Expiration_Date", "Expiration_Date")." <b> *</b>"; ?>
                                <?php echo form_input('expire_date', $document->expire_date, 'class="form-control input-tip date" required="required" id="expire_date"'); ?>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <hr class="line">
                        <div class="row" id="bt">
                            <div class="col-md-12">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <?= lang("other_info", "other_info"); ?>
                                        <?php echo form_textarea('other_info', $document->other_info, 'class="form-control" id="other_info" style="margin-top: 10px; height: 100px;"'); ?>
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
