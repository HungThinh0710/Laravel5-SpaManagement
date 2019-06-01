/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 100126
 Source Host           : localhost:3306
 Source Schema         : db_sync_spa

 Target Server Type    : MySQL
 Target Server Version : 100126
 File Encoding         : 65001

 Date: 01/06/2019 14:53:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admincp_users
-- ----------------------------
DROP TABLE IF EXISTS `admincp_users`;
CREATE TABLE `admincp_users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phonenumber` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admincp_users
-- ----------------------------
INSERT INTO `admincp_users` VALUES (2, 'admin', 'nhthinh.17it@sict.udn.vn', '+84832463198', '$2y$10$mlzVS1HpZpNdHsS.3QW3NulaehxAKbpX4wRdnc1W/t9o6on0gzX3C', '9mL4xV3jvC5Y2c0BhD84YlSFAAVanK5RUPq5elcSZsKGmyJMPbINQk3JXj9O', NULL, '2018-12-26 15:16:28');

-- ----------------------------
-- Table structure for spa_blogs
-- ----------------------------
DROP TABLE IF EXISTS `spa_blogs`;
CREATE TABLE `spa_blogs`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `note` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of spa_blogs
-- ----------------------------
INSERT INTO `spa_blogs` VALUES (1, 'Ngày thành lập', 'Các phòng xoa bóp của chúng tôi được trang bị đầy đủ tiện nghi sạch đẹp, cung cách phục vụ nhiệt tình đặc biệt là với giá cả bình dân, có khuyến mãi đặc biệt đối với những khách hàng thường xuyên đến với chúng tôi. Quý khách đến với massage Nhật Thanh Việt không những thỏa mãn nhu cầu về sức khỏe mà còn mang lại một việc làm rất ý nghĩa đó là góp phần ủng hộ, giúp người khiếm thị đứng vững với khả năng nghề nghiệp. Chúng tôi luôn phục vụ Quý khách với phương châm: massage Nhật Thanh Việt – Chăm sóc sức khỏe vàng', 'Có sinh sẽ có tử, song chỉ cần bạn vẫn đang có mặt trên đời này, thì phải sống bằng cách tốt nhất. Có thể không có tình yêu, không có đồ hàng hiệu, song không thể không vui vẻ.', '2018-12-04 05:52:22', '2018-12-08 15:32:28');
INSERT INTO `spa_blogs` VALUES (2, 'TT- top trang 1', 'Thay da Trắng Toàn Thân sau 4 lần với 9 bước điều trị cho mỗi lần. Trọn Gói thay da mới Cao Cấp 4 lần trong 4 tuần với Công Nghệ Nano Purence White Pháp & Luxury White Dr.Pro Nhật Bản. Những tinh chất quy hiếm như Ngọc trai Emma Thụy Sỹ, tinh dầu oliu Italia, sữa non & tinh chất hoa hồng Pháp Purence.', NULL, '2018-12-08 15:16:06', '2018-12-08 15:16:06');
INSERT INTO `spa_blogs` VALUES (3, 'TT- top trang 2', 'Một Spa tiêu chuẩn phải đáp ứng đủ 5 giác quan của con người. Khi bước vào một spa tiêu chuẩn, tai bạn phải nghe thấy những thanh âm thiên nhiên hoặc nhạc trị liệu chuyên nghiệp, mũi bạn phải ngửi thấy mùi tinh dầu và mùi hoa cỏ, mắt bạn phải nhìn thấy những cảnh vật nhẹ nhàng thư giãn, miệng bạn phải được thưởng thức những loại trà thảo mộc, bạn phải cảm nhận sự mềm mại dịu dàng khi nhân viên massage cho bạn.', NULL, '2018-12-08 15:16:23', '2018-12-08 15:16:23');
INSERT INTO `spa_blogs` VALUES (4, 'TT- top trang 3', 'Có thể hiểu Spa về mặt ngữ nghĩa là suối nước khoáng, về mặt thuật ngữ được hiểu là cách trị bệnh bằng hơi nước và nước khoáng thiên nhiên. Theo cách hiểu ngày nay thì spa là dịch vụ chăm sóc sức khỏe và làm đẹp bằng nước và massage kết hợp với những sản phẩm làm đẹp có nguồn gốc thiên nhiên. Theo định nghĩa của hiệp hội Spa thế giới thì Spa là tất cả các liệu pháp đem lại sự cân bằng năng lượng cho cơ thể và tâm hồn.', NULL, '2018-12-08 15:16:46', '2018-12-08 15:16:46');

-- ----------------------------
-- Table structure for spa_comment
-- ----------------------------
DROP TABLE IF EXISTS `spa_comment`;
CREATE TABLE `spa_comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `message` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `post_id` int(10) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_Comment`(`post_id`) USING BTREE,
  CONSTRAINT `FK_Comment` FOREIGN KEY (`post_id`) REFERENCES `spa_posts` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of spa_comment
