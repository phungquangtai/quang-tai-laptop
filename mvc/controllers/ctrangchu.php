<?php
class ctrangchu extends controller
{
    // public function __construct(){
    //     parent::__construct();
    // }
    private $phanloai;
    private $maytinh;
    public function __construct()
    {
        $this->maytinh = $this->model('mmaytinh');
        $this->phanloai = $this->model("mphanloai");
    }
    // hien thi sp noi bac
    public function Show()
    {
        $sanphamnoibat = $this->maytinh->getSanphamnoibat();
        $phanloai = $this->phanloai->getPhanloai();
        $this->view("TrangChu", [
            'phanloai' => $phanloai,
            'sanphamnoibat' => $sanphamnoibat
        ]);
    }
    // hien thi trang gioi thieu
    public function gioithieu(){
        $this->view("GioiThieu");
    }
    // hien thi trang lien he
    public function lienhe(){
        $this->view("LienHe");
    }
    
}
