<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<style>
    .table td:first-child {
        font-weight: bold;
    }

    label {
        margin-right: 10px;
    }
</style>
<div class="box">
    <div class="box-header">
        <h2 class="blue"><i class="fa-fw fa fa-folder-open"></i><?= lang('group_permissions'); ?></h2>
    </div>
    <div class="box-content">
        <div class="row">
            <div class="col-lg-12">

                <p class="introtext"><?= lang("set_permissions"); ?></p>

                <?php if (!empty($p)) {
                    if ($p->group_id != 1) {

                        echo form_open("system_settings/permissions/" . $id); ?>
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover table-striped">

                                <thead>
                                <tr>
                                    <th colspan="6"
                                        class="text-center"><?php echo $group->description . ' ( ' . $group->name . ' ) ' . $this->lang->line("group_permissions"); ?></th>
                                </tr>
                                <tr>
                                    <th rowspan="2" class="text-center"><?= lang("module_name"); ?>
                                    </th>
                                    <th colspan="5" class="text-center"><?= lang("permissions"); ?></th>
                                </tr>
                                <tr>
                                    <th class="text-center"><?= lang("view"); ?></th>
                                    <th class="text-center"><?= lang("add"); ?></th>
                                    <th class="text-center"><?= lang("edit"); ?></th>
                                    <th class="text-center"><?= lang("delete"); ?></th>
                                    <th class="text-center"><?= lang("misc"); ?></th>
                                </tr>
                                </thead>
                                <tbody>

                                <tr>
                                    <td><?= lang("company"); ?></td>
                                    <td class="text-center">
                                        <input type="checkbox" value="1" class="checkbox" name="company-index" <?php echo $p->{'company-index'} ? "checked" : ''; ?>>
                                    </td>
                                    <td class="text-center">
                                        <input type="checkbox" value="1" class="checkbox" name="company-add" <?php echo $p->{'company-add'} ? "checked" : ''; ?>>
                                    </td>
                                    <td class="text-center">
                                        <input type="checkbox" value="1" class="checkbox" name="company-edit" <?php echo $p->{'company-edit'} ? "checked" : ''; ?>>
                                    </td>
                                    <td class="text-center">
                                        <input type="checkbox" value="1" class="checkbox" name="company-delete" <?php echo $p->{'company-delete'} ? "checked" : ''; ?>>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td><?= lang("designation"); ?></td>
                                    <td class="text-center">
                                        <input type="checkbox" value="1" class="checkbox" name="designation-index" <?php echo $p->{'designation-index'} ? "checked" : ''; ?>>
                                    </td>
                                    <td class="text-center">
                                        <input type="checkbox" value="1" class="checkbox" name="designation-add" <?php echo $p->{'designation-add'} ? "checked" : ''; ?>>
                                    </td>
                                    <td class="text-center">
                                        <input type="checkbox" value="1" class="checkbox" name="designation-edit" <?php echo $p->{'designation-edit'} ? "checked" : ''; ?>>
                                    </td>
                                    <td class="text-center">
                                        <input type="checkbox" value="1" class="checkbox" name="designation-delete" <?php echo $p->{'designation-delete'} ? "checked" : ''; ?>>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td><?= lang("operator"); ?></td>
                                    <td class="text-center">
                                        <input type="checkbox" value="1" class="checkbox" name="operator-index" <?php echo $p->{'operator-index'} ? "checked" : ''; ?>>
                                    </td>
                                    <td class="text-center">
                                        <input type="checkbox" value="1" class="checkbox" name="operator-add" <?php echo $p->{'operator-add'} ? "checked" : ''; ?>>
                                    </td>
                                    <td class="text-center">
                                        <input type="checkbox" value="1" class="checkbox" name="operator-edit" <?php echo $p->{'operator-edit'} ? "checked" : ''; ?>>
                                    </td>
                                    <td class="text-center">
                                        <input type="checkbox" value="1" class="checkbox" name="operator-delete" <?php echo $p->{'operator-delete'} ? "checked" : ''; ?>>
                                    </td>
                                    <td>
                                    </td>
                                </tr>

                                <tr>
                                    <td><?= lang("document"); ?></td>
                                    <td class="text-center">
                                        <input type="checkbox" value="1" class="checkbox" name="document-index" <?php echo $p->{'document-index'} ? "checked" : ''; ?>>
                                    </td>
                                    <td class="text-center">
                                        <input type="checkbox" value="1" class="checkbox" name="document-add" <?php echo $p->{'document-add'} ? "checked" : ''; ?>>
                                    </td>
                                    <td class="text-center">
                                        <input type="checkbox" value="1" class="checkbox" name="document-edit" <?php echo $p->{'document-edit'} ? "checked" : ''; ?>>
                                    </td>
                                    <td class="text-center">
                                        <input type="checkbox" value="1" class="checkbox" name="document-delete" <?php echo $p->{'document-delete'} ? "checked" : ''; ?>>
                                    </td>
                                    <td>
                                        <input type="checkbox" value="1" id="document-file_manager" class="checkbox" name="document-file_manager" <?php echo $p->{'document-file_manager'} ? "checked" : ''; ?>>
                                        <label for="document-file_manager" class="padding05"><?= lang('File_Manager') ?></label>
                                        <input type="checkbox" value="1" id="document-folder_create" class="checkbox" name="document-folder_create" <?php echo $p->{'document-folder_create'} ? "checked" : ''; ?>>
                                        <label for="document-folder_create" class="padding05"><?= lang('Folder_Create') ?></label>
                                        <input type="checkbox" value="1" id="document-folder_download" class="checkbox" name="document-folder_download" <?php echo $p->{'document-folder_download'} ? "checked" : ''; ?>>
                                        <label for="document-folder_download" class="padding05"><?= lang('Folder_Download') ?></label>
                                        <input type="checkbox" value="1" id="document-upload" class="checkbox" name="document-upload" <?php echo $p->{'document-upload'} ? "checked" : ''; ?>>
                                        <label for="document-upload" class="padding05"><?= lang('Upload') ?></label>
                                        <input type="checkbox" value="1" id="document-file_delete" class="checkbox" name="document-file_delete" <?php echo $p->{'document-file_delete'} ? "checked" : ''; ?>>
                                        <label for="document-file_delete" class="padding05"><?= lang('File_Delete') ?></label>


                                    </td>
                                </tr>
                                <tr>
                                    <td><?= lang("doc_movement"); ?></td>
                                    <td class="text-center">
                                        <input type="checkbox" value="1" class="checkbox" name="document-doc_movement_list" <?php echo $p->{'document-doc_movement_list'} ? "checked" : ''; ?>>
                                    </td>
                                    <td class="text-center">
                                        <input type="checkbox" value="1" class="checkbox" name="document-add_movement" <?php echo $p->{'document-add_movement'} ? "checked" : ''; ?>>
                                    </td>
                                    <td class="text-center">
                                        <input type="checkbox" value="1" class="checkbox" name="document-edit_movement" <?php echo $p->{'document-edit_movement'} ? "checked" : ''; ?>>
                                    </td>
                                    <td class="text-center">
                                        <input type="checkbox" value="1" class="checkbox" name="document-delete_movement" <?php echo $p->{'document-delete_movement'} ? "checked" : ''; ?>>
                                    </td>
                                    <td>
                                    </td>
                                </tr>

                                <tr>
                                    <td><?= lang("Baina"); ?></td>
                                    <td class="text-center">
                                        <input type="checkbox" value="1" class="checkbox" name="document-list_baina" <?php echo $p->{'document-list_baina'} ? "checked" : ''; ?>>
                                    </td>
                                    <td class="text-center">
                                        <input type="checkbox" value="1" class="checkbox" name="document-add_baina" <?php echo $p->{'document-add_baina'} ? "checked" : ''; ?>>
                                    </td>
                                    <td class="text-center">
                                        <input type="checkbox" value="1" class="checkbox" name="document-edit_baina" <?php echo $p->{'document-edit_baina'} ? "checked" : ''; ?>>
                                    </td>
                                    <td class="text-center">
                                        <input type="checkbox" value="1" class="checkbox" name="document-delete_baina" <?php echo $p->{'document-delete_baina'} ? "checked" : ''; ?>>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td><?= lang("package"); ?></td>
                                    <td class="text-center">
                                        <input type="checkbox" value="1" class="checkbox" name="package-index" <?php echo $p->{'package-index'} ? "checked" : ''; ?>>
                                    </td>
                                    <td class="text-center">
                                        <input type="checkbox" value="1" class="checkbox" name="package-add" <?php echo $p->{'package-add'} ? "checked" : ''; ?>>
                                    </td>
                                    <td class="text-center">
                                        <input type="checkbox" value="1" class="checkbox" name="package-edit" <?php echo $p->{'package-edit'} ? "checked" : ''; ?>>
                                    </td>
                                    <td class="text-center">
                                        <input type="checkbox" value="1" class="checkbox" name="package-delete" <?php echo $p->{'package-delete'} ? "checked" : ''; ?>>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td><?= lang("doc_type"); ?></td>
                                    <td class="text-center">
                                        <input type="checkbox" value="1" class="checkbox" name="doctype-index" <?php echo $p->{'doctype-index'} ? "checked" : ''; ?>>
                                    </td>
                                    <td class="text-center">
                                        <input type="checkbox" value="1" class="checkbox" name="doctype-add" <?php echo $p->{'doctype-add'} ? "checked" : ''; ?>>
                                    </td>
                                    <td class="text-center">
                                        <input type="checkbox" value="1" class="checkbox" name="doctype-edit" <?php echo $p->{'doctype-edit'} ? "checked" : ''; ?>>
                                    </td>
                                    <td class="text-center">
                                        <input type="checkbox" value="1" class="checkbox" name="doctype-delete" <?php echo $p->{'doctype-delete'} ? "checked" : ''; ?>>
                                    </td>
                                    <td>
                                    </td>
                                </tr>

                                <tr>
                                    <td><?= lang("categories"); ?></td>
                                    <td class="text-center">
                                        <input type="checkbox" value="1" class="checkbox" name="category-index" <?php echo $p->{'category-index'} ? "checked" : ''; ?>>
                                    </td>
                                    <td class="text-center">
                                        <input type="checkbox" value="1" class="checkbox" name="category-add" <?php echo $p->{'category-add'} ? "checked" : ''; ?>>
                                    </td>
                                    <td class="text-center">
                                        <input type="checkbox" value="1" class="checkbox" name="category-edit" <?php echo $p->{'category-edit'} ? "checked" : ''; ?>>
                                    </td>
                                    <td class="text-center">
                                        <input type="checkbox" value="1" class="checkbox" name="category-delete" <?php echo $p->{'category-delete'} ? "checked" : ''; ?>>
                                    </td>
                                    <td>
                                    </td>
                                </tr>

                                <tr>
                                    <td><?= lang("misc"); ?></td>
                                    <td colspan="5">
                                        <span style="inline-block">
                                            <input type="checkbox" value="1" class="checkbox" id="bulk_actions"
                                            name="bulk_actions" <?php echo $p->bulk_actions ? "checked" : ''; ?>>
                                            <label for="bulk_actions" class="padding05"><?= lang('bulk_actions') ?></label>
                                        </span>
                                        <span style="inline-block">
                                            <input type="checkbox" value="1" class="checkbox" id="edit_price"
                                            name="edit_price" <?php echo $p->edit_price ? "checked" : ''; ?>>
                                            <label for="edit_price" class="padding05"><?= lang('edit_price_on_sale') ?></label>
                                        </span>
                                         <span style="inline-block">
                                            <input type="checkbox" value="1" class="checkbox" id="backups_index"
                                                   name="backups_index" <?php echo $p->backups_index ? "checked" : ''; ?>>
                                            <label for="backups_index" class="padding05"><?= lang('Backup_Database') ?></label>
                                        </span>
                                    </td>
                                </tr>

                                </tbody>
                            </table>
                        </div>

                        <div class="form-actions">
                            <button type="submit" class="btn btn-primary"><?=lang('update')?></button>
                        </div>
                        <?php echo form_close();
                    } else {
                        echo $this->lang->line("group_x_allowed");
                    }
                } else {
                    echo $this->lang->line("group_x_allowed");
                } ?>


            </div>
        </div>
    </div>
</div>