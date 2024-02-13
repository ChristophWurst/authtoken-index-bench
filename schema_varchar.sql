CREATE TABLE `oc_authtoken` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(64) NOT NULL DEFAULT '',
  `login_name` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(500) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(200) NOT NULL DEFAULT '',
  `type` smallint(5) unsigned DEFAULT 0,
  `remember` smallint(5) unsigned DEFAULT 0,
  `last_activity` int(10) unsigned DEFAULT 0,
  `last_check` int(10) unsigned DEFAULT 0,
  `scope` varchar(64) DEFAULT NULL,
  `expires` int(10) unsigned DEFAULT NULL,
  `private_key` varchar(5000) DEFAULT NULL,
  `public_key` varchar(800) DEFAULT NULL,
  `version` smallint(5) unsigned NOT NULL DEFAULT 1,
  `password_invalid` tinyint(1) DEFAULT 0,
  `password_hash` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `authtoken_token_index` (`token`),
  KEY `authtoken_uid_index` (`uid`),
  KEY `authtoken_last_activity` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

INSERT INTO oc_authtoken (
  id,
  uid,
  login_name,
  password,
  last_activity,
  name,
  token,
  private_key,
  public_key
)
SELECT
  n,
  CONCAT('user', n),
  CONCAT('User', n),
  CONCAT(UUID(), 'gzHGXstsToWkg5EGywSBGrGSnD8dcXlr1BvEyEyUBYysFZRnP1IZQZVvYpyb2BPAPGLlVQTqVAnOxjd7hhhEVmu7ME5xA3BDWz5HN5pQj6e2RMcVDdaOrSA53xf6YKJKpvNvdWne9xMRsZDuWySZq8kB/vIFciP7Czyu2r8Ys+FOpDM8q7KVjBNvRXqu6ATv+hmaryOI1/1XC7fLRtJ0xCGedi4ILHT83XzGzL1RMbp0B6OI69ZwflkxHQUJfpg=='),
  UNIX_TIMESTAMP(),
  'Test token',
  UUID(),
  CONCAT(UUID(), 'a225d51e3b7a5c089457c8fbbb05cf7e9056e7334719ddec1e7e55903c529a1be8db74d0d7401108aff13afedfcad794558549743b23877150b61024a22ba2af243e0297850885e33d1e2e8302bf3c452f7e16692f117a0e76eee941d154bb4c3cd1a260ad458321eb548669ca38144d5ad1d64aedc8455baceff139268617e69e2f7abe138a6fc8c47a984d4af6fc19ee4361eb76b056a68f8bbd4e61c6db9ae0b5d81de83e60280349714f703c0795d6c84060c24df5468dd605aead6c2c4e92d7bd20156e2544ad5388a2e2ce50a67709ae1e710deaf9643c7a0a359d12373d176caf2eaff920bd27b69463467f1ca47ecf67ba3fd150dae4eb5a13f069e24e12803164a6581cdd82724a59bde85563a0921d34992e1525597d73bbb69033cd1be4c1569ee355b278248c48866039ec6a63892a0358a82fc38c83a24c1367d548e5a0a0ffb1887c0060d83a481f2793dc9be9b02d517dcb7e58139386fcdf87cf69d4e10f13403b13ca6cf4f1bbaa9278f3d6c2ef8dc91724efe643366c9d8ca108b82953232cc2c459e0b16fdb00b74916e06747ea6c444d4bcb1061c765d4f5f3ef9a2812b428725f2f72890956356dbd2d4e3312ac4fa00818533e6a78934fe9e0a8d2ea92e5ee37de034fb7f675321f602663e30f1c117d6b3c145b8ecfb0c925ee054bb4ec802cf912d141463605bd2dc0450e716613f5d7389af57df64475fe1a87d426cfe647180ba41802a67a666a892b7efc1205eeb111009f4ff469991893e1fcf9a101bfd7364c0ed281c58f36962a27316c84cebd4faca69957973d894cd047d2317987fdfc19148cf208c7b9f5a7e858d3ae9ea6806c4261edd6196573013340e26116987f3717c7404d0de84a8046b105a4894f4e8152b831b9c08691e81f9f580fdbc8add4cc34635c8a1a47ed742251325150e1d843ebcd2a1d1e55472ec78f1db6cc4d21dd17cf6077f57d80ebe436dbc88f14323fc08657e5de59566e80176813a2844b53a57e97e8430e09523a41bb50622393dea3d922dae0300e34e5eb3187ec94eb4e8e5f41661ad0e27fa27f3fc16e9e776b64b165633aa7f64fa182fe294422316ffad44b18fd321f554a54583a8b4e9cbb893e024d808d90aaa5f9f350e44bfa90d0d92efa353aee5eb903936af745b41bfcb127409ae5dcd3d4cda7fc96d01e6bdfa87ee14e00867506cf599404efbc06744ea5dabd11546ddd493ef9e20b1a2d2e737271dd52db9866444ac9a671156673371171cb87718271657780c21ee3b42411d78c23c891837270efe3f0373437442ab5b9d1db55cc64b36421d898343eb9f96a6bed2c3a1cd7cd71a15cfae672d8b49d38c5537a3ad33c8f460a37fa7799f53536a87bb365a74302e312133ea70b58d83faf490aeeee5e07a5fe3c60fadebd8f69df4cad7545431f65b2d847d18b5e7350105b32c14908bb01ce019d1ca15d185a4d8fa20119c824ecc74dac1997dd0a6f623f67ae2591f7cc0956232385546b2483df9575134505b8e2a27c2bbd0a58de278d4a4c853f4bab31862255da66fed38da5ab8c25cb02bcfa76c92f2d4f73f99e45ac5c26f6b51e74f572f3b2222fd59e6ae7e53ecb108e1bae0e9f13347859f12194e53d083a993d83b30a253369db4bf1823c8e6e2689553183cb235cc77771dca6637ed1287a6d73b09edd70b27dda7de55c73ec9c7e04446c7f885ab11b117f6b14c8281e1e6dd8eddeac615f3d67b299e59218c20575e6c283aaf86b161c300bbff0c7d55022a9917f9dd176c80533d9089b13328efbc78ffab2ac30f9a1a6210ff369a358955e24bd8ede69d3da3197a1f086d58e33f30b53241f8a4927e39de8f89efc28a694895323e0eae6b1f34b0257753f6da22fcd6856c623585465db1bce70e9e1d35d35e47d2d677e8dc5feafd9075916328a2fd7e37b7364d10c07c1ed724cf0f2b30752ea62f1c4b428254a9c52455ceac89e7c0587ddd3c765b7b06646541966a667d98b22f7c458504748851c8544bbb3df1d9c90d6e5f408c39b698064b51bbf3827abf902cca1ff6826bdce0ebb540791c2b9965ba6317a764af9e89d91ece065db6a3290aef4a282353a1dfce7bf5fcf49ab2c8fe537db3ecb77e7080690ee7ba8c0c16323384867dede0aeacc2fc397a9b669ebe562b082b48f74d913f124844998cc0113b8dff46af9f80d9fca3aff05addd380ca434bfa25324a145ef796f899eeba41086359f8566f7ace9477ccc415a11249f9ccef9b33f27e24f4cfd6f2d8e6b73faaccdc4374ca20b2aec6b7ed6d02f37bdcee225754375f3cde17f296014a3bae0ab07d2bef2f02365e3aa90f7931ca0fcb8d075c1e797077d75ad22566837853fa2f|nV/fOLRXGOQ71Sqp|563ade7bdc415c5018b578620cc701aa80ea812fd44f62dadea094f83faf7f07f9e0577f06c7e0beacf4e4b98ef1c1b11cde632b81100930221811c9d5a09990'),
  CONCAT('-----BEGIN PUBLIC KEY-----', UUID(), 'ufY2AsPDAD6Wc4S9gLmue1iobWbtDn0WRAnfub2oyGuqZomqj+jUAuS7+/j6OPBFYoizgIQ8DcnoTs3nNu0MUy8PUZnii9EbJIrqyOkOnP+TEI31789nmpO5UUm0qORVzEPNl9OTB1lvD8f3S+CLELQqy1MJCx7XWdtL32Zr/DYKv/MNGVN+A8AJ1xxrtWqpsBmvY+LiDauQRxeM4By7U1isJN7H7m1rbdSLxTJNz5c308vPtwXS9tktkWwxIn9Sh6IjIUtBQDnXdq+zJBdO54etQx5cmXyHuFmM6kPqgoLxldb8KV7EapkW5OmZuHs6YQIDAQAB-----END PUBLIC KEY-----')
  FROM
(
select a.N + b.N * 10 + c.N * 100 + d.N * 1000 + e.N * 10000 + 1 N
from (select 0 as N union all select 1 union all select 2 union all select 3 union all select 4 union all select 5 union all select 6 union all select 7 union all select 8 union all select 9) a
      , (select 0 as N union all select 1 union all select 2 union all select 3 union all select 4 union all select 5 union all select 6 union all select 7 union all select 8 union all select 9) b
      , (select 0 as N union all select 1 union all select 2 union all select 3 union all select 4 union all select 5 union all select 6 union all select 7 union all select 8 union all select 9) c
      , (select 0 as N union all select 1 union all select 2 union all select 3 union all select 4 union all select 5 union all select 6 union all select 7 union all select 8 union all select 9) d
      , (select 0 as N union all select 1 union all select 2 union all select 3 union all select 4 union all select 5 union all select 6 union all select 7 union all select 8 union all select 9) e
) t;