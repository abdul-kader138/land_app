<?php
/**
 * Created by PhpStorm.
 * User: a.kader
 * Date: 12-Nov-18
 * Time: 9:57 AM
 */

class Document_model extends CI_Model
{

    public function __construct()
    {
        parent::__construct();
    }



    public function addDocument($data = array())
    {
        if ($this->db->insert('documents', $data)) {
            $cid = $this->db->insert_id();
            return $cid;
        }
        return false;
    }

    public function getDocumentById($id)
    {
        $q = $this->db->get_where('documents', array('id' => $id), 1);
        if ($q->num_rows() > 0) {
            return $q->row();
        }
        return FALSE;
    }

    public function deleteDocument($id)
    {
        if ($this->db->delete('documents', array('id' => $id)))  return true;
        else return FALSE;
    }

    public function updateDocument($id, $data = array())
    {
        $this->db->where('id', $id);
        if ($this->db->update('documents', $data)) {
            return true;
        }
        return false;
    }

    public function addDocumentMovement($data = array())
    {
        if ($this->db->insert('document_movement', $data)) {
            $cid = $this->db->insert_id();
            return $cid;
        }
        return false;
    }

    public function getDocumentMovementById($id)
    {
        $q = $this->db->get_where('document_movement', array('id' => $id), 1);
        if ($q->num_rows() > 0) {
            return $q->row();
        }
        return FALSE;
    }


    public function deleteDocumentMovement($id)
    {
        if ($this->db->delete('document_movement', array('id' => $id)))  return true;
        else return FALSE;
    }

    public function getMovementById($id)
    {
        $q = $this->db->get_where('document_movement', array('id' => $id), 1);
        if ($q->num_rows() > 0) {
            return $q->row();
        }
        return FALSE;
    }

    public function updateMovement($id, $data = array())
    {
        $this->db->where('id', $id);
        if ($this->db->update('document_movement', $data)) {
            return true;
        }
        return false;
    }

    public function getCategoryByID($id)
    {
        $q = $this->db->get_where("categories", array('id' => $id), 1);
        if ($q->num_rows() > 0) {
            return $q->row();
        }
        return FALSE;
    }

    public function getSubCategories($parent_id) {
        $this->db->select('id as id, name as text')
            ->where('parent_id', $parent_id)->order_by('name');
        $q = $this->db->get("categories");
        if ($q->num_rows() > 0) {
            foreach (($q->result()) as $row) {
                $data[] = $row;
            }
            return $data;
        }
        return FALSE;
    }

    public function getAllSubCategory($id) {
        $this->db->order_by('name')->where('parent_id', $id);
        $q = $this->db->get("categories");
        if ($q->num_rows() > 0) {
            foreach (($q->result()) as $row) {
                $data[] = $row;
            }
            return $data;
        }
        return FALSE;
    }

    public function getCompanyById($id)
    {
        $q = $this->db->get_where('company', array('id' => $id), 1);
        if ($q->num_rows() > 0) {
            return $q->row();
        }
        return FALSE;
    }

    public function getDistrictById($id)
    {
        $q = $this->db->get_where('districts', array('id' => $id), 1);
        if ($q->num_rows() > 0) {
            return $q->row();
        }
        return FALSE;
    }

    public function getDocTypeById($id)
    {
        $q = $this->db->get_where('doctype', array('id' => $id), 1);
        if ($q->num_rows() > 0) {
            return $q->row();
        }
        return FALSE;
    }

    public function getBainaById($id)
    {
        $q = $this->db->get_where('baina', array('id' => $id), 1);
        if ($q->num_rows() > 0) {
            return $q->row();
        }
        return FALSE;
    }

    public function addBaina($data = array())
    {
        if ($this->db->insert('baina', $data)) {
            $cid = $this->db->insert_id();
            return $cid;
        }
        return false;
    }


    public function updateBaina($id, $data = array())
    {
        $this->db->where('id', $id);
        if ($this->db->update('baina', $data)) {
            return true;
        }
        return false;
    }

    public function deleteBaina($id)
    {
        if ($this->db->delete('baina', array('id' => $id)))  return true;
        else return FALSE;
    }


} 