-- ----------------------------
INSERT INTO `spa_comment` VALUES (1, 'Trần Khắc Tuấn', 'khtuankendy@gmail.com', 'Bài viết rất bổ ích', 1, '2018-12-22 20:20:56', '2018-12-22 20:20:56');
INSERT INTO `spa_comment` VALUES (2, 'Tuan Tran', 'tktuan.17it1@sict.udn.vn', 'Mặt nạ dùng rất tốt', 2, '2018-12-22 20:38:01', '2018-12-22 20:38:01');
INSERT INTO `spa_comment` VALUES (3, 'Trần Khắc Tuấn', 'khtuankendy@gmail.com', 'Dịch vụ rất tốt', 3, '2018-12-22 20:39:28', '2018-12-22 20:39:28');
INSERT INTO `spa_comment` VALUES (4, 'Tuan Tran', 'tktuan.17it1@sict.udn.vn', 'Tôi thấy dịch vụ rất tuyệt', 1, '2018-12-22 20:41:07', '2018-12-22 20:41:07');
INSERT INTO `spa_comment` VALUES (5, 'Trần Khắc Tuấn', 'khtuankendy@gmail.com', 'Rất tốt', 2, '2018-12-23 04:09:53', '2018-12-23 04:09:53');
INSERT INTO `spa_comment` VALUES (6, 'Tuan Tran', 'tktuan.17it1@sict.udn.vn', 'UKm', 2, '2018-12-23 04:13:06', '2018-12-23 04:13:06');
INSERT INTO `spa_comment` VALUES (7, 'Trần Khắc Tuấn', 'khtuankendy@gmail.com', 'Được', 2, '2018-12-23 04:13:50', '2018-12-23 04:13:50');
INSERT INTO `spa_comment` VALUES (8, 'Tuan Tran', 'tktuan.17it1@sict.udn.vn', 'Hay', 2, '2018-12-23 04:15:08', '2018-12-23 04:15:08');
INSERT INTO `spa_comment` VALUES (9, 'Trần Khắc Tuấn', 'khtuankendy@gmail.com', 'Nhân viên rất chuyên nghiệp', 1, '2018-12-23 04:16:49', '2018-12-23 04:16:49');
INSERT INTO `spa_comment` VALUES (10, 'Tuan Tran', 'tktuan.17it1@sict.udn.vn', 'Tôi cũng thấy V', 1, '2018-12-23 04:17:34', '2018-12-23 04:17:34');

-- ----------------------------
-- Table structure for spa_feedback
-- ----------------------------
DROP TABLE IF EXISTS `spa_feedback`;
CREATE TABLE `spa_feedback`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `message` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of spa_feedback
-- ----------------------------
INSERT INTO `spa_feedback` VALUES (21, 'Trần Khắc Tuấn', 'Gia Lai', 'khtuankendy@gmail.com', '985204903', 'Cho em hỏi, không biết bên shop có dịch vụ làm nails không ạ?', '2018-12-13 12:43:06', '2018-12-13 12:43:06');
INSERT INTO `spa_feedback` VALUES (22, 'Chu Văn Hoàng', 'Gia  Lai', 'hoangchu283@gmail.com', '0373580025', 'Bên shop có tuyển nhân viên không ạ?', '2018-12-22 19:58:39', '2018-12-22 19:58:39');
INSERT INTO `spa_feedback` VALUES (23, 'Nguyễn Trung Hiếu', 'Quãng Ngãi', 'hieunguyen@gmail.com', '098243413', 'Dịch vụ massage toàn thân giá bao nhiêu vậy ạ?', '2018-12-22 20:04:27', '2018-12-22 20:04:27');
INSERT INTO `spa_feedback` VALUES (24, 'Phan Xuân Vũ', 'Bình Định', 'xuanvu@gmail.com', '0213451255', 'Dịch vụ bên shop rất tốt.', '2018-12-22 20:07:59', '2018-12-22 20:07:59');
INSERT INTO `spa_feedback` VALUES (25, 'Nguyễn Hưng Thịnh', 'Quãng Ngãi', 'hungthinh@gmail.com', '0242345223', 'Nhân viên bên shop làm dịch vụ tắm trắng rất tuyệt.', '2018-12-22 20:13:04', '2018-12-22 20:13:04');
INSERT INTO `spa_feedback` VALUES (26, 'Trần Khắc Tuấn', 'Hà Tĩnh', 'khtuankendy@gmail.com', '985204903', 'Dịch vụ rất tốt', '2018-12-22 20:17:42', '2018-12-22 20:17:42');
INSERT INTO `spa_feedback` VALUES (27, 'Trần Khắc Tuấn', 'Hà Nội', 'khtuankendy@gmail.com', '985204903', 'Nhân viên làm việc rất chuyên nghiệp', '2018-12-22 20:19:25', '2018-12-22 20:19:25');
INSERT INTO `spa_feedback` VALUES (28, 'Trần Khắc Tuấn', 'Lào Cai', 'khtuankendy@gmail.com', '985204903', 'Anh chị làm việc rất tận tâm', '2018-12-23 04:25:33', '2018-12-23 04:25:33');
INSERT INTO `spa_feedback` VALUES (29, 'Chu Văn Hoàng', 'GL', 'hoangvan@gmail.com', '0234243525', 'Được', '2018-12-23 04:28:46', '2018-12-23 04:28:46');

-- ----------------------------
-- Table structure for spa_galleries
-- ----------------------------
DROP TABLE IF EXISTS `spa_galleries`;
CREATE TABLE `spa_galleries`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `service_type_id` int(10) NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_Gallery_stg`(`service_type_id`) USING BTREE,
  CONSTRAINT `FK_Services1` FOREIGN KEY (`service_type_id`) REFERENCES `spams_services` (`ServicesId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of spa_galleries
