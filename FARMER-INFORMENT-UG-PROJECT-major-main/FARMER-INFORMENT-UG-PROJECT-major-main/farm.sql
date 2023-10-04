/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100135
 Source Host           : localhost:3306
 Source Schema         : farm

 Target Server Type    : MySQL
 Target Server Version : 100135
 File Encoding         : 65001

 Date: 18/09/2023 11:13:24
 
 #PS28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ci_session
-- ----------------------------
DROP TABLE IF EXISTS `ci_session`;
CREATE TABLE `ci_session`  (
  `id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_agent` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_activity` int(10) NOT NULL,
  `user_data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL,
  `place` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `city` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `datetime` datetime(0) NOT NULL,
  `userip` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `department` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ci_sessions_timestamp`(`timestamp`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of ci_session
-- ----------------------------
BEGIN;
INSERT INTO `ci_session` VALUES ('1oeil21c6okrjpmlq95aln75th3gbdak', '127.0.0.1', '', 0, '', 1682433942, 0x5F5F63695F6C6173745F726567656E65726174657C693A313638323433333934323B756E697175655F7365735F616464727C733A32353A223264584B5A494155723061574C427776337A6753747368696E223B665F69647C733A313A2232223B665F6E616D657C733A31363A225041444D41564154485920414D4D4120223B665F6D6F62696C657C733A31303A2239393535343431313231223B665F656D61696C7C733A32303A227061646D61766174687940676D61696C2E636F6D223B665F7077647C733A36303A222432792431312469755249684D6D594F4A7A4C62646A325931445167654A414266684C4D4F4870374C314D544D7867464C59337244694D394E6C4765223B6661726D5F6E616D657C733A31313A22436174746C65204661726D223B66726D5F646573637C733A303A22223B73746174655F69647C733A323A223138223B636974797C733A31303A2254726976616E6472756D223B6C6F636174696F6E7C733A31333A2242616C6172616D61707572616D223B70696E636F64657C733A363A22363935353031223B66726D5F6C6F676F7C733A32353A226173736574732F696D672F6661726D65722F325F312E6A7067223B66726D5F626E727C733A32333A226173736574732F696D672F6661726D65722F322E6A7067223B737461747C733A313A2230223B, '', '', '0000-00-00 00:00:00', '', 0), ('e4dgsvjtfl3hgq2hs99qih5h52t5j40n', '127.0.0.1', '', 0, '', 1682434960, 0x5F5F63695F6C6173745F726567656E65726174657C693A313638323433343936303B756E697175655F7365735F616464727C733A32353A223264584B5A494155723061574C427776337A6753747368696E223B665F69647C733A313A2232223B665F6E616D657C733A31363A225041444D41564154485920414D4D4120223B665F6D6F62696C657C733A31303A2239393535343431313231223B665F656D61696C7C733A32303A227061646D61766174687940676D61696C2E636F6D223B665F7077647C733A36303A222432792431312469755249684D6D594F4A7A4C62646A325931445167654A414266684C4D4F4870374C314D544D7867464C59337244694D394E6C4765223B6661726D5F6E616D657C733A31313A22436174746C65204661726D223B66726D5F646573637C733A303A22223B73746174655F69647C733A323A223138223B636974797C733A31303A2254726976616E6472756D223B6C6F636174696F6E7C733A31333A2242616C6172616D61707572616D223B70696E636F64657C733A363A22363935353031223B66726D5F6C6F676F7C733A32353A226173736574732F696D672F6661726D65722F325F312E6A7067223B66726D5F626E727C733A32333A226173736574732F696D672F6661726D65722F322E6A7067223B737461747C733A313A2230223B7064745F69647C733A323A223139223B, '', '', '0000-00-00 00:00:00', '', 0), ('ev1gu105l95q0vbd6f6ctij6t8ro1d9t', '127.0.0.1', '', 0, '', 1682435339, 0x5F5F63695F6C6173745F726567656E65726174657C693A313638323433353038313B756E697175655F7365735F616464727C733A32353A224D674E5146367A397133415356624F45776C44696B3059786F223B665F69647C733A313A2231223B665F6E616D657C733A31333A224D4F4C592044494E4553414E20223B665F6D6F62696C657C733A31303A2239393535343431313232223B665F656D61696C7C733A31373A2264696E6573616E40676D61696C2E636F6D223B665F7077647C733A36303A222432792431312469755249684D6D594F4A7A4C62646A325931445167654A414266684C4D4F4870374C314D544D7867464C59337244694D394E6C4765223B6661726D5F6E616D657C733A32333A224D616120546172612046727569747320436F6D70616E79223B66726D5F646573637C733A3433373A224D616120546172612046727569747320436F6D70616E792C2065737461626C697368656420696E20746865207965617220323031362E2057652061726520746865206C656164696E67204D616E7566616374757265722C2057686F6C6573616C65722C2054726164657220616E6420537570706C696572206F66206120776964652072616E6765206F66204672657368204672756974732C20467265736820566567657461626C65732C20447279204672756974732C204672657368204D61697A6520416E6420436F726E20616E64206D616E79206D6F72652E204F75722070726F647563747320617265206869676820696E2064656D616E642064756520746F207468656972207072656D69756D207175616C69747920616E64206166666F726461626C65207072696365732E20467572746865726D6F72652C20776520656E7375726520746F2074696D656C792064656C697665722074686573652070726F647563747320746F206F757220636C69656E74732C207468726F75676820746869732077652068617665206761696E65642061206875676520636C69656E7473206261736520696E20746865206D61726B65742E223B73746174655F69647C733A323A223138223B636974797C733A31303A2254726976616E6472756D223B6C6F636174696F6E7C733A31333A2242616C6172616D61707572616D223B70696E636F64657C733A363A22363935353031223B66726D5F6C6F676F7C733A32353A226173736574732F696D672F6661726D65722F315F312E6A7067223B66726D5F626E727C733A32333A226173736574732F696D672F6661726D65722F312E6A7067223B737461747C733A313A2230223B, '', '', '0000-00-00 00:00:00', '', 0), ('jlsqrhcsh8r5kbk2bh2qsb3hic83qbgn', '127.0.0.1', '', 0, '', 1682434603, 0x5F5F63695F6C6173745F726567656E65726174657C693A313638323433343630333B756E697175655F7365735F616464727C733A32353A223264584B5A494155723061574C427776337A6753747368696E223B665F69647C733A313A2232223B665F6E616D657C733A31363A225041444D41564154485920414D4D4120223B665F6D6F62696C657C733A31303A2239393535343431313231223B665F656D61696C7C733A32303A227061646D61766174687940676D61696C2E636F6D223B665F7077647C733A36303A222432792431312469755249684D6D594F4A7A4C62646A325931445167654A414266684C4D4F4870374C314D544D7867464C59337244694D394E6C4765223B6661726D5F6E616D657C733A31313A22436174746C65204661726D223B66726D5F646573637C733A303A22223B73746174655F69647C733A323A223138223B636974797C733A31303A2254726976616E6472756D223B6C6F636174696F6E7C733A31333A2242616C6172616D61707572616D223B70696E636F64657C733A363A22363935353031223B66726D5F6C6F676F7C733A32353A226173736574732F696D672F6661726D65722F325F312E6A7067223B66726D5F626E727C733A32333A226173736574732F696D672F6661726D65722F322E6A7067223B737461747C733A313A2230223B, '', '', '0000-00-00 00:00:00', '', 0);
COMMIT;

-- ----------------------------
-- Table structure for tbl_agri_crops
-- ----------------------------
DROP TABLE IF EXISTS `tbl_agri_crops`;
CREATE TABLE `tbl_agri_crops`  (
  `cr_id` int(11) NOT NULL AUTO_INCREMENT,
  `cr_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cr_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cr_desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `soil` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `climate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cr_stat` int(11) NOT NULL,
  PRIMARY KEY (`cr_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of tbl_agri_crops
-- ----------------------------
BEGIN;
INSERT INTO `tbl_agri_crops` VALUES (1, 'Paddy', 'assets/img/crop/1.jpg', 'A paddy field is a flooded field of arable land used for growing semiaquatic crops, most notably rice and taro. It originates from the Neolithic rice-farming cultures of the Yangtze River basin in southern China, associated with pre-Austronesian and Hmong-Mien cultures.', 'Clay soil', 'Hot and Humid climate', 0), (2, 'Coconut ', 'assets/img/crop/2.jpg', 'Coconut is propagated through seedlings raised from selected seednuts. Generally 9 to 12 month old seedlings are used for planting. Select seedlings, which have 6-8 leaves and 10-12 cm collar girth when they are 9-12 month old. Early splitting of leaves is another criteria in the selection of coconut seedling.', 'Laterite, alluvial, red sandy loam, coastal sandy and reclaimed soils with a pH ranging from 5.2 to 8.0.', '270C with a diurnal variation of 60C to 70C and relative humidity more than 60 %.', 0), (3, 'Black pepper', 'assets/img/crop/3.jpg', 'Black pepper is a flowering vine in the family Piperaceae, cultivated for its fruit, which is usually dried and used as a spice and seasoning. The fruit is a drupe which is about 5 mm in diameter, dark red, and contains a stone which encloses a single pepper seed.', 'Red laterite soils', 'The hot and humid climate of sub mountainous tracts of Western Ghats', 0), (4, 'Pineapple', 'assets/img/crop/4.jpg', 'The pineapple is a tropical plant with an edible fruit; it is the most economically significant plant in the family Bromeliaceae. The pineapple is indigenous to South America, where it has been cultivated for many centuries', 'Non-compacted, well-aerated and free-draining loams, sandy loams and clay loams with no heavy clay or rock within 1m of the surface.', 'Warm and humid climate', 0);
COMMIT;

-- ----------------------------
-- Table structure for tbl_agri_products
-- ----------------------------
DROP TABLE IF EXISTS `tbl_agri_products`;
CREATE TABLE `tbl_agri_products`  (
  `pdt_id` int(11) NOT NULL AUTO_INCREMENT,
  `auto_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `f_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `sub_id` int(11) NOT NULL,
  `pdt_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `quantity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pdt_desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `show_hm` int(11) NOT NULL,
  `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `prc_range` int(11) NOT NULL,
  `pk_id` int(11) NOT NULL,
  `delivery` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pd_stat` int(11) NOT NULL,
  PRIMARY KEY (`pdt_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of tbl_agri_products
-- ----------------------------
BEGIN;
INSERT INTO `tbl_agri_products` VALUES (1, '8596ADC', 1, 1, 10, 'Red Onion', '9', 'Dry Export Quality Red Onion, For Human Consumption', 1, '14', 2, 13, 'All INDIA 4 DAY DELIVERY ', 0), (2, '9632VBN', 1, 2, 18, 'Fresh Muskmelon', ' 500', 'Dry Export Quality Red Onion, For Human Consumption', 1, '30', 1, 8, 'All INDIA 3 DAY DELIVERY ', 0), (3, '6524DFV', 1, 3, 53, 'Meat Masala Powder', ' 500', 'Being an eminent organization in the industry, we are involved in providing a premium quality range of Meat Masala Powder.', 1, '235', 3, 5, 'All INDIA 7 DAY DELIVERY ', 0), (4, '8712FGH', 1, 4, 26, 'Frozen Chicken', ' 500', 'Frozen Chicken, 1 kg, Packaging Type: Packet', 1, '180', 2, 3, '1 HOUR DELIVERY IN TRIVANDRUM AREA', 0), (5, '6324SDX', 1, 5, 36, 'Buffalo Forequarter Meat', ' 500', 'Frozen Chicken, 1 kg, Packaging Type: Packet', 1, '210', 2, 1, '1 HOUR DELIVERY IN TRIVANDRUM AREA', 0), (6, '8745SMA', 1, 6, 54, 'Prawns Fish Meat', ' 500', 'Fresh Prawns Fish Meat', 1, '500', 4, 10, '1 HOUR DELIVERY IN TRIVANDRUM AREA', 0), (7, '2135GHB', 1, 7, 46, 'Beans Seeds', ' 500', 'Beige and purple beans seeds', 1, '45', 3, 11, 'All INDIA 7 DAY DELIVERY ', 0), (8, '2255SDX', 1, 8, 47, 'Cappuccino Coffee Premix', ' 500', 'Cappuccino Coffee Premix', 1, '450', 3, 7, 'All INDIA 7 DAY DELIVERY ', 0), (9, '3368QWA', 1, 9, 55, 'Ammonium Sulphate Fertilizer', ' 500', 'Ammonium Sulphate Fertilizer', 1, '18', 2, 6, 'All INDIA 7 DAY DELIVERY ', 0), (15, '9966SSDD', 7, 6, 56, 'Cutla Fish', '45675', 'Export Quality', 1, '125', 5, 10, '1 HOUR DELIVERY IN TRIVANDRUM AREA', 1), (19, '49505QWV', 2, 1, 10, 'Onion', '600', 'none', 0, '15', 2, 12, '7 DAY ALL INDIA DELIVERY', 0);
COMMIT;

-- ----------------------------
-- Table structure for tbl_cart_details
-- ----------------------------
DROP TABLE IF EXISTS `tbl_cart_details`;
CREATE TABLE `tbl_cart_details`  (
  `crt_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `randm_session` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pdt_id` int(11) NOT NULL,
  `p_count` int(11) NOT NULL,
  `c_date` date NOT NULL,
  `crt_status` int(11) NOT NULL,
  PRIMARY KEY (`crt_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 380 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of tbl_cart_details
-- ----------------------------
BEGIN;
INSERT INTO `tbl_cart_details` VALUES (308, 10, '6SKLDx3zq9QX8TUImNGMWC1Vu', 8, 1, '2023-02-10', 1), (309, 10, '6SKLDx3zq9QX8TUImNGMWC1Vu', 3, 1, '2023-02-10', 1), (310, 10, '6SKLDx3zq9QX8TUImNGMWC1Vu', 1, 1, '2023-02-10', 1), (311, 10, '6SKLDx3zq9QX8TUImNGMWC1Vu', 7, 1, '2023-02-10', 1), (312, 10, '6SKLDx3zq9QX8TUImNGMWC1Vu', 4, 1, '2023-02-10', 1), (313, 10, '6SKLDx3zq9QX8TUImNGMWC1Vu', 5, 1, '2023-02-10', 1), (314, 10, '6SKLDx3zq9QX8TUImNGMWC1Vu', 5, 1, '2023-02-10', 0), (315, 10, '6SKLDx3zq9QX8TUImNGMWC1Vu', 6, 1, '2023-02-10', 0), (316, 10, '6SKLDx3zq9QX8TUImNGMWC1Vu', 8, 1, '2023-02-10', 0), (317, 10, '6SKLDx3zq9QX8TUImNGMWC1Vu', 2, 1, '2023-02-10', 0), (318, 0, 'mgl3U2bS0vJCPnuoL1Hwzr6cX', 1, 1, '2023-02-10', 0), (319, 0, 'mgl3U2bS0vJCPnuoL1Hwzr6cX', 6, 1, '2023-02-10', 0), (320, 0, 'mgl3U2bS0vJCPnuoL1Hwzr6cX', 7, 1, '2023-02-10', 0), (321, 0, 'mgl3U2bS0vJCPnuoL1Hwzr6cX', 2, 1, '2023-02-10', 0), (322, 0, 'pLfK0aPHRY4wBuQo65rJbTvF7', 1, 1, '2023-02-11', 1), (323, 0, 'pLfK0aPHRY4wBuQo65rJbTvF7', 6, 1, '2023-02-11', 1), (324, 0, 'pLfK0aPHRY4wBuQo65rJbTvF7', 8, 1, '2023-02-11', 0), (325, 0, '2B6y0PRKvVZ4GbdT58EeL9XrQ', 2, 1, '2023-02-11', 1), (326, 0, '2B6y0PRKvVZ4GbdT58EeL9XrQ', 8, 1, '2023-02-11', 1), (327, 0, '2B6y0PRKvVZ4GbdT58EeL9XrQ', 5, 2, '2023-02-11', 0), (328, 0, '2B6y0PRKvVZ4GbdT58EeL9XrQ', 9, 1, '2023-02-11', 1), (329, 0, '2B6y0PRKvVZ4GbdT58EeL9XrQ', 3, 1, '2023-02-11', 1), (330, 0, '2B6y0PRKvVZ4GbdT58EeL9XrQ', 6, 1, '2023-02-11', 1), (331, 0, 'tVAcQR5xg14hDeHquyJ7lME8O', 1, 1, '2023-02-17', 0), (332, 0, 'tVAcQR5xg14hDeHquyJ7lME8O', 4, 1, '2023-02-17', 0), (333, 0, 'tVAcQR5xg14hDeHquyJ7lME8O', 5, 1, '2023-02-17', 0), (334, 0, 'HWhzKBImaXJ1lpPoZRLAitxE3', 1, 1, '2023-02-17', 0), (335, 0, 'zYLWV2ygZ9pRFJT8c0uXd1sOr', 1, 10, '2023-02-21', 1), (336, 0, 'zYLWV2ygZ9pRFJT8c0uXd1sOr', 2, 8, '2023-02-21', 0), (337, 0, 'lohZNmdLzFfqHa9wxIu1KQE8y', 1, 5, '2023-02-21', 0), (338, 0, 'pk1OA8hbSu9qGUfPBaWlXoj5Z', 3, 1, '2023-02-21', 0), (339, 0, 'zLmWMb3GgFUtqs6kojO4AI1S9', 2, 1, '2023-02-21', 0), (340, 0, 'Eah2GKuWNMoCrpR3eqFmvHsgD', 1, 3, '2023-02-21', 2), (341, 10, 'Eah2GKuWNMoCrpR3eqFmvHsgD', 5, 5, '2023-02-21', 2), (342, 10, 'Eah2GKuWNMoCrpR3eqFmvHsgD', 4, 2, '2023-02-21', 2), (343, 10, 'Eah2GKuWNMoCrpR3eqFmvHsgD', 3, 4, '2023-02-21', 2), (344, 10, 'Eah2GKuWNMoCrpR3eqFmvHsgD', 5, 3, '2023-02-21', 2), (345, 10, 'Eah2GKuWNMoCrpR3eqFmvHsgD', 1, 2, '2023-02-21', 2), (346, 10, 'Eah2GKuWNMoCrpR3eqFmvHsgD', 9, 4, '2023-02-21', 2), (347, 0, '25MgyOi9jSwYDc6VNhfk1Lpe0', 1, 1, '2023-02-21', 2), (348, 0, '25MgyOi9jSwYDc6VNhfk1Lpe0', 9, 1, '2023-02-21', 2), (349, 0, '25MgyOi9jSwYDc6VNhfk1Lpe0', 8, 1, '2023-02-21', 2), (350, 0, '25MgyOi9jSwYDc6VNhfk1Lpe0', 7, 1, '2023-02-21', 2), (351, 0, '25MgyOi9jSwYDc6VNhfk1Lpe0', 5, 1, '2023-02-21', 2), (352, 0, '25MgyOi9jSwYDc6VNhfk1Lpe0', 3, 1, '2023-02-21', 2), (353, 5, '25MgyOi9jSwYDc6VNhfk1Lpe0', 4, 1, '2023-02-21', 2), (354, 10, 'lRqZamh1dIzfCHWNYsK4ArcpP', 1, 1, '2023-02-23', 0), (355, 0, 'Jl2br9oyeMiLUO8FjpuK7zTnt', 15, 1, '2023-02-26', 0), (356, 0, '2cXvEKuwn61IaL5bq4Z0drDhV', 15, 1, '2023-02-28', 0), (357, 0, 'j0I4dQ6x1BPkzctf8KGlYaTir', 1, 1, '2023-03-01', 2), (358, 0, 'j0I4dQ6x1BPkzctf8KGlYaTir', 7, 1, '2023-03-01', 2), (359, 12, 'j0I4dQ6x1BPkzctf8KGlYaTir', 2, 5, '2023-03-01', 2), (360, 12, 'j0I4dQ6x1BPkzctf8KGlYaTir', 8, 9, '2023-03-01', 2), (361, 12, 'j0I4dQ6x1BPkzctf8KGlYaTir', 9, 6, '2023-03-01', 2), (362, 0, 'O1ohy0ES8FbGYztTKN73IqZmn', 5, 1, '2023-03-01', 2), (363, 0, 'DOvF5VXk7MjELHSosIB1Wb0Cc', 4, 10, '2023-03-01', 2), (364, 12, 'DOvF5VXk7MjELHSosIB1Wb0Cc', 8, 10, '2023-03-01', 2), (365, 12, 'DOvF5VXk7MjELHSosIB1Wb0Cc', 9, 10, '2023-03-01', 2), (366, 0, 'bsBgyh58VwaH2voztTc4RAO96', 4, 1, '2023-03-20', 2), (367, 0, 'h7ZVej8LTi6YcMsJdWonUSkfX', 1, 1, '2023-03-24', 2), (368, 0, 'RtvCrnUPsjOmMQ2GbZxXie13K', 5, 1, '2023-03-24', 0), (369, 0, '1QmyvRxFV30f6Mp8dUqXzDO9a', 2, 5, '2023-03-24', 2), (370, 0, 'JTG7btM0xp6adPrw8BIyNEoRV', 2, 2, '2023-03-24', 0), (371, 0, 'avVE7iWsKnJ8UqIjfBc53Hohe', 2, 1, '2023-03-25', 0), (372, 0, 'nYSg0ftFOHC3uXk6iAhB8xIjK', 1, 1, '2023-03-31', 2), (373, 0, 'nU4WCBPcFK1H62IYl807eZ5oh', 2, 1, '2023-04-18', 0), (374, 0, 'nU4WCBPcFK1H62IYl807eZ5oh', 4, 1, '2023-04-18', 0), (375, 0, 'VmZ1TCU3H4epKhDIJQa9EGbyq', 1, 2, '2023-04-24', 0), (376, 0, 'y8rRp7lnx4NsBYKL9fJPZThXw', 1, 1, '2023-04-25', 0), (377, 0, 'Xe5LEq7fOF0IbkCimy3vxQtNY', 1, 1, '2023-04-25', 0), (378, 0, '2dXKZIAUr0aWLBwv3zgStshin', 1, 1, '2023-04-25', 0), (379, 0, '2dXKZIAUr0aWLBwv3zgStshin', 2, 1, '2023-04-25', 0);
COMMIT;

-- ----------------------------
-- Table structure for tbl_crop_pincode
-- ----------------------------
DROP TABLE IF EXISTS `tbl_crop_pincode`;
CREATE TABLE `tbl_crop_pincode`  (
  `pn_id` int(11) NOT NULL AUTO_INCREMENT,
  `cr_id` int(11) NOT NULL,
  `pnc_id` int(11) NOT NULL,
  `stat` int(11) NOT NULL,
  PRIMARY KEY (`pn_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of tbl_crop_pincode
-- ----------------------------
BEGIN;
INSERT INTO `tbl_crop_pincode` VALUES (1, 1, 1, 0), (2, 1, 2, 0), (3, 2, 2, 0), (4, 2, 3, 0), (5, 1, 2, 0), (6, 2, 34, 0), (7, 3, 34, 0), (8, 2, 34, 0), (9, 1, 10, 0), (10, 1, 9, 0);
COMMIT;

-- ----------------------------
-- Table structure for tbl_farm_ratings
-- ----------------------------
DROP TABLE IF EXISTS `tbl_farm_ratings`;
CREATE TABLE `tbl_farm_ratings`  (
  `r_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `review` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rv_dt` date NOT NULL,
  `stat` int(11) NOT NULL,
  PRIMARY KEY (`r_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of tbl_farm_ratings
-- ----------------------------
BEGIN;
INSERT INTO `tbl_farm_ratings` VALUES (1, 1, 1, '5', 'The farm has vast areas of land under spice-herbs cultivation. We were not allowed to touch any plant here. However, before exiting, we were offered Masala Tea by the farm-manager.', '2023-02-02', 0), (2, 1, 2, '4', 'The farm is on the way to wandoor. You can easily spend 2 hours on the farm and enjoy the peace and tranquility of the place. You can see the plants and sit under the clove tree on the bench provided. It is really peaceful but beware of red ants. On the way to exit you can purchase the spices. A basket of all the spices cost Rs. 300. Pure coconut oil is also available.', '2023-02-01', 0), (3, 2, 3, '2', 'It is amazing to see how they are producing spices and many different types of medicinal plants in such a hard condition.', '2023-02-05', 0), (4, 2, 4, '3', 'this is an agriculture farm.so many spice plants like cloves,pepper,cinnamon and flowers .it is on the way to wandoor.we spent an hour in this farm.', '2023-02-07', 0), (5, 1, 10, '4', 'A basket of all the spices cost Rs. 300. Pure coconut oil is also available.', '2023-02-23', 1), (6, 1, 10, '5', 'The farm is on the way to wandoor. You can easily spend 2 hours on the farm and enjoy the peace and tranquility of the place. You can see the plants and sit under the clove tree on the bench provided. It is really peaceful but beware of red ants. On the way to exit you can purchase the spices. A basket of all the spices cost Rs. 300. Pure coconut oil is also available.', '2023-02-23', 0), (7, 2, 10, '2', 'this is an agriculture farm.so many spice plants like cloves,pepper,cinnamon and flowers .it is on the way to wandoor.we spent an hour in this farm.', '2023-02-23', 0), (8, 1, 12, '0.5', 'adas', '2023-03-01', 1), (9, 1, 12, '2', 'ada', '2023-03-01', 0);
COMMIT;

-- ----------------------------
-- Table structure for tbl_farmer_enquiry
-- ----------------------------
DROP TABLE IF EXISTS `tbl_farmer_enquiry`;
CREATE TABLE `tbl_farmer_enquiry`  (
  `f_e_id` int(11) NOT NULL AUTO_INCREMENT,
  `dt` date NOT NULL,
  `f_id` int(11) NOT NULL,
  `msg` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rpl` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stat` int(11) NOT NULL,
  PRIMARY KEY (`f_e_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of tbl_farmer_enquiry
-- ----------------------------
BEGIN;
INSERT INTO `tbl_farmer_enquiry` VALUES (1, '2023-04-12', 3, 'USer not accepting order', 'Let me check', 0), (2, '2023-04-22', 1, 'fbcbcv', '', 0);
COMMIT;

-- ----------------------------
-- Table structure for tbl_farmer_verification
-- ----------------------------
DROP TABLE IF EXISTS `tbl_farmer_verification`;
CREATE TABLE `tbl_farmer_verification`  (
  `v_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_id` int(11) NOT NULL,
  `v_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cert` int(11) NOT NULL,
  `stat` int(11) NOT NULL,
  PRIMARY KEY (`v_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of tbl_farmer_verification
-- ----------------------------
BEGIN;
INSERT INTO `tbl_farmer_verification` VALUES (3, 1, 'assets/img/farmer/2.png', 1, 0), (5, 1, 'assets/img/farmer/11.png', 2, 0), (6, 1, 'assets/img/farmer/3.png', 2, 0), (7, 1, 'assets/img/farmer/12.png', 2, 0), (8, 1, 'assets/img/farmer/13.png', 1, 0), (9, 8, 'assets/img/farmer/6.png', 1, 0), (10, 8, 'assets/img/farmer/61.png', 1, 0), (11, 8, 'assets/img/farmer/62.png', 2, 0);
COMMIT;

-- ----------------------------
-- Table structure for tbl_farmers
-- ----------------------------
DROP TABLE IF EXISTS `tbl_farmers`;
CREATE TABLE `tbl_farmers`  (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `f_mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `f_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `f_pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `farm_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `frm_desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `state_id` int(11) NOT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pincode` int(11) NOT NULL,
  `frm_logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `frm_bnr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stat` int(11) NOT NULL,
  PRIMARY KEY (`f_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of tbl_farmers
-- ----------------------------
BEGIN;
INSERT INTO `tbl_farmers` VALUES (1, 'MOLY DINESAN ', '9955441122', 'dinesan@gmail.com', '$2y$11$iuRIhMmYOJzLbdj2Y1DQgeJABfhLMOHp7L1MTMxgFLY3rDiM9NlGe', 'Maa Tara Fruits Company', 'Maa Tara Fruits Company, established in the year 2016. We are the leading Manufacturer, Wholesaler, Trader and Supplier of a wide range of Fresh Fruits, Fresh Vegetables, Dry Fruits, Fresh Maize And Corn and many more. Our products are high in demand due to their premium quality and affordable prices. Furthermore, we ensure to timely deliver these products to our clients, through this we have gained a huge clients base in the market.', 18, 'Trivandrum', 'Balaramapuram', 695501, 'assets/img/farmer/1_1.jpg', 'assets/img/farmer/1.jpg', 0), (2, 'PADMAVATHY AMMA ', '9955441121', 'padmavathy@gmail.com', '$2y$11$iuRIhMmYOJzLbdj2Y1DQgeJABfhLMOHp7L1MTMxgFLY3rDiM9NlGe', 'Cattle Farm', '', 18, 'Trivandrum', 'Balaramapuram', 695501, 'assets/img/farmer/2_1.jpg', 'assets/img/farmer/2.jpg', 0), (3, 'P.C.SHAJI ', '9955441125', 'shaji@gmail.com', '$2y$11$iuRIhMmYOJzLbdj2Y1DQgeJABfhLMOHp7L1MTMxgFLY3rDiM9NlGe', 'Poultry Farm', '', 18, 'Trivandrum', 'Balaramapuram', 695501, 'assets/img/farmer/3_1.jpg', 'assets/img/farmer/3.jpg', 0), (4, 'N.J.BABY ', '9955441124', 'baby@gmail.com', '$2y$11$iuRIhMmYOJzLbdj2Y1DQgeJABfhLMOHp7L1MTMxgFLY3rDiM9NlGe', 'Vegetables Farm', '', 18, 'Trivandrum', 'Balaramapuram', 695501, 'assets/img/farmer/4_1.jpg', 'assets/img/farmer/4.jpg', 0), (5, 'K.K.KUNJUMON', '9955441128', 'kunjumon@gmail.com', '$2y$11$iuRIhMmYOJzLbdj2Y1DQgeJABfhLMOHp7L1MTMxgFLY3rDiM9NlGe', 'Farm Fertilizers', '', 18, 'Trivandrum', 'Balaramapuram', 695501, 'assets/img/farmer/5_1.jpg', 'assets/img/farmer/5.jpg', 0), (6, 'SATHEESAN', '9955441129', 'satheesan@gmail.com', '$2y$11$iuRIhMmYOJzLbdj2Y1DQgeJABfhLMOHp7L1MTMxgFLY3rDiM9NlGe', 'Fish Farming', '', 18, 'Trivandrum', 'Balaramapuram', 695501, 'assets/img/farmer/6_1.jpg', 'assets/img/farmer/6.jpg', 0), (7, 'K.KRISHNANKUTTY', '9955887744', 'krishnankutty@gmail.com', '$2y$11$iuRIhMmYOJzLbdj2Y1DQgeJABfhLMOHp7L1MTMxgFLY3rDiM9NlGe', 'Fish Farming', 'afaf', 18, 'as', 'assa', 695501, 'assets/img/farmer/pexels-shamim-hasan-2878836.jpg', 'assets/img/farmer/pexels-kindel-media-7456550(1).jpg', 1), (8, 'dsfsdf', '9966332255', 'ds@gffdg.io', '$2y$11$1W9PELxaUr0USzNtb1IkyOb8PKUW7Q/8z1TMbK6YoIDElQjrrJVAu', '', '', 0, '', '', 0, '', '', 0);
COMMIT;

-- ----------------------------
-- Table structure for tbl_farmers_forum
-- ----------------------------
DROP TABLE IF EXISTS `tbl_farmers_forum`;
CREATE TABLE `tbl_farmers_forum`  (
  `fr_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `qns` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fr_stat` int(11) NOT NULL,
  PRIMARY KEY (`fr_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of tbl_farmers_forum
-- ----------------------------
BEGIN;
INSERT INTO `tbl_farmers_forum` VALUES (1, 1, 'Role of Earthworms ', 'Role of Earthworms in Soil – How They Increase Crop Yield?', 0);
COMMIT;

-- ----------------------------
-- Table structure for tbl_farmers_loan
-- ----------------------------
DROP TABLE IF EXISTS `tbl_farmers_loan`;
CREATE TABLE `tbl_farmers_loan`  (
  `ln_id` int(11) NOT NULL AUTO_INCREMENT,
  `ln_dt` date NOT NULL,
  `l_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bank_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `amnt_det` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `purpose` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bnk_branch` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ln_stat` int(11) NOT NULL,
  PRIMARY KEY (`ln_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of tbl_farmers_loan
-- ----------------------------
BEGIN;
INSERT INTO `tbl_farmers_loan` VALUES (1, '2023-02-27', 'Loan for Fish farming', 'Canara Bank', '1 lakh to 10 lakh', 'loan available for farmers interested in fish farming', 'Neyyattinkara', 0), (2, '2023-03-01', 'Financing Commercial Dairy Farms', 'Federal Bank', '10 lakh', 'We provide finance for starting a new dairy farm or expanding an existing dairy farm. The facility can be availed as term loan (for purchase of milch animals/ equipments/ utensils/ vehicles/ feed/ milk vans/ refrigerator etc., Construction/ renovation/ expansion of cattle shed) or cash credit (for growing green fodder, Working capital requirements of the farm).', 'Balaramapuram', 0);
COMMIT;

-- ----------------------------
-- Table structure for tbl_forum_answers
-- ----------------------------
DROP TABLE IF EXISTS `tbl_forum_answers`;
CREATE TABLE `tbl_forum_answers`  (
  `an_id` int(11) NOT NULL AUTO_INCREMENT,
  `fr_id` int(11) NOT NULL,
  `f_id` int(11) NOT NULL,
  `answer` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stat` int(11) NOT NULL,
  PRIMARY KEY (`an_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of tbl_forum_answers
-- ----------------------------
BEGIN;
INSERT INTO `tbl_forum_answers` VALUES (12, 1, 1, 'By their activity in the soil, earthworms offer many benefits: increased nutrient availability, better drainage, and a more stable soil structure, all of which help improve farm productivity. Worms feed on plant debris (dead roots, leaves, grasses, manure) and soil.', 0);
COMMIT;

-- ----------------------------
-- Table structure for tbl_govt_schemes
-- ----------------------------
DROP TABLE IF EXISTS `tbl_govt_schemes`;
CREATE TABLE `tbl_govt_schemes`  (
  `sc_id` int(11) NOT NULL AUTO_INCREMENT,
  `sc_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `amount` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dept` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dt_ad` date NOT NULL,
  `stat` int(11) NOT NULL,
  PRIMARY KEY (`sc_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of tbl_govt_schemes
-- ----------------------------
BEGIN;
INSERT INTO `tbl_govt_schemes` VALUES (2, 'Farm Plan Based Production Programme including pre-production support', '1200.00 lakh', 'The size of each basic unit will range from minimum area of 10 cents to maximum of 200 cents excluding the area occupied by house or building. Integrated Farming system based development will be the focus of the programme. Focus will be given for cropping systems based on coconut, spices, vegetables and fruits. The beneficiary or the farm will be identified by the Agricultural Officer based on guidelines issued by the department and approved in the ADC in consultation with LSGD authorities. It is envisaged that 50 percent of beneficiaries of the project will be women.', 'Department of Agriculture Development and Farmers\' welfare', '2023-03-31', 0);
COMMIT;

-- ----------------------------
-- Table structure for tbl_india_state
-- ----------------------------
DROP TABLE IF EXISTS `tbl_india_state`;
CREATE TABLE `tbl_india_state`  (
  `state_id` int(11) NOT NULL AUTO_INCREMENT,
  `state_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `state_description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`state_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci;

-- ----------------------------
-- Records of tbl_india_state
-- ----------------------------
BEGIN;
INSERT INTO `tbl_india_state` VALUES (1, 'Andaman & Nicobar Islands', '', 0), (2, 'Andhra Pradesh', '', 0), (3, 'Arunachal Pradesh', '', 0), (4, 'Assam', '', 0), (5, 'Bihar', '', 0), (6, 'Chandigarh', '', 0), (7, 'Chhattisgarh', '', 0), (8, 'Dadra & Nagar Haveli', '', 0), (9, 'Daman & Diu', '', 0), (10, 'Delhi', '', 0), (11, 'Goa', '', 0), (12, 'Gujarat', '', 0), (13, 'Haryana', '', 0), (14, 'Himachal Pradesh', '', 0), (15, 'Jammu & Kashmir', '', 0), (16, 'Jharkhand', '', 0), (17, 'Karnataka', '', 0), (18, 'Kerala', '', 0), (19, 'Lakshadweep', '', 0), (20, 'Madhya Pradesh', '', 0), (21, 'Maharashtra', '', 0), (22, 'Manipur', '', 0), (23, 'Meghalaya', '', 0), (24, 'Mizoram', '', 0), (25, 'Nagaland', '', 0), (26, 'Odisha', '', 0), (27, 'Puducherry', '', 0), (28, 'Punjab', '', 0), (29, 'Rajasthan', '', 0), (30, 'Sikkim', '', 0), (31, 'Tamil Nadu', '', 0), (32, 'Tripura', '', 0), (33, 'Uttar Pradesh', '', 0), (34, 'Uttarakhand', '', 0), (35, 'West Bengal', '', 0);
COMMIT;

-- ----------------------------
-- Table structure for tbl_location
-- ----------------------------
DROP TABLE IF EXISTS `tbl_location`;
CREATE TABLE `tbl_location`  (
  `value` int(11) NOT NULL AUTO_INCREMENT,
  `pincode` int(11) NOT NULL,
  `label` varchar(750) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`value`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2443 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of tbl_location
-- ----------------------------
BEGIN;
INSERT INTO `tbl_location` VALUES (1, 695614, 'Adayamon B.O', 0), (2, 695102, 'Alamcode S.O', 0), (3, 695607, 'Aliyadu ', 0), (4, 695102, 'Altharamoodu', 0), (5, 695572, 'Amachal', 0), (6, 695122, 'Amaravila', 1), (7, 695005, 'Ambalamukku', 0), (8, 695026, 'Ambalathara', 1), (9, 695572, 'Ambalathinkala', 0), (10, 695505, 'Amboori', 0), (11, 695541, 'Anad', 0), (12, 695606, 'Anakudy', 0), (13, 695551, 'Anappara', 0), (14, 695306, 'Anathalavattom', 0), (15, 695124, 'Anavoor', 0), (16, 695029, 'Anayara', 0), (17, 695584, 'Andoorkonam', 0), (18, 695309, 'Anjengo', 0), (19, 695123, 'Aralumoodu', 1), (20, 695032, 'Aramada', 0), (21, 695122, 'Arayur', 0), (22, 695525, 'Arumanoor', 0), (23, 695564, 'Aruvikara', 0), (24, 695126, 'Aruvipuram', 0), (25, 695542, 'Aryanad', 0), (26, 695023, 'Attakulangara', 1), (27, 695101, 'Attingal', 1), (28, 695009, 'Attukal', 0), (29, 695103, 'Avanavancherry', 0), (30, 695103, 'Ayilam', 0), (31, 695502, 'Ayira', 0), (32, 695310, 'Ayroor-Varkala', 0), (33, 695305, 'Azhurmarket', 0), (34, 695501, 'Balaramapuram', 1), (35, 695008, 'Beemapally', 0), (36, 695501, 'Bhagavathinada', 0), (37, 695609, 'Bharathannur', 0), (38, 695551, 'Bonaccord', 0), (39, 695522, 'CGO complex poonkulam', 0), (40, 695122, 'Chaikkottukonam', 0), (41, 695024, 'Chakkai', 1), (42, 695542, 'Changa', 0), (43, 695301, 'Channankara', 0), (44, 695601, 'Charupara', 0), (45, 695615, 'Cheeranikkara', 0), (46, 695564, 'Chekkakonam', 0), (47, 695587, 'Chempazhanthy', 0), (48, 695132, 'Chenkal', 0), (49, 695504, 'Cheriakolla', 1), (50, 695013, 'Cheriyakonni', 0), (51, 695142, 'Cherunniyur', 0), (52, 695502, 'Cheruvarakonam', 0), (53, 695011, 'Cheruvikkal', 0), (54, 695551, 'Chettachal', 0), (55, 695141, 'Chilakur', 0), (56, 695304, 'Chirayinkeezhu', 0), (57, 695301, 'Chittattumukku', 0), (58, 695501, 'Chowara', 0), (59, 695541, 'Chullimanoor', 0), (60, 695014, 'Cotton Hill', 0), (61, 695563, 'Daivapura', 0), (62, 695125, 'Dalmughom', 0), (63, 695503, 'Dhanuvachapuram', 0), (64, 695104, 'Edakode', 0), (65, 695311, 'Edava', 0), (66, 695310, 'Elakamon', 0), (67, 695310, 'Elakamon-kizhakkepuram', 0), (68, 695562, 'Elavattom', 0), (69, 695504, 'Elluvila', 0), (70, 695562, 'Ex-servicemen\'s colony', 0), (71, 695004, 'Goureesapattom', 0), (72, 695310, 'Hariharapuram', 0), (73, 695563, 'Idinjar', 0), (74, 695103, 'Ilamba', 0), (75, 695563, 'Ilanchiyam', 0), (76, 695019, 'Industrial estate', 0), (77, 695561, 'Irinchayam', 0), (78, 695584, 'Iroorpara', 0), (79, 695014, 'Jagathy', 1), (80, 695141, 'Janardhanapuram', 0), (81, 695306, 'Kadakkavur', 0), (82, 695307, 'Kaikara', 0), (83, 695040, 'Kaimanam', 1), (84, 695024, 'Kaithamukku', 0), (85, 695506, 'Kakkavila', 0), (86, 695606, 'Kalamachal', 0), (87, 695605, 'Kallambalam', 0), (88, 695551, 'Kallar TVM', 0), (89, 695608, 'Kallara', 0), (90, 695043, 'Kallayam', 0), (91, 695574, 'Kalliyal', 0), (92, 695042, 'Kalliyoor', 0), (93, 695609, 'Kanchinada', 0), (94, 695512, 'Kandala', 0), (95, 695104, 'Kandukrishi', 0), (96, 695301, 'Kaniyapuram', 1), (97, 695525, 'Kanjampazhanji', 0), (98, 695524, 'Kanjiramkulam', 0), (99, 695030, 'Kanjirampara', 0), (100, 695311, 'Kappil', 0), (101, 695504, 'Karakonam', 1), (102, 695564, 'Karakulam', 0), (103, 695002, 'Karamana', 1), (104, 695605, 'Karavaram', 0), (105, 695505, 'Karikuzhi', 0), (106, 695583, 'Karimanal', 0), (107, 695562, 'Karimancode', 0), (108, 695606, 'Karimkuttikara', 0), (109, 695541, 'Karipur', 0), (110, 695581, 'Kariyavattom', 1), (111, 695506, 'Karode', 0), (112, 695002, 'Karumom', 0), (113, 695304, 'Katakam', 0), (114, 695501, 'Kattachalkuzhy', 0), (115, 695572, 'Kattacode', 0), (116, 695584, 'Kattaikonam', 0), (117, 695572, 'Kattakada', 1), (118, 695608, 'Kattumpuram', 0), (119, 695003, 'Kowdiar', 1), (120, 695003, 'Kowdiar Square', 0), (121, 695144, 'Kavalayur', 0), (122, 695582, 'Kazhakuttam', 1), (123, 695526, 'Kazhavur', 0), (124, 695124, 'Keezharur', 0), (125, 695101, 'Keezhattingal', 0), (126, 695099, 'Kerala Governor\'s Camp', 0), (127, 695523, 'Kidarakuzhy', 0), (128, 695601, 'Kilimanur', 0), (129, 695601, 'Kilimanur Palace', 0), (130, 695104, 'Kizhuvalam', 0), (131, 695563, 'Kochuvila', 0), (132, 695608, 'Kodithookiyakunnu', 0), (133, 695013, 'Kondunganur', 0), (134, 695123, 'Kodungavila', 0), (135, 695612, 'Koduvazhannur', 0), (136, 695584, 'Koithurkonam', 0), (137, 695542, 'Kokkotela', 0), (138, 695604, 'Kokkottukonam', 0), (139, 695607, 'Koliakode', 0), (140, 695571, 'Kollode', 0), (141, 695615, 'Konchira', 0), (142, 695568, 'Koonanvenga', 0), (143, 695304, 'Koonthallur', 0), (144, 695505, 'Koothali', 0), (145, 695124, 'Kottackal Tvm', 0), (146, 695542, 'Kottakkakom', 0), (147, 695521, 'Kottapuram', 0), (148, 695574, 'Kottoor', 0), (149, 695501, 'Kottukal', 0), (150, 695606, 'Kottukunnam', 0), (151, 695527, 'Kovalam', 1), (152, 695527, 'Kovalam Beach', 0), (153, 695043, 'Kudappanakunnu', 0), (154, 695505, 'Kudappanamoodu', 0), (155, 695313, 'Kudavoor', 0), (156, 695505, 'Kudayal', 0), (157, 695144, 'Kulamuttam', 0), (158, 695542, 'Kulappada', 0), (159, 695583, 'Kulathur', 1), (160, 695504, 'Kunnathukal', 0), (161, 695104, 'Kurakkada', 0), (162, 695608, 'Kurumbayam', 0), (163, 695572, 'Kuruthamcode', 0), (164, 695543, 'Kuthirakalam-Vellanad', 0), (165, 695615, 'Kuthirakulam', 0), (166, 695505, 'Kuttamala', 0), (167, 695574, 'Kuttichal', 0), (168, 695512, 'Kuvalassery', 0), (169, 695526, 'Lourdepuram', 0), (170, 695571, 'Machel', 0), (171, 695602, 'Madavoor-pallickal', 0), (172, 695602, 'Malakkal', 0), (173, 695571, 'Malayam', 0), (174, 695571, 'Malayinkil', 0), (175, 695009, 'Manacadu', 1), (176, 695505, 'Manali', 0), (177, 695611, 'Manambur', 0), (178, 695541, 'Mancha', 0), (179, 695125, 'Manchamcode', 0), (180, 695503, 'Manchavilakom', 0), (181, 695013, 'Manikanteswaram', 0), (182, 695313, 'Manjamala', 0), (183, 695125, 'Mannamkonam', 0), (184, 695015, 'Mannanthala', 1), (185, 695541, 'Mannurkonam', 0), (186, 695542, 'Marangad', 0), (187, 695124, 'Marayamuttom', 0), (188, 695122, 'Mariapuram', 0), (189, 695551, 'Maruthamala', 0), (190, 695603, 'Maruthikunnu', 0), (191, 695505, 'Mayam', 0), (192, 695542, 'Meenankal', 0), (193, 695562, 'Meenmutty', 0), (194, 695306, 'Melkadakkavur', 0), (195, 695312, 'Melvettoor', 0), (196, 695551, 'Memala', 0), (197, 695004, 'MG college', 0), (198, 695610, 'Mithirmala', 0), (199, 695543, 'Mithraniketan', 0), (200, 695573, 'Moongode', 0), (201, 695144, 'Moongode S.o', 0), (202, 695615, 'Moonnanakuzhy', 0), (203, 695609, 'Moonnumukku', 0), (204, 695604, 'Moothala', 0), (205, 695103, 'Mudakkal', 0), (206, 695304, 'Mudapuram', 0), (207, 695043, 'Mukkolackal', 0), (208, 695607, 'Mukkudil', 0), (209, 695614, 'Mulakkalathukavu', 0), (210, 695543, 'Mulayara', 0), (211, 695521, 'Mullur', 0), (212, 695133, 'Mulluvila', 0), (213, 695543, 'Mundela', 0), (214, 695302, 'Murukumpuzhaa', 0), (215, 695146, 'Muthana', 0), (216, 695610, 'Muthuvila', 0), (217, 695025, 'Muttada', 0), (218, 695523, 'Muttakadu', 0), (219, 695145, 'Muttappalam', 0), (220, 695572, 'Mylakkara', 0), (221, 695609, 'Mylamoodu', 0), (222, 695601, 'Nagaroor', 0), (223, 695015, 'Nalanchira', 1), (224, 695528, 'Naruvamoodu', 0), (225, 695603, 'Navaikulam', 0), (226, 695541, 'Nedumangad', 1), (227, 695102, 'Nedumparambu', 0), (228, 695307, 'Nedunganda', 0), (229, 695610, 'Neeramankadavuu', 0), (230, 695606, 'Nellanad', 0), (231, 695524, 'Nellimoodu', 1), (232, 695523, 'Nellivila', 0), (233, 695020, 'Nemom', 1), (234, 695589, 'Nethajipuram', 0), (235, 695013, 'Nettayam', 0), (236, 695572, 'Neyyar Dam', 0), (237, 695121, 'Neyyattinkara', 1), (238, 695121, 'Neyyattinkara Town', 0), (239, 695306, 'Nilakkamukku', 0), (240, 695602, 'Njarayilkonam', 0), (241, 695311, 'Odayam', 0), (242, 695133, 'Olathanni', 0), (243, 695020, 'Ookode', 0), (244, 695104, 'Oorupoika', 0), (245, 695507, 'Ooruttambalam', 0), (246, 695125, 'Ottasekaramangalam', 0), (247, 695562, 'Pacha', 0), (248, 695027, 'Pachallur', 0), (249, 695604, 'Pakalkuri', 0), (250, 695143, 'Palachira', 0), (251, 695607, 'Palamkonam', 0), (252, 695146, 'Palayamkunnu', 0), (253, 695024, 'Palkulangara', 0), (254, 695020, 'Pallichal', 0), (255, 695604, 'Pallikkal kilimanur', 0), (256, 695316, 'Pallipuram', 0), (257, 695586, 'Pallithura', 0), (258, 695562, 'Paluvally', 0), (259, 695505, 'Panachamoodu', 0), (260, 695542, 'Panacode', 0), (261, 695563, 'Panangode', 0), (262, 695568, 'Panavoor', 0), (263, 695568, 'Panayam', 0), (264, 695561, 'Panayamuttom', 0), (265, 695145, 'Panayara', 0), (266, 695028, 'Pandalacode', 0), (267, 695581, 'Pangappara', 0), (268, 695609, 'Pangode', 0), (269, 695575, 'Panniyode', 0), (270, 695572, 'Pantha', 0), (271, 695018, 'Pappanamcode', 1), (272, 695603, 'Parakunnu', 0), (273, 695542, 'Parandode', 0), (274, 695551, 'Parappara', 0), (275, 695502, 'Parassala', 1), (276, 695508, 'Parasuvaickal', 0), (277, 695104, 'Parayathukonam', 0), (278, 695541, 'Paruthikuzhy', 0), (279, 695574, 'Paruthipally', 0), (280, 695004, 'Pattom ', 1), (281, 695501, 'Payattuvila', 0), (282, 695561, 'Pazhakutty', 0), (283, 695601, 'Pazhayakunnummel', 0), (284, 695551, 'Peppara Dam', 0), (285, 695562, 'Perayam', 0), (286, 695563, 'Peringamala', 0), (287, 695601, 'Peroor', 0), (288, 695573, 'Perukavu', 0), (289, 695303, 'Perumathura', 0), (290, 695124, 'Perumkadavila', 0), (291, 695102, 'Perumkulam', 0), (292, 695126, 'Perumpazhuthoor', 0), (293, 695305, 'Perunguzhi', 0), (294, 695005, 'Peroorkada', 1), (295, 695573, 'Peyad', 1), (296, 695607, 'Pirappancode', 0), (297, 695122, 'Plamootukada', 0), (298, 695033, 'PMG Jn', 0), (299, 695103, 'Poikamukku', 0), (300, 695601, 'Ponganadu', 0), (301, 695551, 'Ponmudi', 0), (302, 695012, 'Poojapura', 1), (303, 695012, 'Poojapura Junction', 0), (304, 680505, 'Pookode', 0), (305, 695026, 'Poonthura', 0), (306, 695309, 'Poothura', 0), (307, 695575, 'Poovachal', 0), (308, 695561, 'Poovathur', 0), (309, 695125, 'Poozhanad', 0), (310, 695584, 'Pothencode', 1), (311, 695587, 'Powdikonam', 0), (312, 695513, 'Pozhiyoor', 0), (313, 695011, 'Prasanth Nagar', 0), (314, 695020, 'Pravachambalam', 1), (315, 695038, 'PTP Nagar', 0), (316, 695033, 'Public Office', 0), (317, 695612, 'Pulimath', 0), (318, 695573, 'Puliyarakonam', 0), (319, 695604, 'Puliyoorkonam', 0), (320, 695607, 'Pullampara', 0), (321, 695311, 'Pullanicode', 0), (322, 695601, 'Pullayil', 0), (323, 695526, 'Pulluvila', 0), (324, 695575, 'Punalal', 0), (325, 695303, 'Puthencurichy', 0), (326, 695586, 'Puthenthope', 0), (327, 695526, 'Puthiathura', 0), (328, 695541, 'Puthukulangara', 0), (329, 695605, 'Puthusserimukku', 0), (330, 695525, 'Puvar', 0), (331, 695501, 'Russelpuram', 0), (332, 695585, 'Sainik School', 0), (333, 695589, 'Santhigiri', 0), (334, 695010, 'Sasthamangalam', 0), (335, 695305, 'Sasthavattom', 0), (336, 695017, 'Sreekaryam', 1), (337, 695145, 'Sreenivasapuram', 0), (338, 695586, 'ST.Xavier\'s College', 0), (339, 695612, 'Thalikuzhi', 0), (340, 695012, 'Thamalam', 0), (341, 695123, 'Thannimoodu', 0), (342, 695614, 'Thattathumala', 0), (343, 695505, 'Thekkuppara', 0), (344, 695563, 'Thennur', 0), (345, 695027, 'Thiruvallom', 0), (346, 695001, 'ThiruvananthapuuramGPO', 0), (347, 695143, 'Thokkad', 0), (348, 695541, 'Tholicode', 0), (349, 695317, 'Thonnakkal', 0), (350, 695008, 'Thope', 0), (351, 695605, 'Thottakkad', 0), (352, 695581, 'Thundathil', 0), (353, 695011, 'Thuruvikkal', 0), (354, 695014, 'Thycaud', 1), (355, 695006, 'Thirumala', 1), (356, 695133, 'Tirupuram', 0), (357, 695021, 'Titanium', 0), (358, 695010, 'TVM R.K.Mission', 0), (359, 695001, 'TVM AG\'S', 0), (360, 695007, 'TVM Beach', 0), (361, 695036, 'Chalai', 1), (362, 695016, 'TVM Engg College', 0), (363, 695023, 'TVM Fort', 0), (364, 695001, 'TVM Govt Press', 0), (365, 695002, 'TVM ISRO', 0), (366, 695001, 'TVM Medical College', 1), (367, 695024, 'TVM Pettah', 0), (368, 695034, 'TVVM University', 0), (369, 695506, 'Uchakada', 0), (370, 695001, 'Ulloor', 1), (371, 695543, 'Uriakode', 0), (372, 695143, 'Vadasserikonam', 0), (373, 695308, 'Vakkom', 0), (374, 695547, 'Valiamala', 0), (375, 695008, 'Valiathura', 0), (376, 695021, 'Valiaveli', 0), (377, 695006, 'Valiavila', 0), (378, 695008, 'Vallakkadavoo', 0), (379, 695606, 'Vamanapuram', 1), (380, 695035, ' Vanchiyoor junction', 0), (381, 695035, 'Vanchiyur', 0), (382, 695102, 'Vanchiyu-Attingal', 0), (383, 695141, 'Varkala', 0), (384, 695141, 'Varkala south', 0), (385, 695026, 'Vattappara', 0), (386, 695132, 'Vattavila', 0), (387, 695013, 'Vattiyurkavu', 0), (388, 695125, 'Vazhichal', 0), (389, 695501, 'Vedivachankoil', 0), (390, 695572, 'Veeranakavu', 0), (391, 695512, 'Veliyamcode', 0), (392, 695543, 'Veliyannur', 0), (393, 695601, 'Vellallur', 0), (394, 695543, 'Vellanad', 0), (395, 695505, 'Vellarada', 0), (396, 695522, 'Vellayani', 1), (397, 695607, 'Vellumannady', 0), (398, 695615, 'Vembayam', 1), (399, 695523, 'Venganur', 0), (400, 695607, 'Venjaramoodu', 0), (401, 695506, 'Venkadambu', 0), (402, 695028, 'Venkode', 0), (403, 695311, 'Venkulam', 0), (404, 695318, 'Vennicode', 0), (405, 695123, 'Venpakal', 0), (406, 695603, 'Vettiyara', 0), (407, 695312, 'Vettoor', 0), (408, 695033, 'Vikas Bhavan', 0), (409, 695573, 'Vilappilsala', 0), (410, 695542, 'Vinobaniketan', 0), (411, 695551, 'Vithura', 0), (412, 695521, 'Vizhinjam', 0), (413, 695134, 'Vlathankara', 0), (414, 689696, 'Achencoil', 0), (415, 691573, 'Adichanallur', 0), (416, 691571, 'Aduthala', 0), (417, 691516, 'Akkal', 0), (418, 691320, 'Alayamon', 0), (419, 690573, 'Alumkadavu', 0), (420, 691577, 'Alumoodu', 0), (421, 690547, 'Alumpeedika', 0), (422, 691532, 'Ambalakkara', 0), (423, 691508, 'Ambalathinnirappu', 0), (424, 690520, 'Ambalathumbhagom', 0), (425, 691505, 'Ambalathumkala', 0), (426, 691309, 'Ambanad', 0), (427, 691501, 'Ambipoika', 0), (428, 690525, 'Amrithapuri', 0), (429, 691505, 'Anakottur', 0), (430, 691311, 'Anakulam', 0), (431, 691307, 'Anapettakongal', 0), (432, 690561, 'Anayadi', 0), (433, 691306, 'Anchal', 0), (434, 691532, 'Andoor', 0), (435, 691333, 'Areeplachy', 0), (436, 690538, 'Arinallur', 0), (437, 690538, 'Arinallur South', 0), (438, 691530, 'Arkannur', 0), (439, 691316, 'Aryankavu', 0), (440, 691602, 'Ashtamudi', 0), (441, 691002, 'Asramom', 1), (442, 690542, 'Athinad North', 0), (443, 691508, 'Avaneeswaram', 0), (444, 691517, 'Avaneeswaram Rs', 0), (445, 691017, 'Ayathil', 0), (446, 691312, 'Ayilara', 0), (447, 691559, 'Ayirakuzhy', 0), (448, 691307, 'Ayiranallur', 0), (449, 691530, 'Ayur', 0), (450, 690547, 'Azheekkalthura', 0), (451, 691330, 'Bharatheepuram', 0), (452, 691302, 'Bhoothakulam', 0), (453, 691534, 'Chadayamanalam', 1), (454, 691508, 'Chakkuvarakkal', 0), (455, 691014, 'Chandanathope', 0), (456, 691311, 'Channapettah', 0), (457, 691536, 'Channappara', 0), (458, 691536, 'Chariparabu', 0), (459, 690520, 'Chathakulam', 0), (460, 691572, 'Chathannur', 0), (461, 691583, 'Chavara', 0), (462, 691583, 'Chavara Bridge', 0), (463, 691584, 'Chavara South', 0), (464, 689696, 'Chembanaruvi', 0), (465, 691602, 'Chemmakkad', 0), (466, 691557, 'Chengamanad Jn', 0), (467, 691510, 'Chenkulam', 0), (468, 691520, 'Cheppara', 0), (469, 691516, 'Cheriyavelinallur', 0), (470, 690573, 'Cheriyazheekal', 0), (471, 691306, 'Cherukulam', 0), (472, 691507, 'Cherupoika', 0), (473, 691530, 'Cheruvakkal', 0), (474, 691578, 'Chirakkara', 0), (475, 691578, 'Chirakkarathazham', 0), (476, 691559, 'Chithara', 0), (477, 691317, 'Chozhiakode', 0), (478, 690525, 'Clappana', 0), (479, 691310, 'Dally', 0), (480, 691577, 'Decent Jn', 0), (481, 691502, 'East Kallada', 0), (482, 691552, 'Edakkad', 0), (483, 691562, 'Edakulangara', 0), (484, 691307, 'Edamon', 0), (485, 691321, 'Edamulackal', 0), (486, 691571, 'Edanad', 0), (487, 691309, 'Edapalayam', 0), (488, 691583, 'Edappallycotta', 0), (489, 691536, 'Edathara', 0), (490, 691532, 'Edayam', 0), (491, 691539, 'Elamadu', 0), (492, 691322, 'Elampal', 0), (493, 691534, 'Elampazhannur', 0), (494, 691322, 'Elicode', 0), (495, 689696, 'Elikattoor', 0), (496, 691011, 'Eravipuram', 0), (497, 691312, 'Eroor', 0), (498, 691531, 'Extension Trg centre', 0), (499, 691306, 'Extension Trg centre', 0), (500, 691505, 'Ezhukone', 0), (501, 691505, 'Idakkadom', 0), (502, 691601, 'Inchavila', 0), (503, 691505, 'Irumpanangadu', 0), (504, 691507, 'Iverkala East', 0), (505, 691536, 'Kadakkal', 0), (506, 691505, 'Kadakkode', 0), (507, 691312, 'Kadamancode', 0), (508, 691008, 'Kadappakada', 1), (509, 690523, 'Kadathur Ward', 0), (510, 691543, 'Kaithacode', 0), (511, 691535, 'Kaithode', 0), (512, 690522, 'Kakkakunnu', 0), (513, 691331, 'Kakkode', 0), (514, 691303, 'Kakkotumoola', 0), (515, 691302, 'Kalakode', 0), (516, 691560, 'Kalayapuram', 0), (517, 691308, 'Kallada Irrigation project', 0), (518, 690546, 'Kallelibhagom', 0), (519, 691004, 'Kallumthazham', 0), (520, 691578, 'Kalluvathukkal', 0), (521, 691309, 'Kalthuruthy', 0), (522, 689696, 'Kamukumcherry', 0), (523, 691602, 'Kanjavely', 0), (524, 691501, 'Kanjiracode', 0), (525, 691576, 'Kannanallur', 0), (526, 690543, 'Karali Jn', 0), (527, 691571, 'Karamcode', 0), (528, 691318, 'Karavaloor', 0), (529, 689696, 'Karavoor', 0), (530, 691531, 'Karikkom', 0), (531, 691513, 'Karimpinpuzha', 0), (532, 690540, 'Karimthottuva', 0), (533, 691516, 'Karingannur', 0), (534, 691332, 'Kariyara', 0), (535, 691324, 'Karukone', 0), (536, 690544, 'Karunagappally North', 0), (537, 690518, 'Karunagappaly', 0), (538, 691505, 'Karuvelil', 0), (539, 691537, 'Kattadi Jn', 0), (540, 690542, 'Kattilkadavu', 0), (541, 691003, 'Kavanad', 0), (542, 691004, 'Kilikollur', 0), (543, 691004, 'Kilikollur East', 0), (544, 691574, 'Kizhakkenela', 0), (545, 691542, 'Kizhakketheruvu', 0), (546, 691502, 'Koduvila', 0), (547, 691590, 'Koivila', 0), (548, 691538, 'Kokkad', 0), (549, 690536, 'Kollaka', 0), (550, 691001, 'Kollam', 0), (551, 691001, 'Kollam Bazar', 0), (552, 691001, 'Kollam Cantonment', 0), (553, 691013, 'Kollam Civil station', 0), (554, 691013, 'Kollam Cutchery', 0), (555, 691001, 'Kollam Taluk cutchery', 0), (556, 691541, 'Kollayil', 0), (557, 691020, 'Koottikada', 0), (558, 691310, 'Koovakkad', 0), (559, 691506, 'Kottarakara', 0), (560, 691518, 'Kottathala', 0), (561, 691322, 'Kottavattom', 0), (562, 691571, 'Kottiyam', 0), (563, 691519, 'Kottukkal', 0), (564, 691512, 'Kudavattur', 0), (565, 691521, 'Kulakada', 0), (566, 691521, 'Kulakkada East', 0), (567, 691521, 'Kulakkadathazham', 0), (568, 690544, 'Kulasekharapuram', 0), (569, 691310, 'Kulathupuzha', 0), (570, 689696, 'Kumarankudy', 0), (571, 691503, 'Kumbalam', 0), (572, 691573, 'Kummallur', 0), (573, 691536, 'Kummil', 0), (574, 691501, 'Kundara', 0), (575, 691501, 'Kundara East', 0), (576, 689695, 'Kundayam', 0), (577, 690540, 'Kunnathur East', 0), (578, 691508, 'Kunnicode', 0), (579, 691557, 'Kura', 0), (580, 691604, 'Kureepuzha', 0), (581, 691534, 'Kuriyode', 0), (582, 689695, 'Kurumbakara', 0), (583, 690523, 'Kuthirapanthy', 0), (584, 691536, 'Kuttikadu', 0), (585, 691509, 'Kuzhimathicaud', 0), (586, 690542, 'Kuzhithura', 0), (587, 691541, 'Madathara', 0), (588, 690525, 'Madathilkaranma', 0), (589, 691537, 'Mailode', 0), (590, 691560, 'Mailom', 0), (591, 689695, 'Maloor', 0), (592, 689695, 'Maloor College', 0), (593, 691307, 'Mampazhathara', 0), (594, 691312, 'Manalil', 0), (595, 691553, 'Manampuzha', 0), (596, 690574, 'Manappally North', 0), (597, 689695, 'Manchallur Pathanapuram', 0), (598, 691559, 'Mancode-kadakkal', 0), (599, 691015, 'Mangad', 0), (600, 691333, 'Maniyaru-punalur', 0), (601, 691508, 'Manjakala', 0), (602, 691530, 'Manjappara', 0), (603, 691311, 'Mannur-anchal', 0), (604, 691505, 'Maranad', 0), (605, 691312, 'Marthandankara', 0), (606, 691003, 'Maruthadi', 0), (607, 691601, 'Mathilil', 0), (608, 691536, 'Mathira', 0), (609, 691315, 'Mathra', 0), (610, 691507, 'Mavadi', 0), (611, 691303, 'Mayyanad', 0), (612, 691510, 'Meeyana', 0), (613, 691537, 'Meeyannur', 0), (614, 691508, 'Melila', 0), (615, 691577, 'Mukathala', 0), (616, 691503, 'Mukkoodu', 0), (617, 691585, 'Mukundapuram', 0), (618, 691503, 'Mulavana', 0), (619, 691010, 'Mundakkal', 0), (620, 691502, 'Munroethuruthu', 0), (621, 690520, 'Muthupilakkad', 0), (622, 691512, 'Muttara', 0), (623, 691571, 'Mylakkadu', 0), (624, 690519, 'Mynagappally', 0), (625, 690519, 'Mynagappally North', 0), (626, 691515, 'Nallila', 0), (627, 691326, 'Narikal', 0), (628, 691306, 'Nediyara', 0), (629, 691509, 'Nedumoncavu', 0), (630, 691580, 'Nedumpana', 0), (631, 691334, 'Nedungolam', 0), (632, 691506, 'Neeleswaram', 0), (633, 691582, 'Neendakara', 0), (634, 691302, 'Nellettil', 0), (635, 691623, 'Nellikunnam', 0), (636, 691509, 'Nellimukku', 0), (637, 691305, 'Nellipally', 0), (638, 691537, 'Nettayam', 0), (639, 691535, 'Nilamel', 0), (640, 690525, 'Ochira', 0), (641, 691512, 'Odanavattom', 0), (642, 691308, 'Ottackal', 0), (643, 691510, 'Oyur', 0), (644, 691530, 'Ozhukkuparackal', 0), (645, 691503, 'Padappakara', 0), (646, 690524, 'Padinjattakkara', 0), (647, 691566, 'Pallickal-kottarakara', 0), (648, 691576, 'Pallimon', 0), (649, 690521, 'Pallisserickal', 0), (650, 691006, 'Pallithottam', 0), (651, 691544, 'Panavely', 0), (652, 691601, 'Panayam', 0), (653, 691583, 'Panmana', 0), (654, 691587, 'Panmana Puthen chantha', 0), (655, 691552, 'Panthaplavu', 0), (656, 691301, 'Paravur', 0), (657, 691574, 'Parippally', 0), (658, 689695, 'Pathanapuram', 0), (659, 690567, 'Patharam', 0), (660, 689695, 'Pathirickal', 0), (661, 691601, 'Pattamthuruth', 0), (662, 691021, 'Pattathanam', 0), (663, 691552, 'Pattazhy', 0), (664, 691524, 'Pavithreswaram', 0), (665, 690574, 'Pavumba', 0), (666, 691601, 'Perinad', 0), (667, 691545, 'Perumannur', 0), (668, 691566, 'Perumkulam', 0), (669, 691601, 'Perumon', 0), (670, 691504, 'Perumpuzha', 0), (671, 690538, 'Perungalam', 0), (672, 691500, 'Peruvelikara', 0), (673, 691625, 'Pidavoor', 0), (674, 689696, 'Piravanthur', 0), (675, 691331, 'Placherry', 0), (676, 691531, 'Plappally', 0), (677, 691532, 'Podiyattuvila', 0), (678, 691334, 'Polachira', 0), (679, 691583, 'Ponmana', 0), (680, 689695, 'Poonkulanji', 0), (681, 691537, 'Pooyapally', 0), (682, 691534, 'Poredom', 0), (683, 690520, 'Poruvazhy', 0), (684, 691301, 'Pozhikkara', 0), (685, 691602, 'Prakkulam', 0), (686, 690547, 'Prayar', 0), (687, 691531, 'Pulamon', 0), (688, 691536, 'Pulippara Jn', 0), (689, 691304, 'Pullichira', 0), (690, 691536, 'Pullupana', 0), (691, 691305, 'Punalur', 0), (692, 691332, 'Punalur Paper mills', 0), (693, 689706, 'Punnala', 0), (694, 691553, 'Puthenambalam', 0), (695, 691302, 'Puthenkulam', 0), (696, 691588, 'Puthenthura', 0), (697, 691585, 'Puthukkadukara', 0), (698, 691507, 'Puthoor', 1), (699, 691309, 'Rosemala', 0), (700, 690539, 'S R p market', 0), (701, 690573, 'S V market', 0), (702, 691550, 'Sadanandapuram', 0), (703, 691581, 'Sakthikulangara', 0), (704, 691310, 'Samnagar', 0), (705, 690521, 'Sasthamcottah', 0), (706, 691305, 'Shaliacarry Estate', 0), (707, 690522, 'Sooranad', 0), (708, 690561, 'Sooranad North', 0), (709, 691005, 'T K m college', 0), (710, 691306, 'Thadicaud', 0), (711, 691546, 'Thalachira', 0), (712, 691514, 'Thalavoor', 0), (713, 691560, 'Thamarakudy', 0), (714, 691007, 'Thangasserry', 0), (715, 690547, 'Thattakkattu Market', 0), (716, 691020, 'Thattamala', 0), (717, 691005, 'Thattarkonam', 0), (718, 690523, 'Thazhava', 0), (719, 691016, 'Thekkevila', 0), (720, 691016, 'Thekkumbhagom', 0), (721, 691308, 'Thenmala', 0), (722, 690524, 'Thevalakkara', 0), (723, 691507, 'Thevalappuram', 0), (724, 691009, 'Thevally', 0), (725, 691530, 'Thevannur', 0), (726, 691310, 'Thingalkarikom', 0), (727, 691012, 'Thirumullavaram', 0), (728, 690568, 'Thodiyur', 0), (729, 690523, 'Thodiyur North', 0), (730, 691333, 'Tholicode', 0), (731, 690519, 'Thottumugham', 0), (732, 691509, 'Thrioppilazhikom', 0), (733, 691536, 'Thudayannur', 0), (734, 690540, 'Thuruthikara', 0), (735, 691019, 'Uliyakovil', 0), (736, 691589, 'Umayanallur I e', 0), (737, 691547, 'Ummannur', 0), (738, 691329, 'Urukunnu', 0), (739, 691010, 'Vadakkevila', 0), (740, 691584, 'Vadakkumbhagom', 0), (741, 690536, 'Vadakkumthala East', 0), (742, 691306, 'Vadamon', 0), (743, 691509, 'Vakkanad', 0), (744, 691331, 'Valacode', 0), (745, 691532, 'Valakom', 0), (746, 691018, 'Valathungal', 0), (747, 691559, 'Valavupacha', 0), (748, 691520, 'Valiyode', 0), (749, 690528, 'Varavila', 0), (750, 691536, 'Vattathamara', 0), (751, 690528, 'Vavvakkavu', 0), (752, 691548, 'Vayakkal', 0), (753, 691306, 'Vayala-anchal', 0), (754, 691530, 'Vayyanam', 0), (755, 691574, 'Velamannoor', 0), (756, 691573, 'Velichikala', 0), (757, 691540, 'Veliyam', 0), (758, 691540, 'Veliyam West', 0), (759, 691511, 'Vellimon', 0), (760, 691511, 'Vellimon West', 0), (761, 691333, 'Venchembu', 0), (762, 691507, 'Vendar', 0), (763, 690569, 'Venga', 0), (764, 691530, 'Vengoor', 0), (765, 691541, 'Venkolla', 0), (766, 691309, 'Venture', 0), (767, 691538, 'Vettikavala', 0), (768, 689696, 'Vettithitta', 0), (769, 691312, 'Vilakkupara', 0), (770, 691305, 'Vilakkuvattom', 0), (771, 691508, 'Vilakudy', 0), (772, 690521, 'Vilanthara Jn', 0), (773, 691578, 'Vilavoorkonam', 0), (774, 691310, 'Villumala', 0), (775, 691500, 'West Kallada', 0), (776, 686582, 'Adivaram', 0), (777, 686580, 'Adukkam', 0), (778, 686143, 'Akkarapadom', 0), (779, 686651, 'Alanad', 0), (780, 686101, 'Alapra', 0), (781, 686036, 'Amalagiri', 0), (782, 686576, 'Amanakara', 0), (783, 686546, 'Amara', 0), (784, 686025, 'Amayannur', 0), (785, 686144, 'Ambika Market', 0), (786, 686578, 'Ampara Nirappel', 0), (787, 686508, 'Anakkal', 0), (788, 686503, 'Anikad', 0), (789, 686503, 'Anikad East', 0), (790, 686503, 'Anikad West', 0), (791, 686579, 'Anjoottimangalam', 0), (792, 686651, 'Anthinad', 0), (793, 686501, 'Areeparampu', 0), (794, 686008, 'Arpookara East', 0), (795, 686568, 'Arumanur', 0), (796, 686574, 'Arunapuram', 0), (797, 686604, 'Arunoottimangalam', 0), (798, 686503, 'Aruvikuzhy', 0), (799, 686122, 'Aruvithura', 0), (800, 686562, 'Athirampuzha', 0), (801, 686613, 'Ayamkudy', 0), (802, 686564, 'Ayarkunnam', 0), (803, 686015, 'Aymanam', 0), (804, 686142, 'Ayyarkulangara', 0), (805, 686578, 'Bharananganam', 0), (806, 686614, 'Brahmamangalam', 0), (807, 686574, 'Chakkampuzha', 0), (808, 686517, 'Chakompathal', 0), (809, 686603, 'Chamakala', 0), (810, 686540, 'Champakara', 0), (811, 686101, 'Changanacherry', 0), (812, 686101, 'Changanacherry College', 0), (813, 686106, 'Changanacherry Industrialnagar', 0), (814, 686101, 'Changanacherry Market', 0), (815, 686533, 'Channanikadu', 0), (816, 686563, 'Cheepunkal', 0), (817, 686106, 'Cheeranchira', 0), (818, 686540, 'Chelacompu', 0), (819, 686508, 'Chemmalamattom', 0), (820, 686606, 'Chemmanathukara', 0), (821, 686584, 'Chempilavu', 0), (822, 686615, 'Chempu', 0), (823, 686520, 'Chenappady', 0), (824, 686585, 'Chengalam', 0), (825, 686022, 'Chengalam South', 0), (826, 686581, 'Chennad', 0), (827, 686506, 'Chennakunnu', 0), (828, 686584, 'Cherpunkal', 1), (829, 686543, 'Cheruvally', 0), (830, 686508, 'Chettuthode', 0), (831, 686531, 'Chingavanam', 0), (832, 686520, 'Chirakadavu', 0), (833, 686519, 'Chirakadavu Centre', 0), (834, 686520, 'Chirakadavu East', 0), (835, 686512, 'Chittadi', 0), (836, 686582, 'Cholathadom', 0), (837, 686579, 'Choondacherry', 0), (838, 686586, 'Chovvur', 0), (839, 686555, 'Devagiri', 0), (840, 686038, 'Devalokam', 0), (841, 686510, 'Edakadathy', 0), (842, 686512, 'Edakkunnam', 0), (843, 686652, 'Edamaruku', 0), (844, 686574, 'Edanad', 0), (845, 686578, 'Edappady', 0), (846, 686605, 'Edavattom', 0), (847, 686541, 'Edayarickapuzha', 0), (848, 686587, 'Elakad', 0), (849, 686514, 'Elamkadu', 0), (850, 686503, 'Elampally', 0), (851, 686577, 'Elikulam', 0), (852, 686608, 'Enadi', 0), (853, 686543, 'Erathuvadakara', 0), (854, 686121, 'Erattupetta', 0), (855, 686613, 'Eravimangalam', 0), (856, 686011, 'Eravinalloor', 0), (857, 686539, 'Eravuchira', 0), (858, 686586, 'Erumapramattom', 0), (859, 686509, 'Erumely', 0), (860, 686631, 'Ettumanur', 0), (861, 686631, 'Ettumanur Junction', 0), (862, 686651, 'Ezhacherry', 0), (863, 686613, 'Ezhumanthuruth', 0), (864, 686102, 'Fathimapuram', 0), (865, 686008, 'Gandhi Nagar', 0), (866, 686588, 'Idamattom', 0), (867, 686576, 'Idiyanal', 0), (868, 686512, 'Inchiyani', 0), (869, 686605, 'Irumpayam', 0), (870, 686535, 'Ithithanam', 0), (871, 686653, 'Kadanad Meenachil', 0), (872, 686571, 'Kadaplamattom', 0), (873, 686574, 'Kadappattoor', 0), (874, 686550, 'Kadayanickad', 0), (875, 686604, 'Kaduthuruthy', 0), (876, 686582, 'Kaipally', 0), (877, 686602, 'Kaipuzha', 0), (878, 686508, 'Kalaketty', 0), (879, 686632, 'Kalathoor', 0), (880, 686579, 'Kalathukadavu', 0), (881, 686611, 'Kallara', 0), (882, 686611, 'Kallara South', 0), (883, 686503, 'Kalloorkulam', 0), (884, 686509, 'Kanakapalam', 0), (885, 686632, 'Kanakari', 0), (886, 686515, 'Kanam', 0), (887, 686510, 'Kanamala', 0), (888, 686541, 'Kangazha', 0), (889, 686030, 'Kanjiram', 0), (890, 686585, 'Kanjiramattom', 0), (891, 686507, 'Kanjirapally', 0), (892, 686506, 'Kanjirapally West', 0), (893, 686555, 'Kanjirappara', 0), (894, 686603, 'Kanjirathanam', 0), (895, 686509, 'Kannimala', 0), (896, 686508, 'Kappadu', 0), (897, 686613, 'Kappumthala', 0), (898, 686101, 'Karikkattoor', 0), (899, 686101, 'Karikkattoor Centre', 0), (900, 686610, 'Karikode', 0), (901, 686564, 'Karimpani', 0), (902, 686513, 'Karinilam', 0), (903, 686605, 'Karipadom', 0), (904, 686540, 'Karukachal', 0), (905, 686572, 'Kattachira', 0), (906, 686612, 'Kattampack', 0), (907, 686519, 'Kavumbhagom', 0), (908, 686651, 'Kayyoor', 0), (909, 686605, 'Keezhoor', 0), (910, 686584, 'Kezhuvankulam', 0), (911, 686572, 'Kidangoor', 0), (912, 686583, 'Kidangoor South', 0), (913, 686020, 'Kiliroor North', 0), (914, 686652, 'Kizhakkenmattom', 0), (915, 686578, 'Kizhaparayar', 0), (916, 686574, 'Kizhathadiyur', 0), (917, 686576, 'Kizhathiri', 0), (918, 686651, 'Kodumpidi', 0), (919, 686029, 'Kollad', 0), (920, 686564, 'Kongandoor', 0), (921, 686652, 'Konipad', 0), (922, 686576, 'Koodapalam', 0), (923, 686522, 'Koorali', 0), (924, 686502, 'Kooropada', 0), (925, 686540, 'Koothrappally', 0), (926, 686514, 'Koottickal', 0), (927, 686518, 'Koovapally', 0), (928, 686513, 'Koruthode', 0), (929, 686502, 'Kothala', 0), (930, 686632, 'Kothanallur', 0), (931, 686607, 'Kothavara', 0), (932, 686631, 'Kottakkapuram', 0), (933, 686105, 'Kottamuri', 0), (934, 686001, 'Kottayam', 0), (935, 686002, 'Kottayam Collectorate', 0), (936, 686001, 'Kottayam North', 0), (937, 686039, 'Kottayam South', 0), (938, 686003, 'Kottayam West', 0), (939, 686640, 'Kozha', 0), (940, 686523, 'Kozhuvanal', 0), (941, 686635, 'Kudakkachira', 0), (942, 686595, 'Kudalloor', 0), (943, 686017, 'Kudamaloor', 0), (944, 686144, 'Kudavechoor', 0), (945, 686608, 'Kulasekharamangalam', 0), (946, 686541, 'Kulathoorprayar', 0), (947, 686563, 'Kumarakom', 0), (948, 686563, 'Kumarakom East', 0), (949, 686566, 'Kumarakom North', 0), (950, 686563, 'Kumarakom South', 0), (951, 686016, 'Kumaranalloor', 0), (952, 686035, 'Kummanam', 0), (953, 686572, 'Kummannoor', 0), (954, 686582, 'Kunnam', 0), (955, 686632, 'Kuravilangadu', 0), (956, 686636, 'Kurianad', 0), (957, 686634, 'Kurichithanam', 0), (958, 686549, 'Kurichy', 0), (959, 686576, 'Kurinji', 0), (960, 686104, 'Kurisummoodu', 0), (961, 686651, 'Kurumannu', 0), (962, 686536, 'Kurumpanadom', 0), (963, 686632, 'Kurumulloor', 0), (964, 686603, 'Kuruppamthara', 0), (965, 686509, 'Kuruvammoozhy', 0), (966, 686533, 'Kuzhimattom', 0), (967, 686502, 'Lakkattoor', 0), (968, 686546, 'Madappally', 0), (969, 686513, 'Madukka', 0), (970, 686577, 'Madukkakunuu', 0), (971, 686552, 'Malakunnam', 0), (972, 686019, 'Malam', 0), (973, 686577, 'Mallikasery', 0), (974, 686041, 'Malloossery', 0), (975, 686553, 'Mammoodu', 0), (976, 686503, 'Manalunkal', 0), (977, 686019, 'Manarcaudu', 0), (978, 686018, 'Manganam', 0), (979, 686543, 'Manimala', 0), (980, 686603, 'Manjoor', 0), (981, 686603, 'Manjoor South', 0), (982, 686632, 'Mannackanad', 0), (983, 686561, 'Mannanam', 0), (984, 686506, 'Mannarakayam', 0), (985, 686542, 'Manthuruthy', 0), (986, 686635, 'Marangattupally', 0), (987, 686612, 'Marangoli', 0), (988, 686608, 'Maravanthuruthu', 0), (989, 686023, 'Mariappally', 0), (990, 686027, 'Mariathuruthu', 0), (991, 686652, 'Mary Land', 0), (992, 686564, 'Mattakkara', 0), (993, 686651, 'Mattathipara', 0), (994, 686586, 'Mechal', 0), (995, 686576, 'Mediri', 0), (996, 686589, 'Meenachil', 0), (997, 686516, 'Meenadom', 0), (998, 686594, 'Melampara', 0), (999, 686652, 'Melukavu', 0), (1000, 686652, 'Melukavumattom', 0), (1001, 686617, 'Memuri', 0), (1002, 686620, 'Mevada', 0), (1003, 686609, 'Mevelloor', 0), (1004, 686605, 'Midayikunnu', 0), (1005, 686636, 'Monippally', 0), (1006, 686026, 'Moolavattom', 0), (1007, 686586, 'Moonnilavu', 0), (1008, 686601, 'Moozhikulangara', 0), (1009, 686503, 'Moozhoor', 0), (1010, 686101, 'Mukkada', 0), (1011, 686510, 'Mukkoottuthara', 0), (1012, 686610, 'Mulakulam South', 0), (1013, 686513, 'Mundakayam', 0), (1014, 686574, 'Mundankal', 0), (1015, 686541, 'Mundathanam', 0), (1016, 686597, 'Mutholi', 0), (1017, 686004, 'Muttambalam', 0), (1018, 686510, 'Muttappally', 0), (1019, 686613, 'Muttuchira', 0), (1020, 686124, 'Nadackal', 0), (1021, 686548, 'Nalukody', 0), (1022, 686538, 'Nalunnackal', 0), (1023, 686579, 'Nariayanganam', 0), (1024, 686506, 'Nariyanani', 0), (1025, 686013, 'Nattakom', 0), (1026, 686006, 'Nattassery S h mount', 0), (1027, 686632, 'Nazreth Hill', 0), (1028, 686574, 'Nechipuzhoor', 0), (1029, 686542, 'Nedumanny', 0), (1030, 686542, 'Nedumkunnam', 0), (1031, 686545, 'Nedungadappally', 0), (1032, 686651, 'Neeloor', 0), (1033, 686601, 'Neendoor', 0), (1034, 686564, 'Neerikkad', 0), (1035, 686616, 'Newsprint Nagar', 0), (1036, 686577, 'Njandupara', 0), (1037, 686612, 'Njizhoor', 0), (1038, 686014, 'Olessa', 0), (1039, 686602, 'Onamthuruthu', 0), (1040, 686634, 'Ozhavur', 0), (1041, 686634, 'Ozhavur East', 0), (1042, 686146, 'Padinjarekkara', 0), (1043, 686571, 'Padinjattinkara', 0), (1044, 686564, 'Paduva', 0), (1045, 686642, 'Pakalomattom', 0), (1046, 686012, 'Pakkil', 0), (1047, 686575, 'Pala Town', 0), (1048, 686575, 'Palai', 0), (1049, 686575, 'Palai Market junction', 0), (1050, 686635, 'Palakkattumala', 0), (1051, 686518, 'Palampra', 0), (1052, 686537, 'Pallickachirakavala', 0), (1053, 686606, 'Pallippurathussery', 0), (1054, 686007, 'Pallom', 0), (1055, 686502, 'Pampady', 0), (1056, 686521, 'Pampady South', 0), (1057, 686510, 'Pampavally North', 0), (1058, 686518, 'Panachepally', 0), (1059, 686102, 'Panachikavu', 0), (1060, 686522, 'Panamattom', 0), (1061, 686502, 'Pangada', 0), (1062, 686032, 'Parampuzha', 0), (1063, 686514, 'Parathanam', 0), (1064, 686512, 'Parathode', 0), (1065, 686024, 'Parippu', 0), (1066, 686021, 'Pariyaram', 0), (1067, 686600, 'Pathampuzha', 0), (1068, 686532, 'Pathamuttom', 0), (1069, 686631, 'Pattithanam', 0), (1070, 686034, 'Payyappady', 0), (1071, 686651, 'Payyappar', 0), (1072, 686520, 'Pazhayidom', 0), (1073, 686582, 'Peringalam', 0), (1074, 686637, 'Peroor', 0), (1075, 686016, 'Perumbaikkad', 0), (1076, 686536, 'Perumpanachy', 0), (1077, 686611, 'Perumthuruth', 0), (1078, 686102, 'Perunna', 0), (1079, 686610, 'Peruva', 0), (1080, 686636, 'Pious Mount', 0), (1081, 686655, 'Pizhaku', 0), (1082, 686579, 'Plassanal', 0), (1083, 686574, 'Ponand-karur', 0), (1084, 686538, 'Ponganthanam', 0), (1085, 686506, 'Ponkunnam', 0), (1086, 686506, 'Ponkunnam Court', 0), (1087, 686101, 'Ponthenpuzha', 0), (1088, 686581, 'Poonjar', 0), (1089, 686582, 'Poonjar Thekkekara', 0), (1090, 686521, 'Poothakuzhy', 0), (1091, 686577, 'Poovarani', 0), (1092, 686578, 'Poovathode', 0), (1093, 686101, 'Poovatholi', 0), (1094, 686604, 'Poozhikole', 0), (1095, 686502, 'Pothenpuram', 0), (1096, 686651, 'Pravithanam', 0), (1097, 686560, 'Priyadarsini Hills', 0), (1098, 686509, 'Prpose', 0), (1099, 686515, 'Pulickakavala', 0), (1100, 686101, 'Pulikkallu', 0), (1101, 686015, 'Pulikkuttissery', 0), (1102, 686573, 'Puliyannoor', 0), (1103, 686513, 'Punchavayal', 0), (1104, 686583, 'Punnathura', 0), (1105, 686631, 'Punnathura West', 0), (1106, 686538, 'Puthenchantha', 0), (1107, 686011, 'Puthupalli', 0), (1108, 686641, 'Puthuvely', 0), (1109, 686513, 'Rajendraprasad Colony', 0), (1110, 686591, 'Ramapuram', 0), (1111, 686576, 'Ramapuram Bazar', 0), (1112, 686009, 'Rubber Board', 0), (1113, 686103, 'Ruby Nagar', 0), (1114, 686532, 'Sachivothamapuram', 0), (1115, 686545, 'Santhipuram', 0), (1116, 686562, 'Sreekantamangalam', 0), (1117, 686502, 'Suryanarayana Puram', 0), (1118, 686580, 'Teekoy', 0), (1119, 686580, 'Thalanad', 0), (1120, 686607, 'Thalayazham', 0), (1121, 686605, 'Thalayolaparambu', 0), (1122, 686514, 'Thalumkal', 0), (1123, 686506, 'Thampalakkad', 0), (1124, 686005, 'Thazhathangady', 0), (1125, 686541, 'Thazhathuvadakara', 0), (1126, 686505, 'Theerthapadapuram', 0), (1127, 686519, 'Thekkethukavala', 0), (1128, 686016, 'Thellakom', 0), (1129, 686123, 'Thidanad', 0), (1130, 686606, 'Thirumani Venkita puram', 0), (1131, 686001, 'Thirunakkara', 0), (1132, 686037, 'Thiruvanchoor', 0), (1133, 686612, 'Thiruvanpady', 0), (1134, 686033, 'Thiruvarppu', 0), (1135, 686573, 'Thodanal', 0), (1136, 686539, 'Thottackad West', 0), (1137, 686539, 'Thottakadu', 0), (1138, 686145, 'Thottakom', 0), (1139, 686105, 'Thrickodithanam', 0), (1140, 686011, 'Thrikothamangalam', 0), (1141, 686535, 'Thuruthy', 0), (1142, 686143, 'Udayanapuram', 0), (1143, 686651, 'Ullanad', 0), (1144, 686539, 'Umbidi', 0), (1145, 686512, 'Urakkanadu', 0), (1146, 686605, 'Vadakara - thalayolaparabu', 0), (1147, 686612, 'Vadakkenirappu', 0), (1148, 686010, 'Vadavathoor', 0), (1149, 686605, 'Vadayar', 0), (1150, 686142, 'Vaikaprayar', 0), (1151, 686141, 'Vaikom', 0), (1152, 686142, 'Vaikom Thekkenada', 0), (1153, 686636, 'Vakad', 0), (1154, 686538, 'Vakathanam', 0), (1155, 686538, 'Vakathanam South', 0), (1156, 686635, 'Valavoor', 0), (1157, 686592, 'Vallichira', 0), (1158, 686508, 'Vanchimala', 0), (1159, 686516, 'Vattakunnu', 0), (1160, 686596, 'Vattukulam', 0), (1161, 686587, 'Vayala', 0), (1162, 686103, 'Vazhappally West', 0), (1163, 686504, 'Vazhoor', 0), (1164, 686504, 'Vazhoor East', 0), (1165, 686144, 'Vechoor', 0), (1166, 686514, 'Velanilam', 0), (1167, 686580, 'Velathusseri', 0), (1168, 686638, 'Veliyannoor', 0), (1169, 686541, 'Vellavoor', 0), (1170, 686574, 'Velliappally', 0), (1171, 686580, 'Vellikulam', 0), (1172, 686501, 'Velloor', 0), (1173, 686003, 'Veloor', 0), (1174, 686632, 'Vempally', 0), (1175, 686512, 'Vengathanam', 0), (1176, 686510, 'Venkurinji', 0), (1177, 686104, 'Veroor', 0), (1178, 686631, 'Vettimukal', 0), (1179, 686008, 'Villoonni', 0), (1180, 686518, 'Vizhikithode', 0), (1181, 686514, 'Yendayar', 0), (1182, 629153, 'Adaikkakuzhi', 0), (1183, 629701, 'Agasteeswaram', 0), (1184, 629167, 'Alagiamandapam', 1), (1185, 629170, 'Alampara', 0), (1186, 629159, 'Alanchi', 0), (1187, 629101, 'Alancholai', 0), (1188, 629802, 'Alancode', 0), (1189, 629801, 'Aloor', 0), (1190, 629204, 'Ammandivilai', 0), (1191, 629201, 'Anandanadarkudy', 0), (1192, 629851, 'Andirapuram', 0), (1193, 629168, 'Anducode', 0), (1194, 629401, 'Anjugramam', 0), (1195, 629301, 'Aralvaymoli', 0), (1196, 629101, 'Arukani', 0), (1197, 629151, 'Arumanai', 0), (1198, 629851, 'Arumanallur', 0), (1199, 629177, 'Aruvikkarai', 0), (1200, 629201, 'Asaripallam', 0), (1201, 629704, 'Asiramam', 0), (1202, 629191, 'Attur', 0), (1203, 629252, 'Azhakamparai', 0), (1204, 629401, 'Azhakappapuram', 0), (1205, 629851, 'Azhakiapandipuram', 0), (1206, 629202, 'Azhikkal', 0), (1207, 629803, 'Bethelpuram', 0), (1208, 629852, 'Bhoothapandy', 0), (1209, 629001, 'Catherin Booth hospital', 0), (1210, 629153, 'Chathancode', 0), (1211, 629166, 'Chemparuthivilai', 0), (1212, 629804, 'Chemponvilai', 0), (1213, 629304, 'Chenbagaramanputhur', 0), (1214, 629177, 'Chenkody', 0), (1215, 629161, 'Cherupallur', 0), (1216, 629152, 'Cheruvallur', 0), (1217, 629151, 'Chitharal', 0), (1218, 629161, 'Chittardam Colony', 0), (1219, 629807, 'Chunkankadai', 0), (1220, 629251, 'Colachel', 1), (1221, 629251, 'Colachel Port', 0), (1222, 629851, 'Derisanamcope', 0), (1223, 629704, 'Devakulam', 0), (1224, 629501, 'Eathamozhi', 0), (1225, 629051, 'Edalakudy', 0), (1226, 629171, 'Elavuvilai', 0), (1227, 629193, 'Enayam', 0), (1228, 629193, 'Enayamputhenthurai', 0), (1229, 629902, 'Erachakulam', 0), (1230, 629158, 'Eravipudurkadai', 0), (1231, 629402, 'Eraviputhur', 0), (1232, 629004, 'Erumbukadu', 0), (1233, 629160, 'Fathima Nagar', 0), (1234, 629203, 'Friday Market', 0), (1235, 629502, 'Ganapathipuram', 0), (1236, 629165, 'Gnaramvilai', 0), (1237, 629152, 'Idaikkode', 0), (1238, 629152, 'Ilanchirai', 0), (1239, 629197, 'Irenipuram', 0), (1240, 629002, 'Irulappapuram', 0), (1241, 629852, 'Isanthimangalam', 0), (1242, 629504, 'James Town', 0), (1243, 629253, 'Kadiyapattanam', 0), (1244, 629855, 'Kadukkarai', 0), (1245, 629153, 'Kaliakkavilai', 1), (1246, 629101, 'Kaliyal', 0), (1247, 629166, 'Kallankuzhi', 0), (1248, 629808, 'Kallukoottam', 0), (1249, 629204, 'Kalpadi', 0), (1250, 629810, 'Kandanvilai', 0), (1251, 629003, 'Kaniyakulam', 0), (1252, 629154, 'Kanjampuram', 0), (1253, 629169, 'Kanjikuzhi', 0), (1254, 629155, 'Kanjiracode', 0), (1255, 629158, 'Kannanore', 0), (1256, 629802, 'Kannattuvilai', 0), (1257, 629702, 'Kanniyakumari', 0), (1258, 629170, 'Kannumamoodu', 1), (1259, 629156, 'Kappiyarai', 0), (1260, 629162, 'Kappukadu', 0), (1261, 629809, 'Karankad', 0), (1262, 629157, 'Karinkal', 1), (1263, 629151, 'Karod', 0), (1264, 629158, 'Kattathurai', 0), (1265, 629806, 'Kattimancode', 0), (1266, 629854, 'Keeriparai', 0), (1267, 629193, 'Keezhkulam', 0), (1268, 629174, 'Keralapuram', 0), (1269, 629501, 'Kesavanputhenthurai', 0), (1270, 629187, 'Killiyoor', 0), (1271, 629181, 'Kirathur', 0), (1272, 629102, 'Kodayarkilthangal', 0), (1273, 629251, 'Kodimunai', 0), (1274, 629160, 'Kollangodu', 0), (1275, 629803, 'Konamkadu', 0), (1276, 629002, 'Kottar', 0), (1277, 629703, 'Kottaram', 0), (1278, 629702, 'Kovalam', 0), (1279, 629167, 'Kozhiporvilai', 0), (1280, 629001, 'Krishnancoil', 0), (1281, 629153, 'Kulapuram', 0), (1282, 629161, 'Kulasekharam', 1), (1283, 629403, 'Kulasekharapuram', 0), (1284, 629180, 'Kumaracoil', 0), (1285, 629301, 'Kumarapuram', 0), (1286, 629402, 'Kumarapuramthoppur', 0), (1287, 629251, 'Kurumpanai', 0), (1288, 629805, 'Kurunthencode', 0), (1289, 629167, 'Kuzhicode', 0), (1290, 629163, 'Kuzhithurai', 1), (1291, 629163, 'Kuzhithurai West', 0), (1292, 629702, 'Leepuram', 0), (1293, 629802, 'Lekshmipuram', 0), (1294, 629180, 'Madathattuvilai', 0), (1295, 629302, 'Madavalayam', 0), (1296, 629163, 'Madichel', 0), (1297, 629702, 'Mahadanapuram', 0), (1298, 629152, 'Malamary', 0), (1299, 629153, 'Malayadi', 0), (1300, 629180, 'Manakarai', 0), (1301, 629164, 'Manalikarai', 0), (1302, 629161, 'Manalodai', 0), (1303, 629252, 'Manavalakurichi', 0), (1304, 629152, 'Mancode', 0), (1305, 629178, 'Mangalakunnu', 0), (1306, 629157, 'Mangarai', 0), (1307, 629501, 'Mangavilai', 0), (1308, 629161, 'Maniankuzhi', 0), (1309, 629170, 'Manivilai', 0), (1310, 629151, 'Manjalumoodu', 0), (1311, 629851, 'Maramalai', 0), (1312, 629002, 'Maravankudiyiruppu', 0), (1313, 629165, 'Marthandam', 1), (1314, 629165, 'Marthandam Bridge', 0), (1315, 629165, 'Marthandam North', 0), (1316, 629160, 'Marthandamthurai', 0), (1317, 629402, 'Marungoor', 0), (1318, 629101, 'Maruthemparai', 0), (1319, 629163, 'Maruthencode', 0), (1320, 629158, 'Maruthurkurichi', 0), (1321, 629852, 'Mathiasnagar', 0), (1322, 629403, 'Mayiladi', 0), (1323, 629153, 'Meenachel', 0), (1324, 629166, 'Mekkamandapam', 0), (1325, 629804, 'Mekkode', 0), (1326, 629601, 'Melakrishnanputhur', 0), (1327, 629602, 'Melamanakudy', 0), (1328, 629152, 'Meppala', 0), (1329, 629172, 'Methukummal', 0), (1330, 629175, 'Mettukadai', 0), (1331, 629252, 'Mondaikad', 0), (1332, 629501, 'Monikettipottal', 0), (1333, 629177, 'Moovattumugham', 0), (1334, 629164, 'Mukkampala', 0), (1335, 629175, 'Mulachel', 0), (1336, 629167, 'Mulagumoodu', 0), (1337, 629162, 'Mulankuzhi', 0), (1338, 629157, 'Mullanginavilai', 0), (1339, 629171, 'Munchirai', 0), (1340, 629202, 'Muttom', 0), (1341, 629001, 'Nagercoil', 1), (1342, 629001, 'Nagercoil Bazaar', 0), (1343, 629001, 'Nagercoil Collectorate', 0), (1344, 629004, 'Nagercoil Industrial estate', 0), (1345, 629001, 'Nagercoil Town', 0), (1346, 629001, 'Nagercoil West', 0), (1347, 629704, 'Nallur', 0), (1348, 629165, 'Nallur-marthandam', 0), (1349, 629195, 'Nattalam', 0), (1350, 629001, 'Nesamony Nagar', 0), (1351, 629101, 'Netta', 0), (1352, 629802, 'Neyyoor', 0), (1353, 629803, 'Neyyoor West', 0), (1354, 629154, 'Nithiravilai', 1), (1355, 629501, 'North Soorankudy', 0), (1356, 629001, 'Oluganacheri', 0), (1357, 629168, 'Pacode', 0), (1358, 629194, 'Padanthalumoodu', 1), (1359, 629175, 'Padmanabhapuram Fort', 0), (1360, 629188, 'Painkulam', 0), (1361, 629159, 'Palapalam', 0), (1362, 629160, 'Palavilai', 0), (1363, 629851, 'Palkulam', 0), (1364, 629601, 'Pallam', 0), (1365, 629169, 'Palliyadi', 0), (1366, 629170, 'Palukal', 0), (1367, 629601, 'Parakkai', 0), (1368, 629003, 'Parvathipuram', 1), (1369, 629101, 'Pathukani', 0), (1370, 629501, 'Pazhavilai', 0), (1371, 629161, 'Pechchipparai', 0), (1372, 629003, 'Peruvilai', 0), (1373, 629809, 'Peyankuzhi', 0), (1374, 629161, 'Ponmanai', 0), (1375, 629176, 'Poothurai', 0), (1376, 629703, 'Potraiyadi', 0), (1377, 629401, 'Pottakulam', 0), (1378, 629157, 'Pottetty', 0), (1379, 629501, 'Pozhikkarai', 0), (1380, 629171, 'Puthukadai', 1), (1381, 629175, 'Puliyurkurichi', 0), (1382, 629602, 'Puthalam', 0), (1383, 629501, 'Puthenthurai', 0), (1384, 629001, 'Putheri', 0), (1385, 629502, 'Rajakkamangalam', 0), (1386, 629501, 'Rajakkamangalamthurai', 0), (1387, 629193, 'Ramanthurai', 0), (1388, 629303, 'Ramapuram', 0), (1389, 629152, 'Ramavarmanchirai', 0), (1390, 629851, 'Ratnapuram', 0), (1391, 629159, 'Ritapuram', 0), (1392, 629172, 'S.T.mankad', 0), (1393, 629159, 'Sahayanagar', 0), (1394, 629703, 'Santhaiyadi', 0), (1395, 629201, 'Santhapuram', 0), (1396, 629203, 'Saral Agasteeswaram', 0), (1397, 629704, 'Sasthankcoilvilai', 0), (1398, 629190, 'Sooriacode', 0), (1399, 629501, 'South Soorankudy', 0), (1400, 629704, 'Suchindrum', 0), (1401, 629704, 'Terur', 0), (1402, 629851, 'Thadikarankonam', 0), (1403, 629802, 'Thalakulam', 0), (1404, 629707, 'Thamaraikulam', 0), (1405, 629901, 'Thazhakudy', 0), (1406, 629603, 'Thengamputhur', 0), (1407, 629173, 'Thengapattanam', 0), (1408, 629708, 'Therku Thamaraikulam', 0), (1409, 629157, 'Theruvukadai', 0), (1410, 629804, 'Thickanamcode', 0), (1411, 629168, 'Thickurichy', 0), (1412, 629901, 'Thirupathisaram', 0), (1413, 629163, 'Thiruthuvapuram', 0), (1414, 629183, 'Thiruvarambu', 0), (1415, 629174, 'Thiruvithancode', 0), (1416, 629157, 'Tholayavattai', 0), (1417, 629302, 'Thovalai', 0), (1418, 629175, 'Thuckalay', 1), (1419, 629161, 'Thumbode', 0), (1420, 629176, 'Thuthur', 0), (1421, 629161, 'Tiruparappu', 0), (1422, 629177, 'Tiruvattar', 0), (1423, 629852, 'Tittivilai', 0), (1424, 629178, 'Udayamarthandam', 0), (1425, 629179, 'Unnamalakada', 0), (1426, 629160, 'Urambu', 0), (1427, 629001, 'Vadasery', 0), (1428, 629001, 'Vadiveeswaram', 0), (1429, 629160, 'Vallavilai', 0), (1430, 629251, 'Vaniyakudi', 0), (1431, 629163, 'Vanniyur', 0), (1432, 629401, 'Variyoor', 0), (1433, 629704, 'Vazhukkamparai', 0), (1434, 629177, 'Veeyannur', 0), (1435, 629164, 'Velimalai', 0), (1436, 629152, 'Vellachiparai', 0), (1437, 629305, 'Vellamadam', 0), (1438, 629801, 'Vembanur', 0), (1439, 629171, 'Vencode', 0), (1440, 629161, 'Vendalicode', 0), (1441, 629166, 'Verkilambi', 0), (1442, 629003, 'Vetturnimadam', 0), (1443, 629180, 'Villukuri', 0), (1444, 629165, 'Viricode', 0), (1445, 629702, 'Vivekanandapuram', 0), (1446, 629173, 'Vizhunthaiyambalam', 0), (1447, 627113, 'A Thirumalapuram', 0), (1448, 627151, 'A. sathankulam', 0), (1449, 627117, 'Achampadu', 0), (1450, 627861, 'Achankuttam', 0), (1451, 627801, 'Achanpudur', 0), (1452, 627413, 'Adaichani', 0), (1453, 627808, 'Adaikalapttinam', 0), (1454, 627852, 'Agarakattu', 0), (1455, 627416, 'Agasthiarpatti', 0), (1456, 627421, 'Aladiyur', 0), (1457, 627652, 'Alagappapuram', 0), (1458, 627719, 'Alagapuri', 0), (1459, 627202, 'Alagiapandiapuram', 0), (1460, 627754, 'Alagunatchiapuram', 0), (1461, 627851, 'Alangulam', 1), (1462, 627851, 'Alangulam Bazaar', 0), (1463, 627756, 'Alkondarkulam', 0), (1464, 627354, 'Alwaneri', 0), (1465, 627412, 'Alwarkurichi', 0), (1466, 627354, 'Ambalam', 0), (1467, 627425, 'Ambalavanapuram', 0), (1468, 627401, 'Ambasamudram', 0), (1469, 627401, 'AmbasamudramAngadi', 0), (1470, 627401, 'AmbasamudramEast', 0), (1471, 627435, 'AmbasamudramP.Kudi', 0), (1472, 627651, 'Anaigudi', 0), (1473, 627654, 'Anaikarai', 0), (1474, 627859, 'Anaikulam', 0), (1475, 627423, 'AnainthaPerumalnadanur', 0), (1476, 627851, 'Andipatti', 0), (1477, 627851, 'Anjankattalai', 0), (1478, 627120, 'Anuvijay Township', 0), (1479, 627862, 'Ariyanayagipuram', 0), (1480, 627758, 'Ariyur', 0), (1481, 627757, 'Arugankulam', 0), (1482, 627760, 'Athuvazhi', 0), (1483, 627426, 'Attalanallur', 0), (1484, 627105, 'Avaraikulam', 0), (1485, 627431, 'Avudaiyanur', 0), (1486, 627418, 'Ayanthiruvaleeswaram', 0), (1487, 627852, 'Ayikudi', 0), (1488, 627814, 'Ayiraperi', 0), (1489, 627853, 'Ayyanarkulam', 0), (1490, 628502, 'Ayyaneri', 0), (1491, 627805, 'Ayyapuram', 0), (1492, 627358, 'Azhaganeri', 0), (1493, 627953, 'Balapadraramapuram', 0), (1494, 627108, 'Battarpuram', 0), (1495, 627751, 'Boganallur', 0), (1496, 627413, 'Brahmadesam', 0), (1497, 627859, 'Bungalowsurandai', 0), (1498, 627351, 'Burkitmanagaram', 0), (1499, 627719, 'Chatrapatti', 0), (1500, 627414, 'Cheranmahadevi', 0), (1501, 627414, 'Cheranmahadevi R.s', 0), (1502, 627754, 'Chiambarapuram', 0), (1503, 627111, 'Chidamabarapuram', 0), (1504, 627855, 'Chinthamani', 0), (1505, 628502, 'Chitrampatti', 0), (1506, 627765, 'Chockammpatti', 0), (1507, 627951, 'Chocknatchiapuram', 0), (1508, 627802, 'Courtallam', 0), (1509, 627802, 'Courtallam Bus stand', 0), (1510, 627101, 'Dalapathisamudram', 0), (1511, 627354, 'Deivanayagaperi', 0), (1512, 627502, 'Devanallur', 0), (1513, 627951, 'Devarkulam', 0), (1514, 627757, 'Devipattinam', 0), (1515, 627809, 'Dhamodarnagar', 0), (1516, 627102, 'Dohnavur', 0), (1517, 627112, 'Duraikudiyiruppu', 0), (1518, 627757, 'Duraisamypuram', 0), (1519, 627859, 'E.Meenakshipuram', 0), (1520, 627110, 'Elankulam', 0), (1521, 627803, 'Elathur', 0), (1522, 627108, 'Emankulam', 0), (1523, 627106, 'Erukkanthurai', 0), (1524, 627103, 'Eruvadi', 0), (1525, 627201, 'Ettankulam', 0), (1526, 627008, 'Gandhinagar', 0), (1527, 627352, 'Gangaikondan', 0), (1528, 627761, 'Gomathimuthupuram', 0), (1529, 627451, 'Gopalasamudram', 0), (1530, 627424, 'Govindaperi', 0), (1531, 627760, 'Gudalur', 0), (1532, 627814, 'Gunaramanallur', 0), (1533, 627426, 'Harikesavanallur', 0), (1534, 627857, 'Ichanda', 0), (1535, 627821, 'Idaikal', 0), (1536, 627804, 'Idaikal(tks)', 0), (1537, 627502, 'Idaiyankulam', 0), (1538, 627651, 'Idayangudi', 0), (1539, 627104, 'Idindakarai', 0), (1540, 627805, 'Ilanji', 1), (1541, 627713, 'Ilyarasanendal', 0), (1542, 627757, 'Inamlkoilpatti', 0), (1543, 627010, 'Industrial Colony pettai', 0), (1544, 627652, 'Ittamozhi', 0), (1545, 627114, 'Jacobpuram', 0), (1546, 627007, 'Jawahar Nagar ', 0), (1547, 627352, 'K Kailasapuram', 0), (1548, 627602, 'Kabaliparai', 0), (1549, 627814, 'Kadabokathi', 0), (1550, 627108, 'Kadamboduvalvu', 0), (1551, 627412, 'Kadana Anaithittam', 0), (1552, 627859, 'Kadayalurutti', 0), (1553, 627415, 'Kadayam', 0), (1554, 627751, 'Kadayanallur', 1), (1555, 627751, 'Kadayanallur Bazar', 0), (1556, 627751, 'Kadayanallur Pettai', 0), (1557, 627202, 'Kaduvetti', 0), (1558, 627001, 'Kailasapuram', 0), (1559, 627111, 'Kakkarai', 0), (1560, 627501, 'Kalakad', 0), (1561, 627201, 'Kalakudi', 0), (1562, 627109, 'Kalandapanai', 0), (1563, 627756, 'Kalappakulam', 0), (1564, 627851, 'Kalathimadam', 0), (1565, 627657, 'Kalikumarapuram', 0), (1566, 627724, 'Kalingapatti', 0), (1567, 627502, 'Kalladichidambarapuram', 0), (1568, 627416, 'Kallidaikurichi', 0), (1569, 627502, 'Kallikulam', 0), (1570, 627010, 'Kallur', 0), (1571, 627861, 'Kaluneerkulam', 0), (1572, 627751, 'Kambapacheri', 0), (1573, 627803, 'Kanakkupillaivalasai', 0), (1574, 627201, 'Kanarpatti', 0), (1575, 627108, 'Kannanallur', 0), (1576, 627127, 'Kannankulam', 0), (1577, 627659, 'Karaichuthupudur', 0), (1578, 627417, 'Karaikurichi', 0), (1579, 627357, 'Karaiyiruppu', 0), (1580, 627152, 'Karandaneri', 0), (1581, 627108, 'Karankadu', 0), (1582, 627807, 'Karisalkudiyiruppu', 0), (1583, 628552, 'Karisalkulam', 0), (1584, 627414, 'Karisalpatti', 0), (1585, 627753, 'Karisathan', 0), (1586, 627453, 'Karisulthamangalam', 0), (1587, 627753, 'Karivalamvandanallur', 0), (1588, 627813, 'Karkudi', 0), (1589, 627356, 'Karungulam', 0), (1590, 627151, 'Karuppukatti', 0), (1591, 627418, 'Karuthapillaiyur', 0), (1592, 627860, 'Karuvanda', 0), (1593, 627751, 'Kasidharmam', 0), (1594, 627802, 'Kasimajorpuram', 0), (1595, 627112, 'Kasthurirengapuram', 0), (1596, 627813, 'Kattalaikudiyiruppu', 0), (1597, 627201, 'Kattarankulam', 0), (1598, 627854, 'Kavaakurichi', 0), (1599, 627105, 'Kavalkinaru', 0), (1600, 627152, 'Keela Kaduvetty', 0), (1601, 627501, 'Keelakaruvelankulam', 0), (1602, 627351, 'Keelapattam', 0), (1603, 627854, 'Kidanganeri', 0), (1604, 627854, 'Kidarakulam', 0), (1605, 627418, 'Kila Ambur', 0), (1606, 627356, 'Kila Omanallur', 0), (1607, 627651, 'Kila Uvari', 0), (1608, 627860, 'Kilakalangal', 0), (1609, 627501, 'Kilakku Kalakad', 0), (1610, 627426, 'Kilakulam', 0), (1611, 627953, 'Kilanilithanallur', 0), (1612, 627852, 'Kilankadu', 0), (1613, 627806, 'Kilapavur', 0), (1614, 627862, 'Kilavirasigamani', 0), (1615, 627010, 'Kiramangalam', 0), (1616, 627353, 'Kizhanatham', 0), (1617, 627814, 'Kizhapuliyur', 0), (1618, 627117, 'Kizhavaneri', 0), (1619, 627010, 'Kodaganallur', 0), (1620, 627103, 'Kodaiseri', 0), (1621, 627416, 'Kodarankulam', 0), (1622, 627804, 'Kodikurichi', 0), (1623, 627352, 'Kodiyankulam', 0), (1624, 627007, 'Konganthanparai', 0), (1625, 627651, 'Kooduthalai', 0), (1626, 627651, 'Koottapanai', 0), (1627, 627427, 'Kothayarmel Thangal', 0), (1628, 627112, 'Kottai Karungulam', 0), (1629, 627416, 'Kottaitheru', 0), (1630, 627805, 'Kottakulam', 0), (1631, 627151, 'Kovaikulam', 0), (1632, 627107, 'Kovilammalpuram', 0), (1633, 627415, 'Koviloothu', 0), (1634, 627011, 'Krishnapuram', 0), (1635, 627759, 'Krishnapuram (tvl)', 0), (1636, 627106, 'Kudankulam', 0), (1637, 627713, 'Kulakkattakurichi', 0), (1638, 627862, 'Kulasekaramangalam', 0), (1639, 627806, 'Kulasekarapatti', 0), (1640, 627753, 'Kulasekaraperi', 0), (1641, 627002, 'Kulavanickerpuram', 0), (1642, 627859, 'Kulayaneri', 0), (1643, 627751, 'Kumanthapuram', 0), (1644, 627657, 'Kumarapuram', 0), (1645, 627355, 'Kundakulam', 0), (1646, 627417, 'Kuniyur', 0), (1647, 627006, 'Kunnathur', 0), (1648, 627860, 'Kurichanpatti', 0), (1649, 627719, 'Kurinjakulam', 0), (1650, 627657, 'Kurugapuram', 0), (1651, 627953, 'Kurukkalpatti', 0), (1652, 627853, 'Kuruvankottai', 0), (1653, 627754, 'Kuruvikulam', 0), (1654, 627851, 'Kuthapanjan', 0), (1655, 627104, 'Kuthenkuli', 0), (1656, 627803, 'Kuthukalvalasai', 0), (1657, 627651, 'Kuttam', 0), (1658, 627127, 'Kuttapuli', 0), (1659, 627753, 'Kuvalaikanni', 0), (1660, 627114, 'Leninjipuram', 0), (1661, 627201, 'Madavakurichi', 0), (1662, 627657, 'Mahadevankulam', 0), (1663, 627011, 'Maharajangar', 0), (1664, 627133, 'Mahendragiri', 0), (1665, 627713, 'Maipparai', 0), (1666, 627755, 'Malayadikurichi', 0), (1667, 627756, 'Manalur', 0), (1668, 627353, 'Manappadaiveedu', 0), (1669, 627751, 'Mangalapuram', 0), (1670, 627421, 'Manimuthar Project', 0), (1671, 627420, 'Manjolai', 0), (1672, 627413, 'Mannarkoil', 0), (1673, 627657, 'Mannarpuram', 0), (1674, 627012, 'MS university', 0), (1675, 627424, 'Manthiyoor', 0), (1676, 627201, 'Manur', 0), (1677, 627851, 'Marandai', 0), (1678, 627351, 'Marudur', 0), (1679, 627953, 'Marukkalankulam', 0), (1680, 627151, 'Maruthakulam', 0), (1681, 627851, 'Maruthamputhur', 0), (1682, 627953, 'Maruthankinar', 0), (1683, 627814, 'Mathalamparai', 0), (1684, 627415, 'Mathapuram', 0), (1685, 627201, 'Mavadi', 0), (1686, 627751, 'Mavadikal', 0), (1687, 627853, 'Mayamankurichi', 0), (1688, 627818, 'Melagaram', 0), (1689, 627951, 'Melailanthaikulam', 0), (1690, 627751, 'Melakadayanallur', 0), (1691, 627860, 'Melakalangal', 0), (1692, 627351, 'Melakulam', 0), (1693, 627860, 'Melamarudappapuram', 0), (1694, 627953, 'Melanarikudi', 0), (1695, 627953, 'Melanilithanallur', 0), (1696, 627005, 'Melapalayam', 0), (1697, 627005, 'Melapalayam Bazaar', 0), (1698, 627351, 'Melapattam', 0), (1699, 627806, 'Melapavur', 0), (1700, 627351, 'Melaputhaneri', 0), (1701, 627152, 'Melasadayamankulam', 0), (1702, 627452, 'Melaseval', 0), (1703, 627006, 'M.Vengadanathapuram', 0), (1704, 627809, 'Melur', 0), (1705, 627412, 'Merku Alwarkurichi', 0), (1706, 627436, 'Mettur', 0), (1707, 627001, 'Minatchipuram', 0), (1708, 627113, 'Moolaikadu', 0), (1709, 627423, 'Mudaliarpatti', 0), (1710, 627601, 'Mukkudal', 0), (1711, 627601, 'Mukkudal Vadakku', 0), (1712, 627354, 'Mulaikaraipatti', 0), (1713, 627755, 'Mullikulam', 0), (1714, 627355, 'Munanjipatti', 0), (1715, 627152, 'Mundradaippu', 0), (1716, 627356, 'Munnirpallam', 0), (1717, 627002, 'Murugankurichi (tvl)', 0), (1718, 627951, 'Muthammalpuram', 0), (1719, 627751, 'Muthukrishnapuram', 0), (1720, 627651, 'Muthumathanmonmozhi', 0), (1721, 627951, 'Muvirunthali', 0), (1722, 627107, 'Naduchalaiputhur', 0), (1723, 627351, 'Naduvakrichi', 0), (1724, 627862, 'Naduvakurichi', 0), (1725, 627755, 'Nagaram', 0), (1726, 627804, 'Nainaragaram', 0), (1727, 627111, 'Nakkaneri', 0), (1728, 627101, 'Nallankulam', 0), (1729, 627853, 'Nallur', 0), (1730, 627427, 'Nalumukku', 0), (1731, 627108, 'Nambinagar', 0), (1732, 627115, 'Nambithalaivanpattaiyam', 0), (1733, 627357, 'Nanajankulam', 0), (1734, 627108, 'Nanguneri', 0), (1735, 627357, 'Naranammalpuram', 0), (1736, 627760, 'Naranapuram', 0), (1737, 627604, 'Narasinganallur', 0), (1738, 627657, 'Navaladi', 0), (1739, 627758, 'Nelkattumseval', 0), (1740, 627854, 'Nettur', 0), (1741, 627755, 'Nochikulam', 0), (1742, 627951, 'Northachampatti', 0), (1743, 627602, 'Odaimarichan', 0), (1744, 627427, 'Oothu', 0), (1745, 627501, 'Padalaiyarkulam', 0), (1746, 627502, 'Padmaneri', 0), (1747, 627121, 'Palavoor', 0), (1748, 627002, 'Palayankottai', 0), (1749, 627002, 'Palayankottai Courts', 0), (1751, 627357, 'Pallaikottai', 0), (1752, 627862, 'Pambukoilshandy', 0), (1753, 627109, 'Panagudi', 0), (1754, 627761, 'Panaiyur', 0), (1755, 627152, 'Panankulam', 0), (1756, 627956, 'Panavadalichatram', 0), (1757, 627753, 'Pandapuli', 0), (1758, 627807, 'Panpuli', 0), (1759, 627110, 'Panrimalai', 0), (1760, 627422, 'Papanasam Mills', 0), (1761, 627551, 'Papanasam Project', 0), (1762, 627551, 'Papanasam Upper dam', 0), (1763, 627602, 'Pappagudi', 0), (1764, 627110, 'Pappankulam', 0), (1765, 627111, 'Parameswarapuram', 0), (1766, 627859, 'Parankundrapuram', 0), (1767, 627110, 'Parappadi', 0), (1768, 627354, 'Paruthipadu', 0), (1769, 627753, 'Paruvakkudi', 0), (1770, 627501, 'Pathai', 0), (1771, 627814, 'Pattakurichi', 0), (1772, 627453, 'Pattamadai', 0), (1773, 627808, 'Pavoorchatram', 0), (1774, 628552, 'Pazhankottai', 0), (1775, 627953, 'Periyakoilankulam', 0), (1776, 627810, 'Periyapillaivalasi', 0), (1777, 627761, 'Periyur', 0), (1778, 627753, 'Perumalpatti', 0), (1779, 627007, 'Perumalpuram', 0), (1780, 627106, 'Perumanal', 0), (1781, 627756, 'Perumkottur', 0), (1782, 627756, 'Perumpattur', 0), (1783, 627105, 'Perungudi', 0), (1784, 627808, 'Pethanadarpatti', 0), (1785, 627654, 'Pettaikulam', 0), (1786, 627201, 'Pillaiyarkulam', 0), (1787, 627352, 'Piranjeri', 0), (1788, 627809, 'Piranur', 0), (1789, 627756, 'Pogai', 0), (1790, 627856, 'Poigai', 0), (1791, 627151, 'Ponnakudi', 0), (1792, 627813, 'Poolankudiyiruppu', 0), (1793, 627415, 'Poolankulam', 0), (1794, 627416, 'Pottal', 0), (1795, 627423, 'Pottalpudur', 0), (1796, 627851, 'Pudupatti', 0), (1797, 627851, 'Pudur', 0), (1798, 627855, 'Puliyangudi', 1), (1799, 627855, 'Puliyangudi Bazaar', 0), (1800, 627813, 'Puliyara', 0), (1801, 627102, 'Puliyurkurichi', 0), (1802, 627415, 'Pungampatti', 0), (1803, 627109, 'Pushpavanam', 0), (1804, 627111, 'Radhapuram', 0), (1805, 627861, 'Rajagopalaperi', 0), (1806, 627101, 'Rajakkamangalam', 0), (1807, 627114, 'Rajakrishnapuram', 0), (1808, 627806, 'Rajapandi', 0), (1809, 627352, 'Rajaputhukudi', 0), (1810, 627359, 'Rajavallipuram', 0), (1811, 627129, 'Ramakrishnapuram', 0), (1812, 627756, 'Ramanathapuram(snl)', 0), (1813, 627760, 'Ramanathapuram(vsd)', 0), (1814, 627755, 'Ramasamipuram', 0), (1815, 627358, 'Ramayanpatti', 0), (1816, 627424, 'Ravanasamudram', 0), (1817, 627753, 'Reddiapatti', 0), (1818, 627051, 'Reddiarpatti', 1), (1819, 627413, 'Rengasamudram', 0), (1820, 627764, 'Royagiri', 0), (1821, 627860, 'Rukmaniammalpuram', 0), (1822, 627601, 'Sadayappapuram', 0), (1823, 627107, 'Salainainarpallivasal', 0), (1824, 627002, 'Samadanapuram', 0), (1825, 627657, 'Samaria', 0), (1826, 628552, 'Sambakulam', 0), (1827, 627856, 'Sambavarvadakarai', 0), (1828, 627112, 'Samugarengapuram', 0), (1829, 627761, 'Sangupuram', 0), (1830, 627758, 'Sankanaperi', 0), (1831, 627114, 'Sankanapuram', 0), (1832, 627118, 'Sankankulam', 0), (1833, 627756, 'Sankarankovil', 0), (1834, 627756, 'Sankarankovil Bazaar', 0), (1835, 627357, 'Sankarnagar', 0), (1836, 627002, 'Santhinagar', 0), (1837, 627756, 'Sathirakondan', 0), (1838, 627416, 'Sattupathu', 0), (1839, 628552, 'Sayamalai', 0), (1840, 627112, 'Seelathikulam', 0), (1841, 627012, 'Seethaparpanallur', 0), (1842, 627352, 'Seliyanallur', 0), (1843, 627412, 'Sembankulam', 0), (1844, 627102, 'Sengalakurichi', 0), (1845, 627809, 'Sengottai', 0), (1846, 627810, 'Sengottai Rs', 0), (1847, 627152, 'Sengulam', 0), (1848, 627753, 'Sennikulam', 0), (1849, 627753, 'Senthattiapuram', 0), (1850, 627358, 'Senthimanagalam', 0), (1851, 627857, 'Serndamangalam', 0), (1852, 627415, 'Servaikaranpatti', 0), (1853, 627551, 'Servalar Camp', 0), (1854, 627358, 'Sethurayanputhur', 0), (1855, 627124, 'Settikulam', 0), (1856, 627754, 'Sevalkulam', 0), (1857, 627108, 'Shenbagaramanallur', 0), (1858, 627601, 'Singamparai', 0), (1859, 627501, 'Singampathu', 0), (1860, 627416, 'Singampatti', 0), (1861, 627108, 'Singaneri', 0), (1862, 627152, 'Singikulam', 0), (1863, 627713, 'Sippiparai', 0), (1864, 627757, 'Sivagiri', 0), (1865, 627757, 'Sivagiri South', 0), (1866, 627859, 'Sivagurunathapuram', 0), (1867, 627361, 'Sivalaperi', 0), (1868, 627853, 'Sivalarkulam', 0), (1869, 627808, 'Sivanadanur', 0), (1870, 627425, 'Sivandipuram', 0), (1871, 627011, 'Sivanthipatti', 0), (1872, 627412, 'Sivasailam', 0), (1873, 627113, 'Soundarapandiapuram', 0), (1874, 627756, 'Srigomathipuram', 0), (1875, 627109, 'Sriregunathapuram', 0), (1876, 627753, 'Subbulapuram', 0), (1877, 627858, 'Sundapandiapuram', 0), (1878, 627751, 'Sundaresapuram', 0), (1879, 627859, 'Surandai', 1), (1880, 627108, 'Surangudi', 0), (1881, 627604, 'Suttamally', 0), (1882, 627652, 'Suviseshapuram', 0), (1883, 627855, 'T.N.puthukudi', 0), (1884, 627118, 'T.Vijayanarayanam', 0), (1885, 627358, 'Tachanallur', 0), (1886, 627425, 'Tana', 0), (1887, 627356, 'Taruvai', 0), (1888, 627811, 'Tenkasi', 1), (1889, 627811, 'Tenkasi Rs', 0), (1890, 627357, 'Tenkulam', 0), (1891, 627770, 'Tenmalai', 0), (1892, 627117, 'Terku Vallioor', 0), (1893, 627113, 'Terkukallikulam', 0), (1894, 627114, 'Terkukarungulam', 0), (1895, 627773, 'Thalaivankottai', 0), (1896, 627857, 'Thannuthu', 0), (1897, 627423, 'Theertharappapuram', 0), (1898, 627810, 'Thenpothai', 0), (1899, 627423, 'Therku Madathur', 0), (1900, 627416, 'Therkupappankulam', 0), (1901, 627201, 'Therkupatti', 0), (1902, 627152, 'Thidiyur', 0), (1903, 627857, 'Thirumalapuram', 0), (1904, 627426, 'Thiruppudaimarudur', 0), (1905, 627855, 'Thiruvettanallur', 0), (1906, 627414, 'Thiruviruthanpulli', 0), (1907, 627151, 'Thottakudi', 0), (1908, 627101, 'Thulukkarpatti', 0), (1909, 627423, 'Thuppakudi', 0), (1910, 627353, 'Timmarajapuram', 0), (1911, 627808, 'Tippanampatti', 0), (1912, 627115, 'Tirukurungudi', 0), (1913, 627355, 'Tirumalapuram', 0), (1914, 627001, 'Tirunelveli', 0), (1915, 627009, 'Tirunelveli Collectorate', 0), (1916, 627006, 'Tirunelveli East', 0), (1917, 627006, 'Tirunelveli Merku', 0), (1918, 627001, 'Nagarmandram', 0), (1919, 627004, 'Tirunelveli Pettai', 0), (1920, 627004, 'Pettai east', 0), (1921, 627001, 'Tirunelveli R.s', 0), (1922, 627006, 'Tirunelveli Terku', 0), (1923, 627006, 'Tirunelveli Town', 0), (1924, 627010, 'Tiruppanikarisalkulam', 0), (1925, 627130, 'Tiruvembalapuram', 0), (1926, 627719, 'Tiruvengadam', 0), (1927, 627103, 'Tiruvengadanathapuram', 0), (1928, 627657, 'Tisayanvillai', 0), (1929, 627001, 'Tondar Bazar', 0), (1930, 627602, 'Tulukkapatti', 0), (1931, 627425, 'Uchankulam', 0), (1932, 627202, 'Ukkirankottai', 0), (1933, 627719, 'Umaithalaivanpatti', 0), (1934, 627108, 'Unnankulam', 0), (1935, 627416, 'Urkad', 0), (1936, 627852, 'Urmelalagian', 0), (1937, 627654, 'Urumankulam', 0), (1938, 627857, 'Uthankulam', 0), (1939, 627111, 'Uthayathur', 0), (1940, 627860, 'Uthumalai', 0), (1941, 627658, 'Uvari', 0), (1942, 627011, 'V.M.chatram', 0), (1943, 627116, 'Vadakangulam', 0), (1944, 627812, 'Vadakarai', 0), (1945, 627812, 'Vadakaraikilpidagai', 0), (1946, 627603, 'V.Ariyanayagipuram ', 0), (1947, 627131, 'Vadakku Veppilangulam', 0), (1948, 627756, 'Vadakkupudur', 0), (1949, 627117, 'Vadalivilai', 0), (1950, 627755, 'Vadamalapuram', 0), (1951, 627862, 'Vadanathampatti', 0), (1952, 627861, 'Vadi', 0), (1953, 627010, 'Vaduganpatti', 0), (1954, 627757, 'Vadugapatti', 0), (1955, 627102, 'Vadukatchimadil', 0), (1956, 627202, 'Vagaikulam', 0);
INSERT INTO `tbl_location` VALUES (1957, 627416, 'Vairavikulam', 0), (1958, 627857, 'Valasai', 0), (1959, 627817, 'Vallam', 0), (1960, 627117, 'Valliammalpuram', 0), (1961, 627117, 'Vallioor', 0), (1962, 627117, 'Vallioor Perundunilayam', 0), (1963, 627003, 'Vannarpettai', 0), (1964, 627954, 'Vannikonendal', 0), (1965, 626140, 'Varaganur', 0), (1966, 627758, 'Vasudevanallur', 0), (1967, 627812, 'Vavanagaram', 0), (1968, 627861, 'Veeranam', 0), (1969, 627755, 'Veeriruppu', 0), (1970, 627806, 'Vellakal', 0), (1971, 627719, 'Vellakulam', 0), (1972, 627857, 'Vellalankulam', 0), (1973, 627758, 'Vellanaikottai', 0), (1974, 627426, 'Vellankuli', 0), (1975, 628552, 'Vellapaneri', 0), (1976, 627415, 'Vengadampatti', 0), (1977, 627118, 'Venkatarayapuram', 0), (1978, 627867, 'Venkateswarapuram', 0), (1979, 627352, 'Veppankulam', 0), (1980, 627425, 'Vickramasingapuram', 0), (1981, 627652, 'Vijaya Achampadu', 0), (1982, 627118, 'Vijayanarayanam', 0), (1983, 627119, 'Vijayanarayanam Naval base', 0), (1984, 627104, 'Vijayapathi', 0), (1985, 627861, 'Virakeralmpudur', 0), (1986, 627001, 'Viraraghavapuram', 0), (1987, 627862, 'Virasigamani', 0), (1988, 627426, 'Viravanallur', 0), (1989, 627763, 'Viswanathaperi', 0), (1990, 625706, 'A.Ammapatti', 0), (1991, 625514, 'A.Kokkulam', 0), (1992, 625501, 'A.Pudupatti', 0), (1993, 625704, 'A.Thottiapatti', 0), (1994, 625301, 'A.Vellalapatti', 0), (1995, 625501, 'Achampatti', 0), (1996, 625003, 'Alagappa Nagar', 0), (1997, 625501, 'Alagapuri', 0), (1998, 625301, 'Alagarkoil', 0), (1999, 625109, 'Alagichipatti', 0), (2000, 625706, 'Alampatti', 0), (2001, 625501, 'Alanganallur', 0), (2002, 625704, 'Alappalacheri', 0), (2003, 625527, 'Allikundam', 0), (2004, 625109, 'Ambalakaranpatti', 0), (2005, 625017, 'Anaiyur', 0), (2006, 625017, 'Anaiyur H.b. colony', 0), (2007, 625020, 'Andarkottaram', 0), (2008, 625218, 'Andipatti', 0), (2009, 625020, 'Anna Nagar', 0), (2010, 625009, 'Anuppanadi Housing board colon', 0), (2011, 625009, 'Anuppanady', 0), (2012, 625704, 'Appakarai', 0), (2013, 625301, 'Appantiruppathi', 0), (2014, 625706, 'Arasapatti', 0), (2015, 625016, 'Arasaradi', 0), (2016, 625106, 'Arittapatti', 0), (2017, 625532, 'Ariyapatti', 0), (2018, 625105, 'Arukkampatti', 0), (2019, 625104, 'Arumbanur', 0), (2020, 625527, 'Athikaripatti', 0), (2021, 625705, 'Athipatti', 0), (2022, 625108, 'Attapatti', 0), (2023, 625008, 'Austinpatti', 0), (2024, 625701, 'Avalsurampatti', 0), (2025, 625012, 'Avanivapuram', 0), (2026, 625537, 'Ayyanarkulam', 0), (2027, 625221, 'Ayyankottai', 0), (2028, 625207, 'Ayyankuruvithurai', 0), (2029, 625103, 'Ayyapatti', 0), (2030, 625501, 'Ayyur', 0), (2031, 625532, 'Boothipuram', 0), (2032, 625108, 'Budamangalam', 0), (2033, 625017, 'Buthagudi', 0), (2034, 625014, 'Chatrapatti', 0), (2035, 625503, 'Chatravellalapatti', 0), (2036, 625514, 'Checkanurani', 0), (2037, 625566, 'Chellampatti', 0), (2038, 625514, 'Chettikulam', 0), (2039, 625009, 'Chintamani', 0), (2040, 625707, 'Chitoor', 0), (2041, 625122, 'Chittampatti', 0), (2042, 625103, 'Chockalingapuram', 0), (2043, 625703, 'Deivanayagapuram', 0), (2044, 625007, 'Denobli Press', 0), (2045, 625532, 'Doddappanayakanur', 0), (2046, 625535, 'E.Kottapatty', 0), (2047, 625016, 'Ellis Nagar', 0), (2048, 625537, 'Eravarpatti', 0), (2049, 625019, 'Erkudi Achampathu', 0), (2050, 625501, 'Errampatti', 0), (2051, 625527, 'Erumarpatti', 0), (2052, 625105, 'Ettimangalam', 0), (2053, 625020, 'Gandhi Nagar', 0), (2054, 625708, 'Ganjampatti', 0), (2055, 625016, 'Gnanaolivupuram', 0), (2056, 625005, 'Harveypatti', 0), (2057, 625201, 'Ilamanur', 0), (2058, 625205, 'Irumbadi', 0), (2059, 625011, 'Jaihindpuram', 0), (2060, 625702, 'Jari Usilampatti', 0), (2061, 625102, 'Jayankondanilai', 0), (2062, 625535, 'Jothilnayakanur', 0), (2063, 625514, 'Jothimanickam', 0), (2064, 625007, 'K.Pudur', 0), (2065, 625701, 'K.Sennampatti', 0), (2066, 625218, 'Kachakatti', 0), (2067, 625101, 'Kachirayanpatti', 0), (2068, 625234, 'Kachirayiruppu', 0), (2069, 625702, 'Kadaneri', 0), (2070, 625207, 'Kadupatti', 0), (2071, 625529, 'Kalappanpatti', 0), (2072, 625020, 'Kalimangalam', 0), (2073, 625106, 'Kallampatti', 0), (2074, 625501, 'Kallanai', 0), (2075, 625301, 'Kallandiri', 0), (2076, 625701, 'Kalligudi', 0), (2077, 625537, 'Kalluthu', 0), (2078, 625002, 'Kalpalam Road', 0), (2079, 625221, 'Kalvelipatti', 0), (2080, 625101, 'Kambur', 0), (2081, 625014, 'Kancharampettai', 0), (2082, 625706, 'Kangeyanatham', 0), (2083, 625008, 'Kappalur', 0), (2084, 625008, 'Kappalur Indl.estate', 0), (2085, 625706, 'Karadikal', 0), (2086, 625702, 'Karaikeni', 0), (2087, 625514, 'Karumathur', 0), (2088, 625101, 'Karungalakudi', 0), (2089, 625205, 'Karupatti', 0), (2090, 625020, 'Karuppayurani', 0), (2091, 625014, 'Karuvanur', 0), (2092, 625107, 'Kathakinaru', 0), (2093, 625529, 'Kattathevanpatti', 0), (2094, 625016, 'Keelamathur', 0), (2095, 625001, 'Keerathurai', 0), (2096, 625105, 'Kesampatti', 0), (2097, 625705, 'Kethuvarpatti', 0), (2098, 625301, 'Kidaripatti', 0), (2099, 625106, 'Kilaiyur', 0), (2100, 625019, 'Kilakuyilkudi', 0), (2101, 625102, 'Kilavalavu', 0), (2102, 625704, 'Kilavaneri', 0), (2103, 625514, 'Kinnimangalam', 0), (2104, 625016, 'Kochadai', 0), (2105, 625503, 'Kodangipatti', 0), (2106, 625514, 'Kodikulam', 0), (2107, 625016, 'Kodimangalam', 0), (2108, 625108, 'Kodukkampatti', 0), (2109, 625221, 'Kondayampatti', 0), (2110, 625102, 'Kongampatti', 0), (2111, 625008, 'Koothiyargundu', 0), (2112, 625703, 'Koovalapuram', 0), (2113, 625702, 'Koppinaickanpatti', 0), (2114, 625106, 'Kottagudi', 0), (2115, 625103, 'Kottampatti', 0), (2116, 625109, 'Kottanathampatti', 0), (2117, 625514, 'Kovilangulam', 0), (2118, 625014, 'Krishnapuram Colony', 0), (2119, 625022, 'Kudakoil', 0), (2120, 625705, 'Kuduseri', 0), (2121, 625017, 'Kulamangalam', 0), (2122, 625218, 'Kulasekarankottai', 0), (2123, 625018, 'Kumaram', 0), (2124, 625101, 'Kunnarampatti', 0), (2125, 625527, 'Kuppalnatham', 0), (2126, 625701, 'Kuraiyur', 0), (2127, 625537, 'Kuravagudi', 0), (2128, 625109, 'Kurichipatti', 0), (2129, 625022, 'Kusavangundu', 0), (2130, 625501, 'Kuttimeichanpatti', 0), (2131, 625301, 'Lakshmipuram', 0), (2132, 625707, 'Lalapuram', 0), (2133, 625535, 'M.Kallupatti', 0), (2134, 625702, 'M.Pudupatti', 0), (2135, 625707, 'M.Puliyankulam', 0), (2136, 625702, 'M.Subbulapuram', 0), (2137, 625009, 'Ma Munichalai road', 0), (2138, 625001, 'Ma Periyar bus stand', 0), (2139, 625002, 'Ma Race course', 0), (2140, 625020, 'Ma Rajaji hospital', 0), (2141, 625014, 'Ma Reserve lines', 0), (2142, 625001, 'Ma West masi street', 0), (2143, 625003, 'Madakkulam', 0), (2144, 625704, 'Madipanur', 0), (2145, 625001, 'Madurai', 0), (2146, 625104, 'Madurai Agricultural college', 0), (2147, 625001, 'Madurai Bazaar', 0), (2148, 625002, 'Madurai Bibikulam', 0), (2149, 625002, 'Madurai Corporation building', 0), (2150, 625020, 'Madurai Courts', 0), (2151, 625009, 'Madurai East', 0), (2152, 625014, 'Madurai North', 0), (2153, 625001, 'Madurai Palace', 0), (2154, 625016, 'Madurai Railway divl office', 0), (2155, 625001, 'Madurai West', 0), (2156, 625102, 'Malampatti', 0), (2157, 625535, 'Mallapuram', 0), (2158, 625103, 'Manappachery', 0), (2159, 625101, 'Mangalampatti', 0), (2160, 625703, 'Mangalrevu', 0), (2161, 625301, 'Mangulam', 0), (2162, 625207, 'Mannadimangalam', 0), (2163, 625527, 'Manuthu', 0), (2164, 625221, 'Mariammalkulam', 0), (2165, 625701, 'Marudangudi', 0), (2166, 625301, 'Mathur', 0), (2167, 625002, 'Meenambalpuram', 0), (2168, 625532, 'Meikilarpatti', 0), (2169, 625234, 'Melakkal', 0), (2170, 625706, 'Melakottai', 0), (2171, 625205, 'Melanachikulam', 0), (2172, 625022, 'Melauppiligundu', 0), (2173, 625105, 'Melavlavu', 0), (2174, 625106, 'Melur', 0), (2175, 625106, 'Melur East', 0), (2176, 625106, 'Melur South', 0), (2177, 625502, 'Mettupatti', 0), (2178, 625016, 'Mudakkuchalai', 0), (2179, 625514, 'Mudalaikulam', 0), (2180, 625503, 'Muduvarpatti', 0), (2181, 625207, 'Mullipallam', 0), (2182, 625020, 'Municipal Colony', 0), (2183, 625102, 'Muthusamypatti', 0), (2184, 625205, 'Nachikulam', 0), (2185, 625514, 'Nadumudalaikulam', 0), (2186, 625019, 'Nagamalai', 0), (2187, 625532, 'Nakkalapatti', 0), (2188, 625702, 'Nallamaram', 0), (2189, 625022, 'Nallur', 0), (2190, 625207, 'Nariampatti', 0), (2191, 625002, 'Narimedu', 0), (2192, 625122, 'Narsingampatti', 0), (2193, 625532, 'Nattamangalam', 0), (2194, 625101, 'Nattarmangalam', 0), (2195, 625106, 'Navinipatti', 0), (2196, 625706, 'Nedungulam', 0), (2197, 625005, 'Nilaiyur', 0), (2198, 625701, 'Odaipatti', 0), (2199, 625107, 'Othakadai', 0), (2200, 625101, 'Othakoilpatti', 0), (2201, 625703, 'P.Thottiapatti', 0), (2202, 625705, 'Palaiyur', 0), (2203, 625503, 'Palamedu', 0), (2204, 625003, 'Palanganatham', 0), (2205, 625021, 'Palkalai Nagar', 0), (2206, 625103, 'Pallapatti', 0), (2207, 625009, 'Panaiyur', 0), (2208, 625103, 'Pandangudi', 0), (2209, 625006, 'Pandian Nagar', 0), (2210, 625209, 'Pandiarajapuram', 0), (2211, 625004, 'Papanasam Pykara colony', 0), (2212, 625708, 'Pappanaickenpatti', 0), (2213, 625537, 'Pappapatti', 0), (2214, 625703, 'Pappayapuram', 0), (2215, 625402, 'Paravai', 0), (2216, 625004, 'Pasumalai', 0), (2217, 625106, 'Pathinettangudi', 0), (2218, 625105, 'Pattur', 0), (2219, 625703, 'Peraiyur', 0), (2220, 625703, 'Periyapoolampatti', 0), (2221, 625527, 'Perungamanallur', 0), (2222, 625022, 'Perungudi', 0), (2223, 625001, 'Petchiamman Paditurai', 0), (2224, 625018, 'Podumbu', 0), (2225, 625016, 'Ponmeni', 0), (2226, 625016, 'Ponnagaram', 0), (2227, 625706, 'Ponnamangalam', 0), (2228, 625110, 'Poonjuthi', 0), (2229, 625527, 'Poosalapuram', 0), (2230, 625122, 'Poosaripatti', 0), (2231, 625529, 'Poruppumettupatti', 0), (2232, 625022, 'Postal Training centre', 0), (2233, 625532, 'Pothampati', 0), (2234, 625103, 'Pottapatti', 0), (2235, 625706, 'Pudunagar', 0), (2236, 625007, 'Pudur Bazaar', 0), (2237, 625106, 'Pudusukkampatti', 0), (2238, 625107, 'Puduthamaraipatti', 0), (2239, 625201, 'Puliankulam', 0), (2240, 625301, 'Pulipatti', 0), (2241, 625016, 'Pulluthu', 0), (2242, 625107, 'Rajakkur', 0), (2243, 625706, 'Royapalayam', 0), (2244, 625234, 'Royapuram', 0), (2245, 625527, 'S.Kottaipatti', 0), (2246, 625022, 'S.N.college', 0), (2247, 625706, 'S.P.natham', 0), (2248, 625207, 'Sakkarappanaickanur', 0), (2249, 625201, 'Sakkimangalam', 0), (2250, 625020, 'Sakkudi', 0), (2251, 625009, 'Samanatham', 0), (2252, 625402, 'Samayanallur', 0), (2253, 625703, 'Sandaiyur', 0), (2254, 625705, 'Saptur', 0), (2255, 625109, 'Saruguvalayapatti', 0), (2256, 625706, 'Sathangudi', 0), (2257, 625527, 'Sedapatti', 0), (2258, 625535, 'Seelnayakanpatti', 0), (2259, 625101, 'Sekkipatti', 0), (2260, 625002, 'Sellur', 0), (2261, 625527, 'Sembarani', 0), (2262, 625503, 'Sendamangalam', 0), (2263, 625704, 'Sengapadai', 0), (2264, 625105, 'Sennagarampatti', 0), (2265, 625706, 'Sevarakottai', 0), (2266, 625018, 'Shanthi Nagar', 0), (2267, 625214, 'Sholavandan', 0), (2268, 625214, 'Sholavandan Bazaar', 0), (2269, 625201, 'Silaiman', 0), (2270, 625703, 'Silamalaipatti', 0), (2271, 625702, 'Silarpatti', 0), (2272, 625001, 'Simmakkal', 0), (2273, 625529, 'Sindhupatti', 0), (2274, 625402, 'Siruvalai', 0), (2275, 625706, 'Sithalai', 0), (2276, 625221, 'Sithalangudi', 0), (2277, 625704, 'Sithireddipatti', 0), (2278, 625008, 'Sivanandanagar', 0), (2279, 625103, 'Sokkampatti', 0), (2280, 625002, 'Sokkikulam', 0), (2281, 625708, 'Solaipatti', 0), (2282, 625022, 'Solanguruni', 0), (2283, 625001, 'South Gate', 0), (2284, 625007, 'South Veli st at mattuthavani', 0), (2285, 625704, 'Sowdarpatti', 0), (2286, 625016, 'Ss Colony', 0), (2287, 625011, 'Subramaniapuram', 0), (2288, 625535, 'Sulapuram', 0), (2289, 625106, 'Suragundu', 0), (2290, 625103, 'Surapatti', 0), (2291, 625007, 'Surveyor Colony', 0), (2292, 625702, 'T.Kallupatti', 0), (2293, 625022, 'T.Kokkulam', 0), (2294, 625705, 'T.Krishnapuram', 0), (2295, 625708, 'T.Kunnathur', 0), (2296, 625704, 'T.Pudupatti', 0), (2297, 625535, 'T.Ramanathapuram', 0), (2298, 625529, 'T.Uchapatti', 0), (2299, 625122, 'T.Vellalapatti', 0), (2300, 625002, 'Tallakulam', 0), (2301, 625020, 'Tallakulam Housing board colon', 0), (2302, 625503, 'Tettur', 0), (2303, 625535, 'Thadayampatti', 0), (2304, 625006, 'Thanakkankulam', 0), (2305, 625706, 'Thangalacheri', 0), (2306, 625221, 'Thanichiyam', 0), (2307, 625109, 'Thaniyamangalam', 0), (2308, 625018, 'Thathaneri', 0), (2309, 625207, 'Thenkarai', 0), (2310, 625021, 'Thenpalanji', 0), (2311, 625402, 'Thenur', 0), (2312, 625110, 'Therkilamur', 0), (2313, 625122, 'Therkutheru', 0), (2314, 625009, 'Thiagarajar College', 0), (2315, 625015, 'Thiagarajar Engg college', 0), (2316, 625537, 'Thimmanatham', 0), (2317, 625005, 'Thiruparankundram', 0), (2318, 625221, 'Thiruvalavayanallur', 0), (2319, 625402, 'Thodaneri', 0), (2320, 625103, 'Thonthilingapuram', 0), (2321, 625008, 'Thoppur', 0), (2322, 625108, 'Thumbaipatti', 0), (2323, 625529, 'Thummagundu', 0), (2324, 625016, 'Thuvariman', 0), (2325, 625529, 'Tidiyan', 0), (2326, 625706, 'Tirali', 0), (2327, 625022, 'Tirumal', 0), (2328, 625014, 'Tirumalpuram', 0), (2329, 625706, 'Tirumangalam', 0), (2330, 625706, 'Tirumangalam South', 0), (2331, 625535, 'Tirumanickam', 0), (2332, 625107, 'Tirumoghur', 0), (2333, 625006, 'Tirunagar', 0), (2334, 625014, 'Tiruppalai', 0), (2335, 625110, 'Tiruvadur', 0), (2336, 625234, 'Tiruvedagam', 0), (2337, 625217, 'Tiruvedagam West', 0), (2338, 625001, 'Town Hall road', 0), (2339, 625003, 'Tvs Nagar', 0), (2340, 625109, 'Uranganpatti', 0), (2341, 625706, 'Urappanur', 0), (2342, 625532, 'Usilampatti', 0), (2343, 625532, 'Usilampatti East', 0), (2344, 625532, 'Usilampatti Pettai', 0), (2345, 625107, 'Uthangudi', 0), (2346, 625537, 'Uthappanayakanur', 0), (2347, 625535, 'Uthapuram', 0), (2348, 625701, 'Vadakkampatti', 0), (2349, 625021, 'Vadapalanji', 0), (2350, 625218, 'Vadipatti', 0), (2351, 625019, 'Vadivelkarai', 0), (2352, 625532, 'Vadugapatti', 0), (2353, 625017, 'Vagaikulam', 0), (2354, 625532, 'Vagurani', 0), (2355, 625103, 'Valaicheripatti', 0), (2356, 625532, 'Valandur', 0), (2357, 625501, 'Valasai', 0), (2358, 625022, 'Valayankulam', 0), (2359, 625022, 'Valayapatti', 0), (2360, 625705, 'Vandapuli', 0), (2361, 625705, 'Vandari', 0), (2362, 625020, 'Vandiyur', 0), (2363, 625101, 'Vanjinagaram', 0), (2364, 625702, 'Vannivelampatti', 0), (2365, 625020, 'Varichiyur', 0), (2366, 625501, 'Vavidaimaruthur', 0), (2367, 625402, 'Vayalur', 0), (2368, 625706, 'Veeraperumalpuram', 0), (2369, 625702, 'Velambur', 0), (2370, 625014, 'Velichanatham', 0), (2371, 625701, 'Vellakulam', 0), (2372, 625109, 'Vellalur', 0), (2373, 625537, 'Vellamalaipatti', 0), (2374, 625122, 'Vellaripatti', 0), (2375, 625503, 'Vellayampatti', 0), (2376, 625705, 'Veppampatti', 0), (2377, 625529, 'Veppanuthu', 0), (2378, 625706, 'Vidathakulam', 0), (2379, 625207, 'Vikramangalam', 0), (2380, 625006, 'Vilacheri', 0), (2381, 625001, 'Vilakkuthoon', 0), (2382, 625018, 'Vilangudi', 0), (2383, 625012, 'Villapuram', 0), (2384, 625707, 'Villur', 0), (2385, 625009, 'Viradhanur', 0), (2386, 625009, 'Viraganur', 0), (2387, 625016, 'Virattipathu', 0), (2388, 625018, 'Visalakshi Nagar', 0), (2389, 625104, 'Vowalthottam', 0), (2390, 625016, 'West Ponnagaram', 0), (2391, 625001, 'Yanaikkal', 0), (2392, 625535, 'Yelumalai', 0), (2393, 695001, 'Kesavadasapuram', 1), (2394, 695122, 'Udiyankulangara', 1), (2395, 695004, 'Marappalam', 1), (2396, 695023, 'East Fort', 1), (2397, 695020, 'karakkamandapam', 1), (2398, 695036, 'Chenthitta', 1), (2399, 695001, 'Ayurveda College Jn.', 1), (2400, 629153, 'Nadakkavu', 0), (2401, 695003, 'Nanthancode', 1), (2402, 695033, 'Palayam', 1), (2403, 695014, 'Bakery Junction', 1), (2404, 629802, 'Monday Market', 1), (2405, 627805, 'Vanji Nagar', 1), (2406, 695033, 'Murinjapalam', 1), (2407, 695501, 'Vazhimukku', 1), (2408, 695003, 'Kuravankonam', 1), (2409, 691021, 'Pallimukku', 1), (2410, 691001, 'High School Jn Kollam', 1), (2411, 691014, 'Keralapuram', 1), (2412, 691004, 'Karicode', 1), (2413, 691014, 'Chandhanathope', 1), (2414, 695564, 'Valicode', 1), (2415, 686001, 'Kottayam City', 1), (2416, 686001, 'Good Shepherd Road Ktm', 0), (2417, 686010, 'Kalathipady', 1), (2418, 686001, 'Thannikalpady', 1), (2419, 695104, 'Chempakamangalam', 1), (2420, 695562, 'Palode', 1), (2421, 691001, 'Kollam Beach Rd', 1), (2422, 691505, 'Cheerankavu', 1), (2423, 686001, 'Pulimoodu ', 1), (2424, 695011, 'Pazhavangadi', 1), (2425, 673631, 'Feroke', 1), (2426, 686006, 'Choottuveli', 1), (2427, 691601, 'Kadavoor', 1), (2428, 690518, 'Karunagapally', 1), (2429, 686001, 'Chalukunnu', 1), (2430, 695029, 'Venpalavattam', 1), (2431, 691589, 'Mevaram', 1), (2432, 686002, 'Logos Junction ', 1), (2433, 695525, 'Poovar', 1), (2434, 686102, 'Thiruvalla kottayam road', 1), (2435, 695010, 'Edapazhanji', 1), (2436, 695001, 'Ootukuzhi', 1), (2437, 627802, 'Courtallam', 1), (2438, 695029, 'Aakkulam', 1), (2439, 695001, 'Thampanoor', 1), (2440, 695014, 'Vazhuthacaud', 1), (2441, 695010, 'Vellayambalam ', 1), (2442, 695011, 'Pulimoodu', 1);
COMMIT;

-- ----------------------------
-- Table structure for tbl_orders
-- ----------------------------
DROP TABLE IF EXISTS `tbl_orders`;
CREATE TABLE `tbl_orders`  (
  `o_id` int(11) NOT NULL AUTO_INCREMENT,
  `added_on` datetime(0) NOT NULL,
  `pay_id` int(11) NOT NULL,
  `crt_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `f_id` int(11) NOT NULL,
  `pdt_id` int(11) NOT NULL,
  `pdt_cnt` int(11) NOT NULL,
  `pkg_tot` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pkg_sub_tot` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stat` int(11) NOT NULL,
  PRIMARY KEY (`o_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of tbl_orders
-- ----------------------------
BEGIN;
INSERT INTO `tbl_orders` VALUES (1, '2023-02-21 15:20:01', 3, 340, 10, 1, 1, 3, '300', '4200', 2), (2, '2023-02-21 15:20:01', 3, 341, 10, 2, 5, 5, '25', '5250', 2), (3, '2023-02-21 15:42:41', 4, 340, 10, 1, 1, 3, '300', '4200', 2), (4, '2023-02-21 15:42:41', 4, 341, 10, 1, 5, 5, '25', '5250', 3), (5, '2023-02-21 16:00:33', 5, 342, 10, 1, 4, 2, '30', '5400', 2), (6, '2023-02-21 16:00:33', 5, 343, 10, 1, 3, 4, '100', '23500', 0), (7, '2023-02-21 16:00:33', 5, 344, 10, 1, 5, 3, '15', '3150', 1), (8, '2023-02-21 16:00:33', 5, 345, 10, 1, 1, 2, '200', '2800', 0), (9, '2023-02-21 16:00:33', 5, 346, 10, 1, 9, 4, '120', '2160', 0), (10, '2023-02-21 16:04:15', 6, 347, 5, 1, 1, 1, '100', '1400', 3), (11, '2023-02-21 16:04:15', 6, 348, 5, 1, 9, 1, '30', '540', 3), (12, '2023-02-21 16:04:15', 6, 349, 5, 1, 8, 1, '40', '18000', 3), (13, '2023-02-21 16:04:15', 6, 350, 5, 1, 7, 1, '80', '3600', 3), (14, '2023-02-21 16:04:15', 6, 351, 5, 1, 5, 1, '5', '1050', 3), (15, '2023-02-21 16:04:15', 6, 352, 5, 1, 3, 1, '25', '5875', 3), (16, '2023-02-21 16:16:49', 7, 353, 5, 1, 4, 1, '15', '2700', 0), (17, '2023-03-01 16:19:28', 8, 357, 12, 1, 1, 1, '100', '1400', 3), (18, '2023-03-01 16:19:28', 8, 358, 12, 1, 7, 1, '80', '3600', 3), (19, '2023-03-01 16:38:05', 9, 359, 12, 1, 2, 5, '250', '7500', 3), (20, '2023-03-01 16:38:05', 9, 360, 12, 1, 8, 9, '360', '162000', 3), (21, '2023-03-01 16:38:05', 9, 361, 12, 1, 9, 6, '180', '3240', 3), (22, '2023-03-01 17:04:49', 10, 362, 12, 1, 5, 1, '5', '1050', 3), (23, '2023-03-01 17:14:23', 11, 363, 12, 1, 4, 10, '150', '27000', 3), (24, '2023-03-01 17:45:18', 12, 364, 12, 1, 8, 10, '400', '180000', 3), (25, '2023-03-01 17:45:18', 12, 365, 12, 1, 9, 10, '300', '5400', 3), (26, '2023-03-20 16:10:36', 13, 366, 14, 1, 4, 1, '15', '2700', 3), (27, '2023-03-24 10:21:16', 14, 367, 5, 1, 1, 1, '100', '1400', 0), (28, '2023-03-24 10:35:51', 15, 369, 15, 1, 2, 5, '250', '7500', 3), (29, '2023-03-31 16:52:31', 16, 372, 17, 1, 1, 1, '100', '1400', 3);
COMMIT;

-- ----------------------------
-- Table structure for tbl_packaging_size
-- ----------------------------
DROP TABLE IF EXISTS `tbl_packaging_size`;
CREATE TABLE `tbl_packaging_size`  (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `pk_value` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `min_pkg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pk_stat` int(11) NOT NULL,
  PRIMARY KEY (`pk_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of tbl_packaging_size
-- ----------------------------
BEGIN;
INSERT INTO `tbl_packaging_size` VALUES (1, '5', '5 KG', 0), (2, '10', '10 KG', 0), (3, '15', '15 KG', 0), (4, '20', '20 KG', 0), (5, '25', '25 KG', 0), (6, '30', '30 KG', 0), (7, '40', '40 KG', 0), (8, '50', '50 KG', 0), (9, '60', '60 KG', 0), (10, '70', '70 KG', 0), (11, '80', '80 KG', 0), (12, '90', '90 KG', 0), (13, '100', '100 KG', 0);
COMMIT;

-- ----------------------------
-- Table structure for tbl_payment_details
-- ----------------------------
DROP TABLE IF EXISTS `tbl_payment_details`;
CREATE TABLE `tbl_payment_details`  (
  `pay_id` int(11) NOT NULL AUTO_INCREMENT,
  `pay_dt` datetime(0) NOT NULL,
  `user_id` int(11) NOT NULL,
  `card_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expiry` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `security_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sub_tot` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cgst` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sgst` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `del_status` int(11) NOT NULL,
  PRIMARY KEY (`pay_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of tbl_payment_details
-- ----------------------------
BEGIN;
INSERT INTO `tbl_payment_details` VALUES (3, '2023-02-21 15:20:01', 10, '12345874789445', '12/55', '', '9450.00', '567', '567', '10584', 2), (4, '2023-02-21 15:20:01', 10, '4456456456345654645', '12/55', '125', '9450.00', '567', '567', '10584', 2), (5, '2023-02-21 15:20:01', 10, '342141241241241241243', '12564', '455', '37010.00', '2220.6', '2220.6', '41451.2', 1), (6, '2023-02-21 15:20:01', 5, '1233445', '22', '2', '30465.00', '1827.9', '1827.9', '34120.8', 3), (7, '2023-02-21 15:20:01', 5, '546356', '46456', '64', '2700.00', '162', '162', '3024', 0), (8, '2023-03-01 16:19:28', 12, '1252445', '445', '454', '5000.00', '300', '300', '5600', 3), (9, '2023-03-01 16:38:05', 12, '567657575765', 'j67867', '6786', '172740.00', '10364.4', '10364.4', '193468.8', 3), (10, '2023-03-01 17:04:49', 12, '12345677', '55', '55', '1050.00', '63', '63', '1176', 3), (11, '2023-03-01 17:14:23', 12, '\\\'', '\\', 'kl', '27000.00', '1620', '1620', '30240', 3), (12, '2023-03-01 17:45:18', 12, 'v', 'sdf', 'sd', '185400.00', '11124', '11124', '207648', 3), (13, '2023-03-20 16:10:36', 14, '456345645645', '645645', '456', '2700.00', '162', '162', '3024', 3), (14, '2023-03-24 10:21:16', 5, 'hggfhgfh', '32423', '5', '1400.00', '84', '84', '1568', 0), (15, '2023-03-24 10:35:51', 15, '534266662', '63/555', '123', '7500.00', '450', '450', '8400', 3), (16, '2023-03-31 16:52:31', 17, '234234', '234', '23234', '1400.00', '84', '84', '1568', 3);
COMMIT;

-- ----------------------------
-- Table structure for tbl_price
-- ----------------------------
DROP TABLE IF EXISTS `tbl_price`;
CREATE TABLE `tbl_price`  (
  `pr_id` int(11) NOT NULL AUTO_INCREMENT,
  `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`pr_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of tbl_price
-- ----------------------------
BEGIN;
INSERT INTO `tbl_price` VALUES (1, '<1000'), (2, '1000-10000'), (3, '10000-50000'), (4, '50000-100000'), (5, '>100000');
COMMIT;

-- ----------------------------
-- Table structure for tbl_product_categories
-- ----------------------------
DROP TABLE IF EXISTS `tbl_product_categories`;
CREATE TABLE `tbl_product_categories`  (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cat_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `c_stat` int(11) NOT NULL,
  PRIMARY KEY (`c_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of tbl_product_categories
-- ----------------------------
BEGIN;
INSERT INTO `tbl_product_categories` VALUES (1, 'Vegetable', 'assets/img/categories/1.png', 0), (2, 'Fruits', 'assets/img/categories/2.png', 0), (3, 'Spices', 'assets/img/categories/3.png', 0), (4, 'Poultry Products', 'assets/img/categories/4.png', 0), (5, 'Cattle and Sheep ', 'assets/img/categories/5.png', 0), (6, 'Fishery', 'assets/img/categories/6.png', 0), (7, 'Seeds', 'assets/img/categories/7.png', 0), (8, 'Coffee and Tea ', 'assets/img/categories/8.png', 0), (9, 'Fertilizers', 'assets/img/categories/9.png', 0);
COMMIT;

-- ----------------------------
-- Table structure for tbl_product_features
-- ----------------------------
DROP TABLE IF EXISTS `tbl_product_features`;
CREATE TABLE `tbl_product_features`  (
  `fe_id` int(11) NOT NULL AUTO_INCREMENT,
  `pdt_id` int(11) NOT NULL,
  `feature` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stat` int(11) NOT NULL,
  PRIMARY KEY (`fe_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Table structure for tbl_product_image
-- ----------------------------
DROP TABLE IF EXISTS `tbl_product_image`;
CREATE TABLE `tbl_product_image`  (
  `im_id` int(11) NOT NULL AUTO_INCREMENT,
  `pdt_id` int(11) NOT NULL,
  `p_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `img_stat` int(11) NOT NULL,
  PRIMARY KEY (`im_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of tbl_product_image
-- ----------------------------
BEGIN;
INSERT INTO `tbl_product_image` VALUES (1, 1, 'assets/img/products/1.jpg', 0), (2, 2, 'assets/img/products/2.jpg', 0), (3, 3, 'assets/img/products/3.jpg', 0), (4, 4, 'assets/img/products/4.jpg', 0), (5, 5, 'assets/img/products/5.jpg', 0), (6, 6, 'assets/img/products/6.jpg', 0), (7, 7, 'assets/img/products/7.jpg', 0), (8, 8, 'assets/img/products/8.jpg', 0), (9, 9, 'assets/img/products/9.jpg', 0), (10, 1, 'assets/img/products/1.jpg', 0), (15, 15, 'assets/img/products/axen-software-logo4.png', 0), (16, 15, 'assets/img/products/axen-software-logo5.png', 1), (17, 15, 'assets/img/products/axen-software-logo6.png', 1), (18, 15, 'assets/img/products/buyfie_app_design.jpg', 1), (19, 19, 'assets/img/products/11.jpg', 0);
COMMIT;

-- ----------------------------
-- Table structure for tbl_product_ratings
-- ----------------------------
DROP TABLE IF EXISTS `tbl_product_ratings`;
CREATE TABLE `tbl_product_ratings`  (
  `rt_id` int(11) NOT NULL AUTO_INCREMENT,
  `rv_dt` date NOT NULL,
  `pdt_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `review` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stat` int(11) NOT NULL,
  PRIMARY KEY (`rt_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of tbl_product_ratings
-- ----------------------------
BEGIN;
INSERT INTO `tbl_product_ratings` VALUES (1, '2023-02-02', 1, 10, 2, 'Average', 1), (2, '2023-02-03', 4, 10, 5, 'Excellent', 1), (3, '2023-02-01', 2, 10, 5, 'Good', 0), (4, '0000-00-00', 9, 10, 5, '4.5', 1), (5, '2023-02-23', 9, 10, 4, 'good', 0), (6, '2023-02-23', 1, 10, 1, 'poor', 1), (7, '2023-02-23', 5, 10, 5, 'good', 0), (8, '2023-02-23', 4, 10, 4, 'gggg', 0), (9, '2023-02-23', 1, 10, 5, 'average', 0), (10, '2023-03-01', 2, 12, 1, 'poor', 1), (11, '2023-03-24', 1, 5, 4, 'fghghfg', 0);
COMMIT;

-- ----------------------------
-- Table structure for tbl_product_wish_list
-- ----------------------------
DROP TABLE IF EXISTS `tbl_product_wish_list`;
CREATE TABLE `tbl_product_wish_list`  (
  `w_id` int(11) NOT NULL AUTO_INCREMENT,
  `pdt_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `stat` int(11) NOT NULL,
  PRIMARY KEY (`w_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of tbl_product_wish_list
-- ----------------------------
BEGIN;
INSERT INTO `tbl_product_wish_list` VALUES (1, 3, 5, 1), (2, 2, 5, 0), (3, 6, 5, 0), (4, 5, 5, 0), (5, 8, 5, 0), (6, 9, 5, 0), (7, 7, 5, 0), (8, 4, 5, 0), (9, 1, 5, 0), (10, 4, 10, 1), (11, 1, 10, 1), (12, 2, 10, 1), (13, 3, 10, 1), (14, 6, 10, 1), (15, 5, 10, 1), (16, 9, 10, 0), (17, 8, 10, 0), (18, 7, 10, 0), (19, 1, 12, 1), (20, 2, 12, 1), (21, 3, 12, 1), (22, 8, 12, 1), (23, 9, 12, 1), (24, 7, 12, 1), (25, 4, 12, 1), (26, 5, 12, 1), (27, 6, 12, 1), (28, 8, 12, 1), (29, 8, 12, 0), (30, 9, 12, 0);
COMMIT;

-- ----------------------------
-- Table structure for tbl_staff_login
-- ----------------------------
DROP TABLE IF EXISTS `tbl_staff_login`;
CREATE TABLE `tbl_staff_login`  (
  `staff_id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `staff_category` int(11) NOT NULL,
  `thumb_id` int(11) NOT NULL,
  `active_stat` int(11) NOT NULL,
  PRIMARY KEY (`staff_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of tbl_staff_login
-- ----------------------------
BEGIN;
INSERT INTO `tbl_staff_login` VALUES (2, 'Staff', 'staff@agri.in', '6380082749', '$2y$11$RKImceQulzAj1PJTh5wJjOjY7WXgPYZ/xK2TIlSxM2C9RH/7GXFii', 2, 0, 0), (3, 'ADMIN', 'test@agri.in', '8078219117', '$2y$11$jsd977oD/4rsUZXbeIFFW./pOcPwOoaQSs9AYOAp/51rHCPgOk.HO', 1, 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for tbl_staff_types
-- ----------------------------
DROP TABLE IF EXISTS `tbl_staff_types`;
CREATE TABLE `tbl_staff_types`  (
  `team_id` int(11) NOT NULL AUTO_INCREMENT,
  `position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`team_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of tbl_staff_types
-- ----------------------------
BEGIN;
INSERT INTO `tbl_staff_types` VALUES (1, 'Admin'), (2, 'Staff');
COMMIT;

-- ----------------------------
-- Table structure for tbl_sub_category
-- ----------------------------
DROP TABLE IF EXISTS `tbl_sub_category`;
CREATE TABLE `tbl_sub_category`  (
  `sub_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_id` int(11) NOT NULL,
  `sub_cat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stat` int(11) NOT NULL,
  PRIMARY KEY (`sub_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of tbl_sub_category
-- ----------------------------
BEGIN;
INSERT INTO `tbl_sub_category` VALUES (1, 1, 'Broccoli', 0), (2, 1, 'Cabbage', 0), (3, 1, 'Cauliflower', 0), (4, 1, 'Beans', 0), (5, 1, 'Cucumber', 0), (6, 1, 'Eggplant ', 0), (7, 1, 'Pumpkin', 0), (8, 1, 'Tomato', 0), (9, 1, 'Carrot', 0), (10, 1, 'Onion', 0), (11, 1, 'Sweet potato ', 0), (12, 1, 'Radish', 0), (13, 2, 'Apple', 0), (14, 2, 'Banana', 0), (15, 2, 'Oranges', 0), (16, 2, 'Papaya', 0), (17, 2, 'Pomegranate', 0), (18, 2, 'Melon', 0), (19, 3, 'Cardamom', 0), (20, 3, 'Pepper', 0), (21, 3, 'Cinnamon', 0), (22, 3, 'Cloves', 0), (23, 3, 'Garlic', 0), (24, 3, 'Ginger', 0), (25, 3, 'Cardamom', 0), (26, 4, 'Chicken', 0), (27, 4, 'Chicken, broiler', 0), (28, 4, 'Eggs', 0), (29, 4, 'Duck', 0), (30, 4, 'Emu', 0), (31, 4, 'Goose', 0), (32, 4, 'Turkey', 0), (33, 4, 'Quail', 0), (34, 5, 'Milk', 0), (35, 5, 'Beef', 0), (36, 5, 'Buffalo', 0), (37, 5, 'Pork', 0), (38, 5, 'Mutton', 0), (39, 5, 'Rabbit ', 0), (40, 6, 'Tilapia', 0), (41, 6, 'Salmon', 0), (42, 6, 'Tuna', 0), (43, 6, 'Catla ', 0), (44, 7, 'Pumpkin seeds.', 0), (45, 7, 'Sunflower seeds.', 0), (46, 7, 'Beans seeds.', 0), (47, 8, 'Coffee', 0), (48, 8, 'Roasted and ground seeds', 0), (49, 9, 'Nitrogen fertilizers', 0), (50, 9, 'Phosphorus fertilizers. ', 0), (51, 9, 'Potassium fertilizers', 0), (52, 9, 'Micronutrient fertilizers.', 0), (53, 3, 'Masala Powder', 0), (54, 6, 'Prawns ', 0), (55, 9, 'Ammonium Sulphate Fertilizer', 0), (56, 6, 'Cutla', 0);
COMMIT;

-- ----------------------------
-- Table structure for tbl_tender
-- ----------------------------
DROP TABLE IF EXISTS `tbl_tender`;
CREATE TABLE `tbl_tender`  (
  `tnd_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_id` int(11) NOT NULL,
  `t_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `t_desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `t_cost` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `t_sec_dpst` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lst_dt` date NOT NULL,
  `op_dt` date NOT NULL,
  `location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `t_stat` int(11) NOT NULL,
  PRIMARY KEY (`tnd_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of tbl_tender
-- ----------------------------
BEGIN;
INSERT INTO `tbl_tender` VALUES (1, 7, 'Paddy Crop Harvesting', 'invited for grazing in farm fields after harvesting of paddy crops ', '33223', '235423', '2023-02-27', '2023-02-06', ' Agriculture Office. Trivandrum, Trivandrum City.', 1), (4, 1, 'Supply and Erection of Plant & Machinery ', 'Supply and Erection of Plant & Machinery of Fresh Mango Integrated Fruits and Vegetables Primary Processing Unit & Pack House', '40000', '20000', '0001-11-11', '2023-03-16', ' Agriculture Office. Trivandrum, Trivandrum City.', 1);
COMMIT;

-- ----------------------------
-- Table structure for tbl_user_enquiry
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user_enquiry`;
CREATE TABLE `tbl_user_enquiry`  (
  `en_u` int(11) NOT NULL AUTO_INCREMENT,
  `dt` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `msg` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rpl` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stat` int(11) NOT NULL,
  PRIMARY KEY (`en_u`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of tbl_user_enquiry
-- ----------------------------
BEGIN;
INSERT INTO `tbl_user_enquiry` VALUES (2, '2023-04-12', 7, 'I want to cancel my order', 'Go to Orders and cancel your orders', 0), (3, '2023-04-12', 7, 'I want to cancel my order', 'Go to Orders and cancel your orders', 0), (4, '2023-04-12', 7, 'Product not delivered yet!', '', 0), (5, '2023-04-12', 7, 'Product not delivered yet!', '', 0), (6, '2023-04-12', 7, 'Product not delivered yet!', '', 0), (7, '2023-04-22', 1, 'fhgfhfg', '', 0);
COMMIT;

-- ----------------------------
-- Table structure for tbl_users
-- ----------------------------
DROP TABLE IF EXISTS `tbl_users`;
CREATE TABLE `tbl_users`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `u_mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `u_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `u_pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `u_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `u_address` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `u_state` int(11) NOT NULL,
  `u_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `u_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `u_pincode` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `u_stat` int(11) NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of tbl_users
-- ----------------------------
BEGIN;
INSERT INTO `tbl_users` VALUES (1, 'Sarra', '9966332255', 'Sarra@gmail.com', '$2y$11$T9cYdKcKY2A9NVWBISJHpuUNAnywlNT/W/Zu2muHEx4A3lpjds7Ga', '', '', 18, 'Trivandrum', 'Kanjiramkulam', '695524', 0), (2, 'Geetha', '9955442255', 'Geetha@gmail.com', '$2y$11$T9cYdKcKY2A9NVWBISJHpuUNAnywlNT/W/Zu2muHEx4A3lpjds7Ga', '', '', 18, 'Trivandrum', 'Balaramapuram', '695501', 1), (5, 'Sanu', '8855221122', 'Sanu@gmail.com', '$2y$11$T9cYdKcKY2A9NVWBISJHpuUNAnywlNT/W/Zu2muHEx4A3lpjds7Ga', 'assets/img/user/axen-software-logo2.png', '433214', 1, '21412', '124143', '1341', 0), (6, 'Ajesh', '9966332255', 'Ajesh@gmail.com', '$2y$11$T9cYdKcKY2A9NVWBISJHpuUNAnywlNT/W/Zu2muHEx4A3lpjds7Ga', '', '', 0, '', '', '', 0), (7, 'Amala', '9966332225', 'Amala@gmail.com', '$2y$11$0XLvmYSmyILvak4aXGUBp.i04W5N4bkC.2PhevK1o1GWBUU0ZVkKC', '', '', 0, '', '', '', 0), (8, 'Kevin', '9966332214', 'Kevin@gmail.com', '$2y$11$UI3wmSLgov4x3yjOqShg4./LTqkLqfWsP/UdQlCcjPcpYqzwJppdu', '', '', 0, '', '', '', 0), (9, 'Dhanush', '9966332217', 'Dhanush@gmail.com', '$2y$11$dM7W7tUvFBWzuOLCDyMyM.mTCoS9iytTJuVB86FezMNtCIOwdmD/K', '', '', 0, '', '', '', 0), (10, 'Ananthu', '9966332233', 'Ram@gmail.com', '$2y$11$iuRIhMmYOJzLbdj2Y1DQgeJABfhLMOHp7L1MTMxgFLY3rDiM9NlGe', '', '', 1, 'tt', 'gfd', '695501', 0), (11, 'Senthil', '8274963225', 'Senthil@gmail.com', '$2y$11$QhZVIHzZJ9rbXfVbXZX3te6uNePf3i3PE/Fw8P5E4EWexXs1LxnEW', '', '', 0, '', '', '', 0), (12, 'Raju', '6380082749', 'Raju@gmail.com', '$2y$11$EHuXZHlwo2ZYfNmHfOhUvuFRtAIlBy8c78amBoTC/yJ1P3Dp9PrfC', 'assets/img/user/3.jpg', '', 18, 'fghfh', 'fgh', '695501', 0), (13, 'Ramesh', '9988552211', 'Ramesh@gmail.io', '$2y$11$mZlsL/.qJEi7Ggc7ShScveZQ5YN5FoNbfZzIv34EX/u9hFHsf6X3K', '', '', 0, '', '', '', 0), (14, 'Govind', '9966332252', 'Govind@gmail.com', '$2y$11$onKpDfd53AxVQdRwCjWonO.z/Qc7Kon8YyL/Ruay4DepUAhbHdLf2', '', '42345', 5, 'asdfa', '456354', '5654654', 0), (15, 'aravind', '123456789', 'abc@gmail.com', '$2y$11$W436wwVJXsn2ApSa7uJ7qO7J8.VkvOQoJRjCUXra./Z2PoMpXcqom', '', 'hgjfjffjf', 1, 'hghhh', 'gfududu', '123456', 0), (16, 'Rahul', '9966338855', 'Rahul@gmail.com', '$2y$11$FJnwsnE9VLvqQ5LSNtjYhOSa3zLjs/fSkH/zrGBjSfqbG8XccjgtO', '', '', 0, '', '', '', 0), (17, 'asda', '9966558822', 'asd@sfgf.io', '$2y$11$ZdpxCT9/66RmyW8owh98uea/UQFGRJGDNuftfBxfK2N1.OykcWpO6', '', 'wefs', 6, 'fgg', 'gfd', 'fdg', 0);
COMMIT;

-- ----------------------------
-- Procedure structure for get_products_by_category_prc_scat
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_products_by_category_prc_scat`;
delimiter ;;
CREATE  PROCEDURE `get_products_by_category_prc_scat`(in prc varchar(25),in id int,in min int,in max int)
BEGIN
select a.*,b.*,t2.*,c.*,d.*   from tbl_store_products a 
left join tbl_stores b on b.st_id=a.st_id 
left join tbl_product_size_marked c on c.pr_id=a.pr_id 
left join tbl_color_marked d on d.pdt_id=a.pr_id 
LEFT JOIN tbl_product_images t2 ON (t2.p_im_id = (SELECT MIN(t2_.p_im_id) 
    FROM tbl_product_images t2_ WHERE (t2_.pr_id = a.pr_id  and t2_.im_stat=0 )  LIMIT 1)) where
a.pdt_stat=0 and  b.st_stat=0 and a.st_id=id  and  a.pdt_off_price >min and  a.pdt_off_price <max and   FIND_IN_SET(c.size_id,prc) and  FIND_IN_SET(d.col_id,scat) ;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for get_products_by_category_scat
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_products_by_category_scat`;
delimiter ;;
CREATE  PROCEDURE `get_products_by_category_scat`(in scat varchar(25),in id int,in min int,in max int)
BEGIN
select a.*,b.*,t2.*,c.*,d.*   from tbl_store_products a 
left join tbl_stores b on b.st_id=a.st_id 
left join tbl_product_size_marked c on c.pr_id=a.pr_id 
left join tbl_color_marked d on d.pdt_id=a.pr_id 
LEFT JOIN tbl_product_images t2 ON (t2.p_im_id = (SELECT MIN(t2_.p_im_id) 
    FROM tbl_product_images t2_ WHERE (t2_.pr_id = a.pr_id  and t2_.im_stat=0 )  LIMIT 1)) where
a.pdt_stat=0 and  b.st_stat=0 and a.st_id=id  and  a.pdt_off_price >min and  a.pdt_off_price <max and  FIND_IN_SET(d.col_id,scat) ;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for get_products_by_categorys
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_products_by_categorys`;
delimiter ;;
CREATE  PROCEDURE `get_products_by_categorys`(in id int,in min int,in max int)
BEGIN
select a.*,b.*,t2.*,c.*,d.*   from tbl_store_products a 
left join tbl_stores b on b.st_id=a.st_id 
left join tbl_product_size_marked c on c.pr_id=a.pr_id 
left join tbl_color_marked d on d.pdt_id=a.pr_id 
LEFT JOIN tbl_product_images t2 ON (t2.p_im_id = (SELECT MIN(t2_.p_im_id) 
    FROM tbl_product_images t2_ WHERE (t2_.pr_id = a.pr_id  and t2_.im_stat=0 )  LIMIT 1)) where
a.pdt_stat=0 and  b.st_stat=0 and a.st_id=id  and  a.pdt_off_price >min and  a.pdt_off_price <max ;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_activate_or_inactivate_farmer
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_activate_or_inactivate_farmer`;
delimiter ;;
CREATE  PROCEDURE `sp_activate_or_inactivate_farmer`(in id INT)
BEGIN
UPDATE tbl_farmers SET stat = (CASE stat WHEN 1 THEN 0 ELSE 1 END) where f_id=id ;
SELECT stat  FROM tbl_farmers WHERE f_id = id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_cat_get_cart_detail
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_cat_get_cart_detail`;
delimiter ;;
CREATE  PROCEDURE `sp_cat_get_cart_detail`(in rsn varchar(25))
BEGIN
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
ROLLBACK;
END;
SELECT a.*,b.*,t2.*,c.* FROM tbl_cart_details b 
left join tbl_agri_products a on a.pdt_id=b.pdt_id
LEFT JOIN tbl_product_image t2 ON (t2.im_id = (SELECT MIN(t2_.im_id) 
    FROM tbl_product_image t2_ WHERE (t2_.pdt_id = a.pdt_id  and t2_.img_stat=0 )  LIMIT 1)) 
		LEFT JOIN tbl_packaging_size c on c.pk_id = a.pk_id
where a.pd_stat=0 and b.randm_session=rsn and b.crt_status=0
  ;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_change_staff_status
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_change_staff_status`;
delimiter ;;
CREATE  PROCEDURE `sp_change_staff_status`(in id INT)
BEGIN
UPDATE tbl_staff_login SET active_stat = (CASE active_stat WHEN 1 THEN 0 ELSE 1 END) where staff_id=id ;
SELECT active_stat  FROM tbl_staff_login WHERE staff_id = id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_change_user_status
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_change_user_status`;
delimiter ;;
CREATE  PROCEDURE `sp_change_user_status`(in id INT)
BEGIN
UPDATE tbl_users SET u_stat = (CASE u_stat WHEN 1 THEN 0 ELSE 1 END) where user_id=id ;
SELECT u_stat  FROM tbl_users WHERE user_id = id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_get_all_orders
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_get_all_orders`;
delimiter ;;
CREATE  PROCEDURE `sp_get_all_orders`()
BEGIN
select a.*,b.* from tbl_payment_details a 
left join tbl_users b on b.user_id=a.user_id 
where a.del_status=0 ;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_get_all_tenders
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_get_all_tenders`;
delimiter ;;
CREATE  PROCEDURE `sp_get_all_tenders`()
BEGIN
select a.*,b.* from tbl_tender a 
left join tbl_farmers b on b.f_id=a.f_id 

;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_get_answer_det
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_get_answer_det`;
delimiter ;;
CREATE  PROCEDURE `sp_get_answer_det`(in id int)
BEGIN
select a.*,b.*,c.* from tbl_forum_answers a
left join tbl_farmers_forum b on b.fr_id=a.fr_id 
left join tbl_farmers c on c.f_id=a.f_id 
where a.stat=0 and a.fr_id=id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_get_cart_price_details
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_get_cart_price_details`;
delimiter ;;
CREATE  PROCEDURE `sp_get_cart_price_details`(in user_id_num int, in ses_id varchar(25))
BEGIN

set @whr = CONCAT('a.randm_session="',ses_id,'"');

set @qry =CONCAT('SELECT count(a.pdt_id) as total_product,round((SUM(b.price * a.p_count * c.pk_value)),2) as offer_price
FROM tbl_cart_details a 
LEFT JOIN tbl_agri_products b on b.pdt_id = a.pdt_id
LEFT JOIN tbl_packaging_size c on c.pk_id = b.pk_id
WHERE ',@whr,'AND a.crt_status=0 ');
PREPARE stmt FROM @qry;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_get_crop_by_pin
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_get_crop_by_pin`;
delimiter ;;
CREATE  PROCEDURE `sp_get_crop_by_pin`(in pin int)
BEGIN
select a.*,b.*,c.* from tbl_crop_pincode a 
left join tbl_agri_crops b on b.cr_id=a.cr_id 
left join tbl_location c on c.value=a.pnc_id 
where a.pnc_id=pin ;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_get_farmer_cmp_orders
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_get_farmer_cmp_orders`;
delimiter ;;
CREATE  PROCEDURE `sp_get_farmer_cmp_orders`(in id int)
BEGIN
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
ROLLBACK;
END;
SELECT a.*,b.*,t2.*,c.*,b.stat as osat FROM tbl_orders b 
left join tbl_agri_products a on a.pdt_id=b.pdt_id
LEFT JOIN tbl_product_image t2 ON (t2.im_id = (SELECT MIN(t2_.im_id) 
    FROM tbl_product_image t2_ WHERE (t2_.pdt_id = a.pdt_id  and t2_.img_stat=0 )  LIMIT 1)) 
		LEFT JOIN tbl_packaging_size c on c.pk_id = a.pk_id
where a.pd_stat=0 and b.f_id=id and b.stat=2
  ;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_get_farmer_cnc_orders
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_get_farmer_cnc_orders`;
delimiter ;;
CREATE  PROCEDURE `sp_get_farmer_cnc_orders`(in id int)
BEGIN
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
ROLLBACK;
END;
SELECT a.*,b.*,t2.*,c.*,b.stat as osat FROM tbl_orders b 
left join tbl_agri_products a on a.pdt_id=b.pdt_id
LEFT JOIN tbl_product_image t2 ON (t2.im_id = (SELECT MIN(t2_.im_id) 
    FROM tbl_product_image t2_ WHERE (t2_.pdt_id = a.pdt_id  and t2_.img_stat=0 )  LIMIT 1)) 
		LEFT JOIN tbl_packaging_size c on c.pk_id = a.pk_id
where a.pd_stat=0 and b.f_id=id and b.stat=3
  ;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_get_farmer_details
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_get_farmer_details`;
delimiter ;;
CREATE  PROCEDURE `sp_get_farmer_details`(in id int)
BEGIN
select a.*,b.*  from tbl_farmers a 
left join tbl_india_state b on b.state_id=a.state_id 
where a.stat=0 and a.f_id=id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_get_farmer_orders
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_get_farmer_orders`;
delimiter ;;
CREATE  PROCEDURE `sp_get_farmer_orders`(in id int)
BEGIN
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
ROLLBACK;
END;
SELECT a.*,b.*,t2.*,c.*,b.stat as osat FROM tbl_orders b 
left join tbl_agri_products a on a.pdt_id=b.pdt_id
LEFT JOIN tbl_product_image t2 ON (t2.im_id = (SELECT MIN(t2_.im_id) 
    FROM tbl_product_image t2_ WHERE (t2_.pdt_id = a.pdt_id  and t2_.img_stat=0 )  LIMIT 1)) 
		LEFT JOIN tbl_packaging_size c on c.pk_id = a.pk_id
where a.pd_stat=0 and b.f_id=id and b.stat<2
  ;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_get_farmer_orders_one
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_get_farmer_orders_one`;
delimiter ;;
CREATE  PROCEDURE `sp_get_farmer_orders_one`(in id int)
BEGIN
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
ROLLBACK;
END;
SELECT a.*,b.*,t2.*,c.*,b.stat as osat,d.*,e.* FROM tbl_orders b 
left join tbl_agri_products a on a.pdt_id=b.pdt_id
LEFT JOIN tbl_product_image t2 ON (t2.im_id = (SELECT MIN(t2_.im_id) 
    FROM tbl_product_image t2_ WHERE (t2_.pdt_id = a.pdt_id  and t2_.img_stat=0 )  LIMIT 1)) 
		LEFT JOIN tbl_packaging_size c on c.pk_id = a.pk_id
		LEFT JOIN tbl_users d on d.user_id = b.user_id
		left join tbl_india_state e on e.state_id=d.u_state

where a.pd_stat=0 and b.o_id=id 
  ;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_get_farmer_reviews
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_get_farmer_reviews`;
delimiter ;;
CREATE  PROCEDURE `sp_get_farmer_reviews`(in id int)
BEGIN
select a.*,b.* from tbl_farm_ratings a 
left join tbl_users b on b.user_id=a.user_id 
where a.f_id=id and a.stat=0;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_get_farmer_reviews_by_ss
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_get_farmer_reviews_by_ss`;
delimiter ;;
CREATE  PROCEDURE `sp_get_farmer_reviews_by_ss`(in id int)
BEGIN
SELECT a.*,b.* FROM tbl_farm_ratings b 
left join tbl_farmers a on a.f_id=b.f_id
where a.stat=0 and b.user_id=id and b.stat=0
  ;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_get_farmers_forum
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_get_farmers_forum`;
delimiter ;;
CREATE  PROCEDURE `sp_get_farmers_forum`()
BEGIN
select a.*,b.* from tbl_farmers_forum a 
left join tbl_farmers b on b.f_id=a.f_id 
where a.fr_stat=0 order by a.fr_id desc;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_get_get_orders_details
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_get_get_orders_details`;
delimiter ;;
CREATE  PROCEDURE `sp_get_get_orders_details`(in id int)
BEGIN
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
ROLLBACK;
END;
SELECT a.*,b.*,t2.*,c.*,b.stat as osat,d.*,e.*,f.* FROM tbl_orders b 
left join tbl_agri_products a on a.pdt_id=b.pdt_id
left join tbl_farmers f on f.f_id=b.f_id
LEFT JOIN tbl_product_image t2 ON (t2.im_id = (SELECT MIN(t2_.im_id) 
    FROM tbl_product_image t2_ WHERE (t2_.pdt_id = a.pdt_id  and t2_.img_stat=0 )  LIMIT 1)) 
		LEFT JOIN tbl_packaging_size c on c.pk_id = a.pk_id
		LEFT JOIN tbl_users d on d.user_id = b.user_id
		left join tbl_india_state e on e.state_id=d.u_state

where a.pd_stat=0 and b.pay_id=id 
  ;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_get_more_products
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_get_more_products`;
delimiter ;;
CREATE  PROCEDURE `sp_get_more_products`(in id int,in pdi int)
BEGIN
select a.*,b.*,c.*,t2.*,a.pdt_id as pro_id,e.*  from tbl_agri_products a 
left join tbl_farmers b on b.f_id=a.f_id 
left join tbl_product_categories c on c.c_id=a.c_id 
LEFT JOIN tbl_product_image t2 ON (t2.im_id = (SELECT MIN(t2_.im_id) 
    FROM tbl_product_image t2_ WHERE (t2_.pdt_id = a.pdt_id  and t2_.img_stat=0 )  LIMIT 1)) 
left join tbl_packaging_size e on e.pk_id=a.pk_id 
where  a.pd_stat=0 and a.c_id=id and a.pdt_id!=pdi  order by rand() limit 4;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_get_more_productssssss
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_get_more_productssssss`;
delimiter ;;
CREATE  PROCEDURE `sp_get_more_productssssss`()
BEGIN
select a.*,b.*,c.*,t2.*,a.pdt_id as pro_id,e.*  from tbl_agri_products a 
left join tbl_farmers b on b.f_id=a.f_id 
left join tbl_product_categories c on c.c_id=a.c_id 
LEFT JOIN tbl_product_image t2 ON (t2.im_id = (SELECT MIN(t2_.im_id) 
    FROM tbl_product_image t2_ WHERE (t2_.pdt_id = a.pdt_id  and t2_.img_stat=0 )  LIMIT 1)) 
left join tbl_packaging_size e on e.pk_id=a.pk_id 
where  a.pd_stat=0   order by rand() limit 4;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_get_orders_cmp
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_get_orders_cmp`;
delimiter ;;
CREATE  PROCEDURE `sp_get_orders_cmp`()
BEGIN
select a.*,b.* from tbl_payment_details a 
left join tbl_users b on b.user_id=a.user_id 
where a.del_status=2 ;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_get_orders_cnc
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_get_orders_cnc`;
delimiter ;;
CREATE  PROCEDURE `sp_get_orders_cnc`()
BEGIN
select a.*,b.* from tbl_payment_details a 
left join tbl_users b on b.user_id=a.user_id 
where a.del_status=3 ;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_get_product_reviews
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_get_product_reviews`;
delimiter ;;
CREATE  PROCEDURE `sp_get_product_reviews`(in id int)
BEGIN
select a.*,b.* from tbl_product_ratings a 
left join tbl_users b on b.user_id=a.user_id 
where a.pdt_id=id and a.stat=0;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_get_product_reviews_frmr
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_get_product_reviews_frmr`;
delimiter ;;
CREATE  PROCEDURE `sp_get_product_reviews_frmr`(in id int)
BEGIN
select a.*,b.*,c.* from tbl_product_ratings a 
left join tbl_users b on b.user_id=a.user_id 
left join tbl_agri_products c on c.pdt_id=a.pdt_id 
where c.f_id=id and a.stat=0;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_get_products_by_category
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_get_products_by_category`;
delimiter ;;
CREATE  PROCEDURE `sp_get_products_by_category`(in id int)
BEGIN
select a.*,b.*,c.*,t2.*,a.pdt_id as pro_id,e.*   from tbl_agri_products a 
left join tbl_farmers b on b.f_id=a.f_id 
left join tbl_product_categories c on c.c_id=a.c_id 
LEFT JOIN tbl_product_image t2 ON (t2.im_id = (SELECT MIN(t2_.im_id) 
    FROM tbl_product_image t2_ WHERE (t2_.pdt_id = a.pdt_id  and t2_.img_stat=0 )  LIMIT 1)) 
		left join tbl_packaging_size e on e.pk_id=a.pk_id 
where a.c_id=id and a.pd_stat=0;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_get_products_by_category_prc
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_get_products_by_category_prc`;
delimiter ;;
CREATE  PROCEDURE `sp_get_products_by_category_prc`(in prc varchar(25),in id int)
BEGIN
select a.*,b.*,c.*,t2.*,a.pdt_id as pro_id,e.*   from tbl_agri_products a 
left join tbl_farmers b on b.f_id=a.f_id 
left join tbl_product_categories c on c.c_id=a.c_id 
LEFT JOIN tbl_product_image t2 ON (t2.im_id = (SELECT MIN(t2_.im_id) 
    FROM tbl_product_image t2_ WHERE (t2_.pdt_id = a.pdt_id  and t2_.img_stat=0 )  LIMIT 1)) 
		left join tbl_packaging_size e on e.pk_id=a.pk_id 
where a.c_id=id and a.pd_stat=0 and FIND_IN_SET(a.prc_range,prc);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_get_products_by_category_prc_scat
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_get_products_by_category_prc_scat`;
delimiter ;;
CREATE  PROCEDURE `sp_get_products_by_category_prc_scat`(in scat varchar(25),in prc varchar(25),in id int)
BEGIN
select a.*,b.*,c.*,t2.*,a.pdt_id as pro_id,e.*   from tbl_agri_products a 
left join tbl_farmers b on b.f_id=a.f_id 
left join tbl_product_categories c on c.c_id=a.c_id 
LEFT JOIN tbl_product_image t2 ON (t2.im_id = (SELECT MIN(t2_.im_id) 
    FROM tbl_product_image t2_ WHERE (t2_.pdt_id = a.pdt_id  and t2_.img_stat=0 )  LIMIT 1)) 
		left join tbl_packaging_size e on e.pk_id=a.pk_id 
where a.c_id=id and a.pd_stat=0 and FIND_IN_SET(a.sub_id,scat) and FIND_IN_SET(a.prc_range,prc);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_get_products_by_category_scat
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_get_products_by_category_scat`;
delimiter ;;
CREATE  PROCEDURE `sp_get_products_by_category_scat`(in scat varchar(25),in id int)
BEGIN
select a.*,b.*,c.*,t2.*,a.pdt_id as pro_id,e.*   from tbl_agri_products a 
left join tbl_farmers b on b.f_id=a.f_id 
left join tbl_product_categories c on c.c_id=a.c_id 
LEFT JOIN tbl_product_image t2 ON (t2.im_id = (SELECT MIN(t2_.im_id) 
    FROM tbl_product_image t2_ WHERE (t2_.pdt_id = a.pdt_id  and t2_.img_stat=0 )  LIMIT 1)) 
		left join tbl_packaging_size e on e.pk_id=a.pk_id 
where a.c_id=id and a.pd_stat=0 and FIND_IN_SET(a.sub_id,scat) ;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_get_products_details
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_get_products_details`;
delimiter ;;
CREATE  PROCEDURE `sp_get_products_details`(in id int)
BEGIN
select a.*,b.*,c.*,a.pdt_id as pro_id,e.*   from tbl_agri_products a 
left join tbl_farmers b on b.f_id=a.f_id 
left join tbl_product_categories c on c.c_id=a.c_id 
left join tbl_packaging_size e on e.pk_id=a.pk_id 
where a.pdt_id=id and a.pd_stat=0;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_get_products_for_home
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_get_products_for_home`;
delimiter ;;
CREATE  PROCEDURE `sp_get_products_for_home`()
BEGIN
select a.*,b.*,c.*,t2.*,a.pdt_id as pro_id,e.*  from tbl_agri_products a 
left join tbl_farmers b on b.f_id=a.f_id 
left join tbl_product_categories c on c.c_id=a.c_id 
LEFT JOIN tbl_product_image t2 ON (t2.im_id = (SELECT MIN(t2_.im_id) 
    FROM tbl_product_image t2_ WHERE (t2_.pdt_id = a.pdt_id  and t2_.img_stat=0 )  LIMIT 1)) 
		left join tbl_packaging_size e on e.pk_id=a.pk_id 
where a.show_hm=1 and a.pd_stat=0;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_get_products_of_farmer
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_get_products_of_farmer`;
delimiter ;;
CREATE  PROCEDURE `sp_get_products_of_farmer`(in id int)
BEGIN
select a.*,b.*,c.*,t2.*,a.pdt_id as pro_id,e.*  from tbl_agri_products a 
left join tbl_farmers b on b.f_id=a.f_id 
left join tbl_product_categories c on c.c_id=a.c_id 
LEFT JOIN tbl_product_image t2 ON (t2.im_id = (SELECT MIN(t2_.im_id) 
    FROM tbl_product_image t2_ WHERE (t2_.pdt_id = a.pdt_id  and t2_.img_stat=0 )  LIMIT 1)) 
		left join tbl_packaging_size e on e.pk_id=a.pk_id 
where a.f_id=id and a.pd_stat=0;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_get_qn_det
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_get_qn_det`;
delimiter ;;
CREATE  PROCEDURE `sp_get_qn_det`(in id int)
BEGIN
select a.*,b.* from tbl_farmers_forum a 
left join tbl_farmers b on b.f_id=a.f_id 
where a.fr_stat=0 and a.fr_id=id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_get_staffs
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_get_staffs`;
delimiter ;;
CREATE  PROCEDURE `sp_get_staffs`()
BEGIN
select a.*,b.* from tbl_staff_login a 
left join tbl_staff_types b on b.team_id=a.staff_category 
 ;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_get_user_reviews
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_get_user_reviews`;
delimiter ;;
CREATE  PROCEDURE `sp_get_user_reviews`(in id int)
BEGIN
SELECT a.*,b.*,t2.*,c.* FROM tbl_product_ratings b 
left join tbl_agri_products a on a.pdt_id=b.pdt_id
LEFT JOIN tbl_product_image t2 ON (t2.im_id = (SELECT MIN(t2_.im_id) 
    FROM tbl_product_image t2_ WHERE (t2_.pdt_id = a.pdt_id  and t2_.img_stat=0 )  LIMIT 1)) 
		LEFT JOIN tbl_packaging_size c on c.pk_id = a.pk_id
where a.pd_stat=0 and b.user_id=id and b.stat=0
  ;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_get_user_wishlists
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_get_user_wishlists`;
delimiter ;;
CREATE  PROCEDURE `sp_get_user_wishlists`(in id int)
BEGIN
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
ROLLBACK;
END;
SELECT a.*,b.*,t2.*,c.* FROM tbl_product_wish_list b 
left join tbl_agri_products a on a.pdt_id=b.pdt_id
LEFT JOIN tbl_product_image t2 ON (t2.im_id = (SELECT MIN(t2_.im_id) 
    FROM tbl_product_image t2_ WHERE (t2_.pdt_id = a.pdt_id  and t2_.img_stat=0 )  LIMIT 1)) 
		LEFT JOIN tbl_packaging_size c on c.pk_id = a.pk_id
where a.pd_stat=0 and b.user_id=id and b.stat=0
  ;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_load_stores_by_categores
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_load_stores_by_categores`;
delimiter ;;
CREATE  PROCEDURE `sp_load_stores_by_categores`(in id int)
BEGIN
select a.*,b.* from tbl_stores a 
left join tbl_store_categories b on b.ca_id=a.ca_id 
where  a.st_stat=0 and a.ca_id=id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_user_details
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_user_details`;
delimiter ;;
CREATE  PROCEDURE `sp_user_details`(in user_id int)
BEGIN
select a.*,b.* from tbl_users a 
left join tbl_india_state b on b.state_id=a.u_state
where a.user_id=user_id and a.u_stat=0;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_user_orders
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_user_orders`;
delimiter ;;
CREATE  PROCEDURE `sp_user_orders`(in id int)
BEGIN
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
ROLLBACK;
END;
SELECT a.*,b.*,t2.*,c.* FROM tbl_orders b 
left join tbl_agri_products a on a.pdt_id=b.pdt_id
LEFT JOIN tbl_product_image t2 ON (t2.im_id = (SELECT MIN(t2_.im_id) 
    FROM tbl_product_image t2_ WHERE (t2_.pdt_id = a.pdt_id  and t2_.img_stat=0 )  LIMIT 1)) 
		LEFT JOIN tbl_packaging_size c on c.pk_id = a.pk_id
where a.pd_stat=0 and b.pay_id=id 
  ;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
