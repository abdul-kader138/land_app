<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<style>
    hr.line {
        border-top: 1px solid darkslategray;
    }
</style>
<div class="box">
    <div class="box-header">
        <h2 class="blue"><i class="fa-fw fa fa-plus"></i><?= lang('doc_edit'); ?></h2>
    </div>
    <div class="box-content">
        <div class="row">
            <div class="col-lg-12">

                <p class="introtext"><?php echo lang('enter_info'); ?></p>
                <?php
                $attrib = array('data-toggle' => 'validator', 'role' => 'form');
                echo form_open_multipart("document/edit/" . $document->id, $attrib);

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
                                <?= lang("document_status", "document_status") . " <b> *</b>"; ?>
                                <?php $sst = array('new' => lang('New'), 'updated' => lang('Updated'), 'pending' => lang('Pending'));
                                echo form_dropdown('status_id', $sst, $document->status_id, 'class="form-control input-tip" required="required" id="status_id"'); ?>

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
                                <?= lang("Holding_No", "Holding_No"); ?>
                                <?php echo form_input('holding_no', $document->holding_no, 'class="form-control input-tip" number id="holding_no"'); ?>
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
                                <?= lang("Mouza_Value_/Decimal", "Mouza_Value_/Decimal"); ?>
                                <?php echo form_input('mouza_value', $document->mouza_value, 'class="form-control input-tip" id="mouza_value"'); ?>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <?= lang("Present_Value_/Decimal", "Present_Value_/Decimal"); ?>
                                <?php echo form_input('present_value', $document->present_value, 'class="form-control input-tip" id="present_value"'); ?>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <?= lang("Purchased_Value_/Decimal", "Purchased_Value_/Decimal"); ?>
                                <?php echo form_input('price', $document->price, 'class="form-control input-tip" number id="price"'); ?>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <?= lang("Registration_Office", "Registration_Office") . " <b> *</b>"; ?>
                                <?php echo form_input('registration_office', $document->registration_office, 'class="form-control input-tip" id="registration_office" required="required"'); ?>
                            </div>
                        </div>


                        <div class="col-sm-4">
                            <div class="form-group">
                                <?= lang("Registration_Expense", "Registration_Expense"); ?>
                                <?php echo form_input('registration_expense', $document->registration_expense, 'class="form-control input-tip" id="registration_expense"'); ?>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <?= lang("Registration_Date", "Registration_Date"); ?>
                                <?php echo form_input('registration_date', $this->sma->hrld_date($document->registration_date), 'class="form-control input-tip date" number id="registration_date"'); ?>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <hr class="line">
                        <div class="col-sm-4">
                            <div class="form-group">
                                <?= lang("Deed_No", "Deed_No"); ?>
                                <?php echo form_input('deed_no', $document->deed_no, 'class="form-control input-tip" id="deed_no" '); ?>
                            </div>
                        </div>


                        <div class="col-sm-4">
                            <div class="form-group">
                                <?= lang("Deed_Date", "Deed_Date"); ?>
                                <?php echo form_input('deed_date', $this->sma->hrld_date($document->deed_date), 'class="form-control input-tip date" id="deed_date" '); ?>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <?= lang("Bia_Deed_No", "Bia_Deed_No"); ?>
                                <?php echo form_input('bia_deed_no', $document->bia_deed_no, 'class="form-control input-tip" id="bia_deed_no" '); ?>
                            </div>
                        </div>

                        <div class="clearfix"></div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <?= lang("Bia_Deed_Date", "Bia_Deed_Date"); ?>
                                <?php echo form_input('bia_deed_date', $this->sma->hrld_date($document->bia_deed_date), 'class="form-control input-tip date" id="bia_deed_date" '); ?>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <?= lang("Khotian_No", "Khotian_No"); ?>
                                <?php echo form_input('khotian_no', $document->khotian_no, 'class="form-control input-tip" id="khotian_no" '); ?>
                            </div>
                        </div>

                        <div class="col-sm-4">
                            <div class="form-group">
                                <?= lang("DCR_No", "DCR_No"); ?>
                                <?php echo form_input('dcr_no', $document->dcr_no, 'class="form-control input-tip" id="dcr_no" '); ?>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <?= lang("Dag_No", "Dag_No"); ?>
                                <?php echo form_input('dag_no', $document->dag_no, 'class="form-control input-tip" id="dag_no" '); ?>
                            </div>
                        </div>

                        <div class="col-sm-4">
                            <div class="form-group">
                                <?= lang("Namjari_Case_No", "Namjari_Case_No"); ?>
                                <?php echo form_input('case_no', $document->case_no, 'class="form-control input-tip" id="case_no" '); ?>
                            </div>
                        </div>


                        <div class="col-sm-4">
                            <div class="form-group">
                                <?= lang("Namjari_Case_Date", "Namjari_Case_Date"); ?>
                                <?php echo form_input('case_date', $this->sma->hrld_date($document->case_date), 'class="form-control input-tip date" number id="case_date"'); ?>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <?= lang("Jot_No", "Jot_No"); ?>
                                <?php echo form_input('jot_no', $document->jot_no, 'class="form-control input-tip" id="jot_no" '); ?>
                            </div>
                        </div>

                        <div class="col-sm-4">
                            <div class="form-group">
                                <?= lang("Mujja", "Mujja"); ?>
                                <?php echo form_input('mujja', $document->mujja, 'class="form-control input-tip" id="mujja" '); ?>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <?= lang("Khajna_Update_Upto", "Khajna_Update_Upto"); ?>
                                <?php echo form_input('khajna_date', $document->khajna_date, 'class="form-control input-tip" number id="khajna_date"'); ?>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <?= lang("Khash_Land_Quantity", "Khash_Land_Quantity"); ?>
                                <?php echo form_input('khash_land_quantity', $document->khash_land_quantity, 'class="form-control input-tip" id="khash_land_quantity" '); ?>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <hr class="line">

                        <div class="col-sm-4">
                            <div class="form-group">
                                <?= lang("Rack_No", "Rack_No") . " <b> *</b>"; ?>
                                <?php echo form_input('rack_no', $document->rack_no, 'class="form-control input-tip" id="rack_no" required="required"'); ?>
                            </div>
                        </div>

                        <div class="col-sm-4">
                            <div class="form-group">
                                <?= lang("Location", "Location") . " <b> *</b>"; ?>
                                <?php echo form_input('location', $document->location, 'class="form-control input-tip" id="location" required="required"'); ?>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <?= lang("attachment", "attachment") ?>
                                <input id="document" type="file" data-browse-label="<?= lang('browse'); ?>"
                                       name="document" data-show-upload="false"
                                       data-show-preview="false" class="form-control file">
                            </div>
                        </div>
                        <div class="clearfix"></div>

                        <div class="row" id="bt">
                            <div class="col-md-12">
                                <div class="combo" style="margin-left: 13px;margin-right: 13px;">

                                    <div class="control-group table-group">
                                        <label class="table-label"
                                               for="combo"><?= lang("Mortgage Information"); ?></label>
                                        <div class="controls table-controls">
                                            <table id="prTable"
                                                   class="table items table-striped table-bordered table-condensed table-hover">
                                                <thead>
                                                <tr>
                                                    <th class="col-md-6 col-sm-6 col-xs-6"><?= lang('Bank_Name'); ?></th>
                                                    <th class="col-md-6 col-sm-6 col-xs-6"><?= lang("Branch"); ?></th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <th> <?php echo form_input('bank_name', $document->bank_name, 'class="form-control input-tip" id="bank_name"'); ?>
                                                    </th>
                                                    <th><?php echo form_input('branch_name', $document->branch_name, 'class="form-control input-tip" id="branch_name"'); ?></th>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>

                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <?= lang("Remarks", "Remarks"); ?>
                                        <?php echo form_textarea('bank_info', $document->bank_info, 'class="form-control" id="bank_info" style="margin-top: 10px; height: 100px;"'); ?>
                                    </div>
                                </div>

                            </div>
                        <hr class="line">
                        </div>
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