-- ----------------------------
INSERT INTO `spa_galleries` VALUES (3, 'Oasis advanced', 'zdxNyamJAh.jpg', 'Massage thư giãn cho đầu và cổ (30 phút);\r\nChăm sóc và dưỡng trắng da mặt bằng mặt nạ yến mạch (60 phút)', 3, 'massage', '2018-12-04 05:57:52', '2018-12-23 06:05:06');
INSERT INTO `spa_galleries` VALUES (4, 'Traveller’s Retreat', 'H7Lao4LabT.jpg', 'Xông hơi khô và ướt với thảo dược + Ngâm hồ thủy lực (15 phút)\r\nMassage với tinh dầu thơm (75 phút)', 1, 'markup', '2018-12-04 06:08:44', '2018-12-04 06:08:44');
INSERT INTO `spa_galleries` VALUES (5, 'Heaven', 'OJavAe1iYz.jpg', 'Xông hơi khô và ướt với thảo dược + Ngâm hồ thủy lực (30 phút)\r\nMassage toàn thân với tinh dầu thơm (60 phút)', 4, 'massage', '2018-12-04 06:10:33', '2018-12-04 06:10:33');
INSERT INTO `spa_galleries` VALUES (6, 'Mysterious', 'urOtHhryEz.jpg', 'Xông hơi khô và ướt với thảo dược + Ngâm hồ thủy lực ( 30 phút)\r\nMassage toàn thân ( 60 phút)\r\nTẩy tế bào chết + đắp mặt nạ toàn thân', 4, 'massage', '2018-12-04 06:11:16', '2018-12-04 06:11:16');
INSERT INTO `spa_galleries` VALUES (7, 'Escapes', 'Z5yqEjqm44.jpg', 'Sen Spa sử dụng các sản phẩm chăm sóc da mặt mang thương hiệu Physio Natura', 3, 'hair', '2018-12-04 06:12:08', '2018-12-04 06:12:08');
INSERT INTO `spa_galleries` VALUES (8, 'Oasis advanced', 'UXwf2mW0iZ.jpg', 'Chăm sóc và dưỡng trắng da mặt bằng mặt nạ yến mạch', 3, 'markup', '2018-12-04 06:44:21', '2018-12-04 06:44:21');
INSERT INTO `spa_galleries` VALUES (9, 'Tắm trắng công nghệ Nano', 'LMmn3vgBZE.jpg', 'Làm mờ các vết nám, tăng sinh collagen, xóa nếp nhăn, dưỡng trắng sáng toàn thân, phân hủy sắc tố melanin dưới lớp trung bì liệu trình 12 lần', 6, 'beautiful', '2018-12-08 15:11:54', '2018-12-08 15:11:54');
INSERT INTO `spa_galleries` VALUES (10, 'Chăm sóc da chuyên sâu', 'LKKLtDPVNL.jpg', 'Thay da Trắng Toàn Thân sau 4 lần với 9 bước điều trị cho mỗi lần. Trọn Gói thay da mới Cao Cấp 4 lần trong 4 tuần với Công Nghệ Nano Purence White Pháp & Luxury White Dr.Pro Nhật Bản.', 6, 'beautiful', '2018-12-08 15:13:40', '2018-12-08 15:13:40');

-- ----------------------------
-- Table structure for spa_posts
-- ----------------------------
DROP TABLE IF EXISTS `spa_posts`;
CREATE TABLE `spa_posts`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `service_type_id` int(10) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_Posts_stp`(`service_type_id`) USING BTREE,
  CONSTRAINT `FK_Services2` FOREIGN KEY (`service_type_id`) REFERENCES `spams_services` (`ServicesId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of spa_posts
-- ----------------------------
INSERT INTO `spa_posts` VALUES (1, 'Mặt nạ MACRO VINTAGE', 'tbiIgBsfXM.jpg', 'Nếu bạn muốn thấy được kết quả làn da trở nên căng mịn ngay lập tức thì mặt nạ Koh Gen Do chính là sản phẩm cần thiết. Mỗi miếng mặt nạ giấy được làm từ cotton mềm có chiết xuất serum chống lão hóa. Bên cạnh đó, sự góp mặt của các thành phần siêu dưỡng ẩm như natri hyaluronate chiết xuất tảo phát sáng chính là điểm cộng đắt giá tạo nên loại mặt nạ dưỡng da cao cấp +.', 5, '2018-12-04 05:40:18', '2018-12-23 06:19:35');
INSERT INTO `spa_posts` VALUES (2, 'Mặt nạ ERNO LASZLO FIRMARINE HYDROGEL', 'ZUnGXrBqQH.jpg', 'Erno Laszlo Firmarine Hydrogel Mask là mặt nạ dạng gel có khả năng cải thiện độ đàn hồi, mang lại cho phái đẹp làn da mịn màng. Được tạo nên từ chiết xuất thực vật và dầu dưỡng da, các thành phần sẽ dễ dàng thâm nhập các lỗ chân lông để loại bỏ độc tố làm hồi sinh làn da hoàn toàn. Cụ thể, dầu argan sẽ giúp trung hòa tổn thương các gốc tự do, tăng cường độ ẩm, tảo ngăn ngừa sự mất nước và loại bỏ các độc tố, chiết xuất bưởi xóa mờ các vết nhăn.', 5, '2018-12-04 05:40:59', '2018-12-04 05:40:59');
INSERT INTO `spa_posts` VALUES (3, 'Bấm huyệt Thái dương', 'fnhva2Mcp1.jpg', 'Bấm huyệt là một dạng massage mà hiệu quả của nó thì đã được chứng minh bởi rất nhiều nghiên cứu khoa học. Đây là một hình thức châm cứu và trị liệu phản xạ tự nhiên, tuy nhiên không đòi hỏi chúng ta phải có những kiến thức y học đặc biệt.', 3, '2018-12-04 05:42:16', '2018-12-04 05:42:16');

