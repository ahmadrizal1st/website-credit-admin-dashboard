CREATE DATABASE `db_sewa`;

USE `db_sewa`;

/*Table structure for table `tb_login` */

DROP TABLE IF EXISTS `tb_login`;

CREATE TABLE `tb_login` (
    `id_user` int(4) NOT NULL AUTO_INCREMENT,
    `username` varchar(40) NOT NULL,
    `password` varchar(40) NOT NULL,
    PRIMARY KEY (`id_user`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8mb4;

/*Data for the table `tb_login` */

insert into
    `tb_login` (
        `id_user`,
        `username`,
        `password`
    )
values (2, 'admin', 'admin');

/*Table structure for table `tb_sewa` */

DROP TABLE IF EXISTS `tb_sewa`;

CREATE TABLE `tb_sewa` (
    `id_pembiayaan` int(10) NOT NULL AUTO_INCREMENT,
    `nama_pembiayaan` varchar(40) NOT NULL,
    `jumlah_bulan` int(5) NOT NULL,
    `total_biaya` bigint(15) NOT NULL,
    `biaya_perbulan` bigint(15) NOT NULL,
    PRIMARY KEY (`id_pembiayaan`)
) ENGINE = InnoDB AUTO_INCREMENT = 34 DEFAULT CHARSET = utf8mb4;

/*Data for the table `tb_sewa` */

insert into
    `tb_sewa` (
        `id_pembiayaan`,
        `nama_pembiayaan`,
        `jumlah_bulan`,
        `total_biaya`,
        `biaya_perbulan`
    )
values (
        16,
        'Motor Kredit  ',
        11,
        120000000,
        10934091
    ),
    (
        18,
        'Vivo Credit',
        12,
        25000000,
        2108333
    ),
    (
        30,
        'Kredit Iphone',
        12,
        130000000,
        10858333
    ),
    (
        31,
        'Kredit Truck',
        19,
        12412481412,
        653313495
    ),
    (
        32,
        'Kredit Pinjaman',
        12,
        1242111221,
        103534268
    ),
    (
        33,
        'Kredit Android',
        8,
        234231321,
        29303915
    );