-- ----------------------------
-- Table structure for spa_reply
-- ----------------------------
DROP TABLE IF EXISTS `spa_reply`;
CREATE TABLE `spa_reply`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `message` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `comment_id` int(10) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_Reply`(`comment_id`) USING BTREE,
  CONSTRAINT `FK_Reply` FOREIGN KEY (`comment_id`) REFERENCES `spa_comment` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for spa_reservation
-- ----------------------------
DROP TABLE IF EXISTS `spa_reservation`;
CREATE TABLE `spa_reservation`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date` datetime(0) NOT NULL,
  `service_id` int(10) NOT NULL,
  `gender` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_Reservation`(`service_id`) USING BTREE,
  CONSTRAINT `FK_Services3` FOREIGN KEY (`service_id`) REFERENCES `spams_services` (`ServicesId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of spa_reservation
-- ----------------------------
INSERT INTO `spa_reservation` VALUES (6, 'Trần Khắc Tuấn', '0985204903', 'khtuankendy@gmail.com', '2018-12-23 08:00:00', 1, 'Nam', NULL);
INSERT INTO `spa_reservation` VALUES (7, 'Trần Khắc Tuấn', '0985204903', 'khtuankendy@gmail.com', '2018-12-28 18:00:00', 5, 'Nam', NULL);

-- ----------------------------
-- Table structure for spa_services
-- ----------------------------
DROP TABLE IF EXISTS `spa_services`;
CREATE TABLE `spa_services`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `aside` int(10) NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` double(10, 2) NULL DEFAULT NULL,
  `description` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `service_type_id` int(10) NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_SV_sts`(`service_type_id`) USING BTREE,
  CONSTRAINT `FK_Services4` FOREIGN KEY (`service_type_id`) REFERENCES `spams_services` (`ServicesId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of spa_services
-- ----------------------------
INSERT INTO `spa_services` VALUES (1, 'Massage Chân', 2, '5P3bAXcoOJ.jpg', 100000.00, 'Massage chân (hay còn gọi là foot massage) - phương pháp dùng những kỹ thuật hoàn hảo kết hợp với các loại tinh dầu, đá nóng, đá muối tác động lên những huyệt vị ở lòng bàn chân, bắp chân, từ đó giúp kích thích tuần hoàn máu và gia tăng lượng máu lưu thông đến tim và não, mang đến cho chúng ta thể chất tráng kiện và tinh thần minh mẫn.', 1, '2018-12-22 17:53:50', '2018-12-22 10:53:50');
INSERT INTO `spa_services` VALUES (2, 'Massage tay', 2, '9ZcTl5js6h.jpg', 200000.00, 'Bạn hãy thử giữ 2 ngón tay sát nhau hoặc massage ngón tay trong 60 giây và xem những gì xảy ra với cơ thể của bạn. Bạn sẽ không tin được vào tác dụng của việc này đâu!', 2, '2018-12-09 21:02:31', '2018-12-09 14:02:31');
INSERT INTO `spa_services` VALUES (3, 'Massage mặt', 2, 'hl8jp6Didw.jpg', 150000.00, 'Massage mặt là một trong những phương pháp làm đẹp được rất nhiều chị em lựa chọn hiện nay bởi các bước thực hiện đơn giản, ít tốn kém nhưng hiệu quả mang lại khá cao. Vậy massage mặt có tác dụng gì và khi thực hiện cần lưu ý điều gì? Hãy cùng tham khảo qua bài viết dưới đây nhé!', 3, '2018-12-09 21:02:57', '2018-12-09 14:02:57');
INSERT INTO `spa_services` VALUES (4, 'Massage toàn thân', 2, '7mTPywCRLR.jpg', 500000.00, 'Massage toàn thân là cách đơn giản giúp bạn xóa tan hoàn toàn mệt mỏi trong cơ thể. Nhờ sự tác động vật lý lên toàn bộ cơ thể giúp kích thích các cơ nhanh hồi phục, cải thiện tuần hoàn màu giúp xua tan mệt mỏi. Ngoài ra, massage toàn thân còn giúp làn da mịn màng chắc khỏe nhờ sự tác động và kích thích sản sinh tái tạo collagen.', 4, '2018-12-09 21:03:23', '2018-12-09 14:03:23');
INSERT INTO `spa_services` VALUES (5, 'Tẩy mụn siêu cấp', 1, 'kUU1C2aEER.jpg', 200000.00, 'Đừng sờ nặn mụn sẽ làm chúng thêm trầm trọng. Thay vào đó bạn có thể dùng mặt nạ chế biến từ hoa trái, vật dụng trong nhà để nhanh lấy lại làn da láng mịn và sạch nốt mụn.', 5, '2018-12-09 21:04:26', '2018-12-09 14:04:26');
INSERT INTO `spa_services` VALUES (6, 'Tắm trắng toàn thân', 3, 'jlZLv7Bizl.jpg', 700000.00, 'Từ lâu làn da trắng hồng rạng rỡ đã trở thành niềm mơ ước của hầu hết chị em phụ nữ châu Á. Tuy mốt da nâu, da ngăm đen đang lên ngôi nhưng phần đông, chị em vẫn muốn sở hữu làn da trắng mịn.', 6, '2018-12-09 21:05:15', '2018-12-09 14:05:15');

-- ----------------------------
-- Table structure for spa_slider
-- ----------------------------
DROP TABLE IF EXISTS `spa_slider`;
CREATE TABLE `spa_slider`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of spa_slider
-- ----------------------------
INSERT INTO `spa_slider` VALUES (2, 'j9JFiUjlMD.jpg', '2018-12-08 04:29:55', '2018-12-08 04:29:55');
INSERT INTO `spa_slider` VALUES (3, 'e4vNb3Z8QM.jpg', '2018-12-08 04:47:06', '2018-12-08 04:47:06');
INSERT INTO `spa_slider` VALUES (4, '8kjCMc14ES.jpg', '2018-12-08 04:47:13', '2018-12-08 04:47:13');
INSERT INTO `spa_slider` VALUES (5, 'pRRZ0VAU8Y.jpg', '2018-12-08 04:47:22', '2018-12-08 04:47:22');
INSERT INTO `spa_slider` VALUES (6, 'WN0NjVimMU.jpg', '2018-12-08 04:47:35', '2018-12-08 04:47:35');
INSERT INTO `spa_slider` VALUES (8, 'KBRB3MD4Cl.jpg', '2018-12-08 04:51:07', '2018-12-08 04:51:07');
INSERT INTO `spa_slider` VALUES (9, 'dqVoUJ3eOe.jpg', '2018-12-08 04:51:15', '2018-12-08 04:51:15');
INSERT INTO `spa_slider` VALUES (10, 'U93XkjPalH.jpg', '2018-12-08 11:15:14', '2018-12-08 11:15:14');

-- ----------------------------
-- Table structure for spams_coupon
-- ----------------------------
DROP TABLE IF EXISTS `spams_coupon`;
CREATE TABLE `spams_coupon`  (
  `CouponId` int(11) NOT NULL AUTO_INCREMENT,
  `CouponCode` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `CouponValue` float(255, 0) NULL DEFAULT NULL,
  `CouponDateStart` datetime(0) NULL DEFAULT NULL,
  `CouponDateExpired` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`CouponId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of spams_coupon
-- ----------------------------
INSERT INTO `spams_coupon` VALUES (1, 'NHT', 70000, '2018-11-27 15:04:00', '2018-11-28 15:04:00');
INSERT INTO `spams_coupon` VALUES (2, 'OPENSPA', 100000, '2018-11-27 15:08:28', '2018-12-24 15:08:32');

-- ----------------------------
-- Table structure for spams_customer
-- ----------------------------
DROP TABLE IF EXISTS `spams_customer`;
CREATE TABLE `spams_customer`  (
  `CustomerId` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `CustomerName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CustomerPhoneNumber` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `CustomerGender` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`CustomerId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of spams_customer
-- ----------------------------
INSERT INTO `spams_customer` VALUES ('KVL302403', 'Tuấn Trần', '0985204903', 1);
INSERT INTO `spams_customer` VALUES ('KVL407467', 'Tuấn Trần', '0985204903', 1);
INSERT INTO `spams_customer` VALUES ('KVL40771', 'Thịnh Nguyễn', '0124465515', 1);
INSERT INTO `spams_customer` VALUES ('KVL451417', 'Traafn Van Beq', '134593858', 1);
INSERT INTO `spams_customer` VALUES ('KVL546671', 'Vũ Đệ', '444454401', 1);

-- ----------------------------
-- Table structure for spams_customer_member
-- ----------------------------
DROP TABLE IF EXISTS `spams_customer_member`;
CREATE TABLE `spams_customer_member`  (
  `CustomerMemberId` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `CustomerMemberName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CustomerMemberPhoneNumber` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `CustomerMemberGender` int(1) NULL DEFAULT NULL,
  `CustomerMemberAddress` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CustomerMemberNote` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`CustomerMemberId`) USING BTREE,
  INDEX `CustomerMemberName`(`CustomerMemberName`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of spams_customer_member
-- ----------------------------
INSERT INTO `spams_customer_member` VALUES ('KHTV2', 'Quỳnh Hoa', '0553', 0, 'TP.HCM', 'Khách hàng khó tính', '2018-12-22 07:41:21', '2018-12-22 09:35:42');
INSERT INTO `spams_customer_member` VALUES ('KHTV3', 'Vũ Phan', '0167677665', 1, 'Bình Định', 'Khách bình thường', '2018-12-22 07:57:09', '2018-12-22 07:57:09');
INSERT INTO `spams_customer_member` VALUES ('KHTV4', 'Thương Nguyễn', '123123', 1, 'Quy Nhơn', 'Thương ú', '2018-12-22 08:19:57', '2018-12-22 08:19:57');

-- ----------------------------
-- Table structure for spams_customerbooking
-- ----------------------------
DROP TABLE IF EXISTS `spams_customerbooking`;
CREATE TABLE `spams_customerbooking`  (
  `CustomerBookingId` int(10) NOT NULL AUTO_INCREMENT,
  `CustomerMember` tinyint(4) NULL DEFAULT NULL,
  `CustomerId` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `RoomId` int(10) NULL DEFAULT NULL,
  `StaffId` int(10) NULL DEFAULT NULL,
  `CustomerBookingTime` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`CustomerBookingId`) USING BTREE,
  INDEX `FK_CustomerId`(`CustomerId`) USING BTREE,
  INDEX `FK_RoomId`(`RoomId`) USING BTREE,
  INDEX `FK_StaffId`(`StaffId`) USING BTREE,
  CONSTRAINT `FK_RoomId` FOREIGN KEY (`RoomId`) REFERENCES `spams_room` (`RoomId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_StaffId` FOREIGN KEY (`StaffId`) REFERENCES `spams_staff` (`StaffId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of spams_customerbooking
-- ----------------------------
INSERT INTO `spams_customerbooking` VALUES (5, 0, 'KVL407467', 4, 13, '2018-12-26 17:23:52', '2018-12-26 17:23:52');

-- ----------------------------
-- Table structure for spams_customerbookingdetail
-- ----------------------------
DROP TABLE IF EXISTS `spams_customerbookingdetail`;
CREATE TABLE `spams_customerbookingdetail`  (
  `CustomerBookingDetailId` int(10) NOT NULL AUTO_INCREMENT,
  `CustomerBookingId` int(10) NULL DEFAULT NULL,
  `ServicesId` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`CustomerBookingDetailId`) USING BTREE,
  INDEX `FK_CustomerBooking`(`CustomerBookingId`) USING BTREE,
  INDEX `FK_ServicesId`(`ServicesId`) USING BTREE,
  CONSTRAINT `FK_CustomerBooking` FOREIGN KEY (`CustomerBookingId`) REFERENCES `spams_customerbooking` (`CustomerBookingId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_ServicesId` FOREIGN KEY (`ServicesId`) REFERENCES `spams_services` (`ServicesId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of spams_customerbookingdetail
-- ----------------------------
INSERT INTO `spams_customerbookingdetail` VALUES (13, 5, 1);
INSERT INTO `spams_customerbookingdetail` VALUES (14, 5, 3);
INSERT INTO `spams_customerbookingdetail` VALUES (15, 5, 4);

-- ----------------------------
-- Table structure for spams_history_member
-- ----------------------------
DROP TABLE IF EXISTS `spams_history_member`;
CREATE TABLE `spams_history_member`  (
  `HistoryMemberId` int(10) NOT NULL AUTO_INCREMENT,
  `CustomerMemberId` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `RoomId` int(10) NULL DEFAULT NULL,
  `StaffId` int(10) NULL DEFAULT NULL,
  `MoneyTotal` float NULL DEFAULT NULL,
  `MoneyPaid` float NULL DEFAULT NULL,
  `CouponCode` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `BookingTime` datetime(0) NULL DEFAULT NULL,
  `EndTime` datetime(0) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`HistoryMemberId`) USING BTREE,
  INDEX `CustomerMemberId`(`CustomerMemberId`) USING BTREE,
  CONSTRAINT `FK_CustomerMemberId_toHistoryMember` FOREIGN KEY (`CustomerMemberId`) REFERENCES `spams_customer_member` (`CustomerMemberId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for spams_history_member_detail
-- ----------------------------
DROP TABLE IF EXISTS `spams_history_member_detail`;
CREATE TABLE `spams_history_member_detail`  (
  `HistoryMemberDetailId` int(10) NOT NULL AUTO_INCREMENT,
  `HistoryMemberId` int(10) NULL DEFAULT NULL,
  `CustomerMemberId` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ServicesId` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`HistoryMemberDetailId`) USING BTREE,
  INDEX `FK_CustomerBooking`(`CustomerMemberId`) USING BTREE,
  INDEX `FK_ServicesId`(`ServicesId`) USING BTREE,
  INDEX `HistoryMemberId`(`HistoryMemberId`) USING BTREE,
  CONSTRAINT `HistoryMemberId` FOREIGN KEY (`HistoryMemberId`) REFERENCES `spams_history_member` (`HistoryMemberId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ServicesMemDetail` FOREIGN KEY (`ServicesId`) REFERENCES `spams_services` (`ServicesId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for spams_logs
-- ----------------------------
DROP TABLE IF EXISTS `spams_logs`;
CREATE TABLE `spams_logs`  (
  `LogsId` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerName` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CustomerPhoneNumber` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `CustomerGender` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `RoomId` int(10) NULL DEFAULT NULL,
  `StaffId` int(10) NULL DEFAULT NULL,
  `MoneyTotal` float NULL DEFAULT NULL,
  `MoneyPaid` float NULL DEFAULT NULL,
  `CouponCode` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `BookingTime` datetime(0) NULL DEFAULT NULL,
  `EndTime` datetime(0) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`LogsId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for spams_logs_detail
-- ----------------------------
DROP TABLE IF EXISTS `spams_logs_detail`;
CREATE TABLE `spams_logs_detail`  (
  `LogDetailId` int(10) NOT NULL AUTO_INCREMENT,
  `LogsId` int(10) NULL DEFAULT NULL,
  `CustomerPhoneNumber` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ServicesId` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`LogDetailId`) USING BTREE,
  INDEX `FK_CustomerBooking`(`CustomerPhoneNumber`) USING BTREE,
  INDEX `FK_ServicesId`(`ServicesId`) USING BTREE,
  INDEX `Logs`(`LogsId`) USING BTREE,
  CONSTRAINT `FK_Services_LogsDetails` FOREIGN KEY (`ServicesId`) REFERENCES `spams_services` (`ServicesId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `Logs` FOREIGN KEY (`LogsId`) REFERENCES `spams_logs` (`LogsId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for spams_reservation
-- ----------------------------
DROP TABLE IF EXISTS `spams_reservation`;
CREATE TABLE `spams_reservation`  (
  `ReservationId` int(11) NOT NULL AUTO_INCREMENT,
  `ReservationStatus` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ReservationCustomerName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ReservationCustomerPhoneNumber` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ReservationCustomerEmail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ReservationCustomerGender` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ReservationService` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ReservationDescription` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ReservationStart` datetime(0) NULL DEFAULT NULL,
  `ReservationClass` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`ReservationId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of spams_reservation
-- ----------------------------
INSERT INTO `spams_reservation` VALUES (1, 'dendy', 'Nguyễn Hồng Vân', '0905135969', 'hvan98@gmail.com', 'Nữ', NULL, 'Muốn chăm sóc spa', '2018-12-26 21:18:45', 'm-fc-event--danger', '2018-12-26 21:18:48', '2018-12-26 00:13:31');
INSERT INTO `spams_reservation` VALUES (3, 'accepted', 'THương Nguyễn', '0905166622', 'thng@gmail.com', 'Nam', '[Massage Chân;Massage tay;Massage toàn thân;]', 'Tôi muốn phục vụ tận tình', '2018-12-27 17:00:00', 'm-fc-event--success', '2018-12-25 10:13:37', '2018-12-26 10:19:57');
INSERT INTO `spams_reservation` VALUES (4, 'dendy', 'Trần Khắc Tuấn', '0985204903', 'khactuan@gmail.com', 'Nam', '[Massage tay;Massage mặt;]', NULL, '2018-12-27 13:00:00', 'm-fc-event--danger', '2018-12-26 19:40:25', '2018-12-26 19:58:39');
INSERT INTO `spams_reservation` VALUES (5, 'pending', 'Tuấn Khắc', '01234567895', 'tuantran@gmail.com', 'Nam', '[Massage mặt;Massage toàn thân;]', 'Cần ....', '2018-12-28 12:00:00', 'm-fc-event--warning', '2018-12-26 19:48:21', '2018-12-26 19:48:21');
INSERT INTO `spams_reservation` VALUES (6, 'pending', 'Hưng Thịnh', '095052151', 'nhtnokia@gmail.com', 'Nữ', '[Massage Chân;Massage tay;Massage mặt;Massage toàn thân;Tẩy mụn siêu cấp;Tắm trắng toàn thân;]', 'Làm cẩn thận, khách khó tính', '2018-12-28 14:00:00', 'm-fc-event--warning', '2018-12-26 20:05:11', '2018-12-26 20:05:11');
INSERT INTO `spams_reservation` VALUES (7, 'pending', 'Hoàng 3D', '01254462116', 'hoangchu@gmail.com', 'Nam', '[Massage Chân;Massage toàn thân;Tẩy mụn siêu cấp;Tắm trắng toàn thân;]', 'Cần.,,.....', '2018-12-28 19:00:00', 'm-fc-event--warning', '2018-12-26 20:08:37', '2018-12-26 20:08:37');
INSERT INTO `spams_reservation` VALUES (8, 'pending', 'Hoàng Văn', '1244540212', 'hoang@gmail.com', 'Nam', '[Massage tay;Massage mặt;]', NULL, '2018-12-28 20:00:00', 'm-fc-event--warning', '2018-12-26 21:03:40', '2018-12-26 21:03:40');

-- ----------------------------
-- Table structure for spams_room
-- ----------------------------
DROP TABLE IF EXISTS `spams_room`;
CREATE TABLE `spams_room`  (
  `RoomId` int(10) NOT NULL AUTO_INCREMENT,
  `RoomTypeId` int(10) NULL DEFAULT NULL,
  `RoomName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `RoomBlank` int(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`RoomId`) USING BTREE,
  INDEX `FK_RoomType`(`RoomTypeId`) USING BTREE,
  CONSTRAINT `FK_RoomType` FOREIGN KEY (`RoomTypeId`) REFERENCES `spams_roomtype` (`RoomTypeId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of spams_room
-- ----------------------------
INSERT INTO `spams_room` VALUES (1, 1, 'Phòng chờ nhân viên', 1000);
INSERT INTO `spams_room` VALUES (2, 2, 'Song Tử', 15);
INSERT INTO `spams_room` VALUES (3, 2, 'Kim Ngưu', 15);
INSERT INTO `spams_room` VALUES (4, 3, 'Xử Nử', 9);
INSERT INTO `spams_room` VALUES (5, 3, 'Thiên Bình', 10);
INSERT INTO `spams_room` VALUES (6, 4, 'Ma Kết', 5);
INSERT INTO `spams_room` VALUES (7, 4, 'Nhân mã', 5);

-- ----------------------------
-- Table structure for spams_roomtype
-- ----------------------------
DROP TABLE IF EXISTS `spams_roomtype`;
CREATE TABLE `spams_roomtype`  (
  `RoomTypeId` int(10) NOT NULL AUTO_INCREMENT,
  `RoomTypeName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `RoomTypeCapacity` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`RoomTypeId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of spams_roomtype
-- ----------------------------
INSERT INTO `spams_roomtype` VALUES (1, 'Nhân viên', 1000);
INSERT INTO `spams_roomtype` VALUES (2, 'Phòng thường', 15);
INSERT INTO `spams_roomtype` VALUES (3, 'Phòng Massage', 10);
INSERT INTO `spams_roomtype` VALUES (4, 'Phòng V.I.P', 5);

-- ----------------------------
-- Table structure for spams_services
-- ----------------------------
DROP TABLE IF EXISTS `spams_services`;
CREATE TABLE `spams_services`  (
  `ServicesId` int(10) NOT NULL AUTO_INCREMENT,
  `ServicesName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ServicesDescription` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ServicesPrice` double(20, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`ServicesId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of spams_services
-- ----------------------------
INSERT INTO `spams_services` VALUES (1, 'Massage Chân', NULL, 100000.00);
INSERT INTO `spams_services` VALUES (2, 'Massage tay', NULL, 200000.00);
INSERT INTO `spams_services` VALUES (3, 'Massage mặt', NULL, 150000.00);
INSERT INTO `spams_services` VALUES (4, 'Massage toàn thân', NULL, 500000.00);
INSERT INTO `spams_services` VALUES (5, 'Tẩy mụn siêu cấp', NULL, 200000.00);
INSERT INTO `spams_services` VALUES (6, 'Tắm trắng toàn thân', NULL, 700000.00);

-- ----------------------------
-- Table structure for spams_staff
-- ----------------------------
DROP TABLE IF EXISTS `spams_staff`;
CREATE TABLE `spams_staff`  (
  `StaffId` int(10) NOT NULL AUTO_INCREMENT,
  `StaffName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `StaffPhoneNumber` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `StaffGender` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `StaffAddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `StaffActive` int(1) NULL DEFAULT NULL,
  `StaffWorkAtRoom` int(11) NULL DEFAULT NULL,
  `StaffWorkAtCus` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `StaffRating` double(10, 3) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`StaffId`) USING BTREE,
  INDEX `FK_WorkAtRoom`(`StaffWorkAtRoom`) USING BTREE,
  CONSTRAINT `FK_WorkAtRoom` FOREIGN KEY (`StaffWorkAtRoom`) REFERENCES `spams_room` (`RoomId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of spams_staff
-- ----------------------------
INSERT INTO `spams_staff` VALUES (1, 'Mỹ Lệ', '0948786786', 'Nữ', 'Da Nang', 0, 1, '0', 0.000, NULL, '2018-12-26 16:46:18');
INSERT INTO `spams_staff` VALUES (2, 'XuKa', NULL, 'Nữ', NULL, 0, 1, '0', 0.000, NULL, '2018-12-26 16:08:21');
INSERT INTO `spams_staff` VALUES (3, 'Chaien', NULL, 'Nam', NULL, 0, 1, '0', 0.000, NULL, '2018-12-26 16:55:17');
INSERT INTO `spams_staff` VALUES (4, 'Suneo', NULL, 'Nam', NULL, 0, 1, '0', 0.000, NULL, '2018-12-23 05:59:32');
INSERT INTO `spams_staff` VALUES (5, 'DeKhiXuKi', NULL, 'Nam', NULL, 0, 1, '0', 0.000, NULL, '2018-12-23 09:46:26');
INSERT INTO `spams_staff` VALUES (6, 'Hinata', NULL, 'Nữ', NULL, 0, 1, '0', 0.000, NULL, '2018-12-26 16:55:04');
INSERT INTO `spams_staff` VALUES (7, 'P.K', NULL, 'Nam', NULL, 0, 1, '0', 0.000, NULL, '2018-12-26 17:46:03');
INSERT INTO `spams_staff` VALUES (8, 'Holys', NULL, 'Nữ', NULL, 0, 1, '0', 0.000, NULL, NULL);
INSERT INTO `spams_staff` VALUES (9, 'Naruto', NULL, 'Nam', NULL, 0, 1, '0', 0.000, NULL, '2018-12-23 06:16:31');
INSERT INTO `spams_staff` VALUES (10, 'Sasuke', NULL, 'Nam', NULL, 0, 1, '0', 0.000, NULL, NULL);
INSERT INTO `spams_staff` VALUES (13, 'Thuong Nguyen', '0925262554', 'Nữ', NULL, 1, 4, 'KVL407467', 0.000, NULL, '2018-12-26 17:23:52');

-- ----------------------------
-- View structure for customermember
-- ----------------------------
DROP VIEW IF EXISTS `customermember`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `customermember` AS SELECT * FROM spams_customer_member ; ;

SET FOREIGN_KEY_CHECKS = 1;
