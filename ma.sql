/*
Navicat MySQL Data Transfer

Source Server         : 本机
Source Server Version : 50638
Source Host           : localhost:3306
Source Database       : ma

Target Server Type    : MYSQL
Target Server Version : 50638
File Encoding         : 65001

Date: 2019-06-11 14:16:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `logging_event`
-- ----------------------------
DROP TABLE IF EXISTS `logging_event`;
CREATE TABLE `logging_event` (
  `timestmp` bigint(20) NOT NULL,
  `formatted_message` text COLLATE utf8_bin NOT NULL,
  `logger_name` varchar(254) COLLATE utf8_bin NOT NULL,
  `level_string` varchar(254) COLLATE utf8_bin NOT NULL,
  `thread_name` varchar(254) COLLATE utf8_bin DEFAULT NULL,
  `reference_flag` smallint(6) DEFAULT NULL,
  `arg0` varchar(254) COLLATE utf8_bin DEFAULT NULL,
  `arg1` varchar(254) COLLATE utf8_bin DEFAULT NULL,
  `arg2` varchar(254) COLLATE utf8_bin DEFAULT NULL,
  `arg3` varchar(254) COLLATE utf8_bin DEFAULT NULL,
  `caller_filename` varchar(254) COLLATE utf8_bin NOT NULL,
  `caller_class` varchar(254) COLLATE utf8_bin NOT NULL,
  `caller_method` varchar(254) COLLATE utf8_bin NOT NULL,
  `caller_line` char(4) COLLATE utf8_bin NOT NULL,
  `event_id` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of logging_event
-- ----------------------------
INSERT INTO `logging_event` VALUES ('1484644917850', 0x5374617274696E67204D614170706C69636174696F6E206F6E2064656C6C2077697468205049442031373133362028443A5C636F64655C6D615F746573745C7461726765745C636C617373657320737461727465642062792064656C6C20696E20443A5C636F64655C6D615F7465737429, 'com.gd.MaApplication', 'INFO', 'main', '1', null, null, null, null, 'StartupInfoLogger.java', 'org.springframework.boot.StartupInfoLogger', 'logStarting', '48', '1');
INSERT INTO `logging_event` VALUES ('1484644917859', 0x48563030303030313A2048696265726E6174652056616C696461746F7220352E322E342E46696E616C, 'org.hibernate.validator.internal.util.Version', 'INFO', 'background-preinit', '1', null, null, null, null, 'Version.java', 'org.hibernate.validator.internal.util.Version', '<clinit>', '30', '2');
INSERT INTO `logging_event` VALUES ('1484644918055', 0x4E6F206163746976652070726F66696C65207365742C2066616C6C696E67206261636B20746F2064656661756C742070726F66696C65733A2064656661756C74, 'com.gd.MaApplication', 'INFO', 'main', '1', null, null, null, null, 'SpringApplication.java', 'org.springframework.boot.SpringApplication', 'logStartupProfileInfo', '661', '3');
INSERT INTO `logging_event` VALUES ('1484644918220', 0x52656672657368696E67206F72672E737072696E676672616D65776F726B2E626F6F742E636F6E746578742E656D6265646465642E416E6E6F746174696F6E436F6E666967456D6265646465645765624170706C69636174696F6E436F6E746578744037626535386631363A20737461727475702064617465205B547565204A616E2031372031373A32313A35382043535420323031375D3B20726F6F74206F6620636F6E7465787420686965726172636879, 'org.springframework.boot.context.embedded.AnnotationConfigEmbeddedWebApplicationContext', 'INFO', 'main', '1', null, null, null, null, 'AbstractApplicationContext.java', 'org.springframework.context.support.AbstractApplicationContext', 'prepareRefresh', '582', '4');
INSERT INTO `logging_event` VALUES ('1484644919973', 0x4265616E20276F72672E737072696E676672616D65776F726B2E7472616E73616374696F6E2E616E6E6F746174696F6E2E50726F78795472616E73616374696F6E4D616E6167656D656E74436F6E66696775726174696F6E27206F662074797065205B636C617373206F72672E737072696E676672616D65776F726B2E7472616E73616374696F6E2E616E6E6F746174696F6E2E50726F78795472616E73616374696F6E4D616E6167656D656E74436F6E66696775726174696F6E2424456E68616E6365724279537072696E6743474C4942242462666464656130645D206973206E6F7420656C696769626C6520666F722067657474696E672070726F63657373656420627920616C6C204265616E506F737450726F636573736F72732028666F72206578616D706C653A206E6F7420656C696769626C6520666F72206175746F2D70726F7879696E6729, 'org.springframework.context.support.PostProcessorRegistrationDelegate$BeanPostProcessorChecker', 'INFO', 'main', '1', null, null, null, null, 'PostProcessorRegistrationDelegate.java', 'org.springframework.context.support.PostProcessorRegistrationDelegate$BeanPostProcessorChecker', 'postProcessAfterInitialization', '325', '5');
INSERT INTO `logging_event` VALUES ('1484644920314', 0x4265616E20276F72672E737072696E676672616D65776F726B2E63616368652E616E6E6F746174696F6E2E50726F787943616368696E67436F6E66696775726174696F6E27206F662074797065205B636C617373206F72672E737072696E676672616D65776F726B2E63616368652E616E6E6F746174696F6E2E50726F787943616368696E67436F6E66696775726174696F6E2424456E68616E6365724279537072696E6743474C49422424386630323032625D206973206E6F7420656C696769626C6520666F722067657474696E672070726F63657373656420627920616C6C204265616E506F737450726F636573736F72732028666F72206578616D706C653A206E6F7420656C696769626C6520666F72206175746F2D70726F7879696E6729, 'org.springframework.context.support.PostProcessorRegistrationDelegate$BeanPostProcessorChecker', 'INFO', 'main', '1', null, null, null, null, 'PostProcessorRegistrationDelegate.java', 'org.springframework.context.support.PostProcessorRegistrationDelegate$BeanPostProcessorChecker', 'postProcessAfterInitialization', '325', '6');
INSERT INTO `logging_event` VALUES ('1484644920924', 0x4C6F6767696E6720696E697469616C697A65642040343932306D73, 'org.eclipse.jetty.util.log', 'INFO', 'main', '1', null, null, null, null, 'Log.java', 'org.eclipse.jetty.util.log.Log', 'initialized', '192', '7');
INSERT INTO `logging_event` VALUES ('1484644921215', 0x53657276657220696E697469616C697A6564207769746820706F72743A2039303930, 'org.springframework.boot.context.embedded.jetty.JettyEmbeddedServletContainerFactory', 'INFO', 'main', '1', null, null, null, null, 'JettyEmbeddedServletContainerFactory.java', 'org.springframework.boot.context.embedded.jetty.JettyEmbeddedServletContainerFactory', 'getEmbeddedServletContainer', '171', '8');
INSERT INTO `logging_event` VALUES ('1484644921254', 0x6A657474792D392E332E31342E763230313631303238, 'org.eclipse.jetty.server.Server', 'INFO', 'main', '1', null, null, null, null, 'Server.java', 'org.eclipse.jetty.server.Server', 'doStart', '346', '9');
INSERT INTO `logging_event` VALUES ('1484644921482', 0x496E697469616C697A696E6720537072696E6720656D626564646564205765624170706C69636174696F6E436F6E74657874, 'application', 'INFO', 'main', '1', null, null, null, null, 'ContextHandler.java', 'org.eclipse.jetty.server.handler.ContextHandler$Context', 'log', '2167', '10');
INSERT INTO `logging_event` VALUES ('1484644921518', 0x526F6F74205765624170706C69636174696F6E436F6E746578743A20696E697469616C697A6174696F6E20636F6D706C6574656420696E2033323938206D73, 'org.springframework.web.context.ContextLoader', 'INFO', 'main', '1', null, null, null, null, 'EmbeddedWebApplicationContext.java', 'org.springframework.boot.context.embedded.EmbeddedWebApplicationContext', 'prepareEmbeddedWebApplicationContext', '276', '11');
INSERT INTO `logging_event` VALUES ('1484644921862', 0x4D617070696E672066696C7465723A2027636861726163746572456E636F64696E6746696C7465722720746F3A205B2F2A5D, 'org.springframework.boot.web.servlet.FilterRegistrationBean', 'INFO', 'main', '1', null, null, null, null, 'AbstractFilterRegistrationBean.java', 'org.springframework.boot.web.servlet.AbstractFilterRegistrationBean', 'configure', '258', '12');
INSERT INTO `logging_event` VALUES ('1484644921951', 0x4D617070696E672066696C7465723A202768696464656E487474704D6574686F6446696C7465722720746F3A205B2F2A5D, 'org.springframework.boot.web.servlet.FilterRegistrationBean', 'INFO', 'main', '1', null, null, null, null, 'AbstractFilterRegistrationBean.java', 'org.springframework.boot.web.servlet.AbstractFilterRegistrationBean', 'configure', '258', '13');
INSERT INTO `logging_event` VALUES ('1484644921980', 0x4D617070696E672066696C7465723A202768747470507574466F726D436F6E74656E7446696C7465722720746F3A205B2F2A5D, 'org.springframework.boot.web.servlet.FilterRegistrationBean', 'INFO', 'main', '1', null, null, null, null, 'AbstractFilterRegistrationBean.java', 'org.springframework.boot.web.servlet.AbstractFilterRegistrationBean', 'configure', '258', '14');
INSERT INTO `logging_event` VALUES ('1484644922017', 0x4D617070696E672066696C7465723A202772657175657374436F6E7465787446696C7465722720746F3A205B2F2A5D, 'org.springframework.boot.web.servlet.FilterRegistrationBean', 'INFO', 'main', '1', null, null, null, null, 'AbstractFilterRegistrationBean.java', 'org.springframework.boot.web.servlet.AbstractFilterRegistrationBean', 'configure', '258', '15');
INSERT INTO `logging_event` VALUES ('1484644922050', 0x4D617070696E672066696C7465723A2027737072696E67536563757269747946696C746572436861696E2720746F3A205B2F2A5D, 'org.springframework.boot.web.servlet.DelegatingFilterProxyRegistrationBean', 'INFO', 'main', '1', null, null, null, null, 'AbstractFilterRegistrationBean.java', 'org.springframework.boot.web.servlet.AbstractFilterRegistrationBean', 'configure', '258', '16');
INSERT INTO `logging_event` VALUES ('1484644922125', 0x4D617070696E6720736572766C65743A202764697370617463686572536572766C65742720746F205B2F5D, 'org.springframework.boot.web.servlet.ServletRegistrationBean', 'INFO', 'main', '1', null, null, null, null, 'ServletRegistrationBean.java', 'org.springframework.boot.web.servlet.ServletRegistrationBean', 'onStartup', '190', '17');
INSERT INTO `logging_event` VALUES ('1484644922385', 0x53746172746564206F2E732E622E632E652E6A2E4A65747479456D626564646564576562417070436F6E746578744033333231356666627B2F6D612C66696C653A2F2F2F433A2F55736572732F64656C6C2F417070446174612F4C6F63616C2F54656D702F6A657474792D646F63626173652E353138313231373736323237373336313939332E393039302F2C415641494C41424C457D, 'org.eclipse.jetty.server.handler.ContextHandler', 'INFO', 'main', '1', null, null, null, null, 'ContextHandler.java', 'org.eclipse.jetty.server.handler.ContextHandler', 'doStart', '781', '18');
INSERT INTO `logging_event` VALUES ('1484644922413', 0x537461727465642040363430386D73, 'org.eclipse.jetty.server.Server', 'INFO', 'main', '1', null, null, null, null, 'Server.java', 'org.eclipse.jetty.server.Server', 'doStart', '414', '19');
INSERT INTO `logging_event` VALUES ('1484644922511', 0x496E697469616C697A696E6720456843616368652043616368654D616E61676572, 'org.springframework.cache.ehcache.EhCacheManagerFactoryBean', 'INFO', 'main', '1', null, null, null, null, 'EhCacheManagerFactoryBean.java', 'org.springframework.cache.ehcache.EhCacheManagerFactoryBean', 'afterPropertiesSet', '130', '20');
INSERT INTO `logging_event` VALUES ('1484644925013', 0x4D617070656420227B5B2F6170692F68656C6C6F2F68656C6C6F5D7D22206F6E746F207075626C6963206A6176612E6C616E672E537472696E6720636F6D2E67642E6170692E48656C6C6F436F6E74726F6C6C65722E68656C6C6F2829, 'org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping', 'INFO', 'main', '1', null, null, null, null, 'AbstractHandlerMethodMapping.java', 'org.springframework.web.servlet.handler.AbstractHandlerMethodMapping$MappingRegistry', 'register', '543', '21');
INSERT INTO `logging_event` VALUES ('1484644925104', 0x4D617070656420227B5B2F6163636F756E742F616C6C5D7D22206F6E746F207075626C6963206A6176612E6C616E672E537472696E6720636F6D2E67642E636F6E74726F6C6C65722E6163636F756E742E4163636F756E74436F6E74726F6C6C65722E676574416C6C4163636F756E7473286A6176612E73656375726974792E5072696E636970616C2C6A617661782E736572766C65742E687474702E48747470536572766C65745265717565737429, 'org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping', 'INFO', 'main', '1', null, null, null, null, 'AbstractHandlerMethodMapping.java', 'org.springframework.web.servlet.handler.AbstractHandlerMethodMapping$MappingRegistry', 'register', '543', '22');
INSERT INTO `logging_event` VALUES ('1484644925138', 0x4D617070656420227B5B2F746573742F68656C6C6F5D2C6D6574686F64733D5B4745545D7D22206F6E746F207075626C6963206A6176612E6C616E672E537472696E6720636F6D2E67642E636F6E74726F6C6C65722E68656C6C6F2E48656C6C6F2E696E646578286A617661782E736572766C65742E687474702E48747470536572766C65745265717565737429, 'org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping', 'INFO', 'main', '1', null, null, null, null, 'AbstractHandlerMethodMapping.java', 'org.springframework.web.servlet.handler.AbstractHandlerMethodMapping$MappingRegistry', 'register', '543', '23');
INSERT INTO `logging_event` VALUES ('1484644925170', 0x4D617070656420227B5B2F696E6465782F746573745D7D22206F6E746F207075626C6963206A6176612E6C616E672E537472696E6720636F6D2E67642E636F6E74726F6C6C65722E496E646578436F6E74726F6C6C65722E696E6465782829, 'org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping', 'INFO', 'main', '1', null, null, null, null, 'AbstractHandlerMethodMapping.java', 'org.springframework.web.servlet.handler.AbstractHandlerMethodMapping$MappingRegistry', 'register', '543', '24');
INSERT INTO `logging_event` VALUES ('1484644925206', 0x4D617070656420227B5B2F76322F6170692D646F63735D2C6D6574686F64733D5B4745545D7D22206F6E746F207075626C6963206F72672E737072696E676672616D65776F726B2E687474702E526573706F6E7365456E746974793C737072696E67666F782E646F63756D656E746174696F6E2E737072696E672E7765622E6A736F6E2E4A736F6E3E20737072696E67666F782E646F63756D656E746174696F6E2E73776167676572322E7765622E5377616767657232436F6E74726F6C6C65722E676574446F63756D656E746174696F6E286A6176612E6C616E672E537472696E6729, 'org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping', 'INFO', 'main', '1', null, null, null, null, 'AbstractHandlerMethodMapping.java', 'org.springframework.web.servlet.handler.AbstractHandlerMethodMapping$MappingRegistry', 'register', '543', '25');
INSERT INTO `logging_event` VALUES ('1484644925238', 0x4D617070656420227B5B2F636F6E66696775726174696F6E2F73656375726974795D7D22206F6E746F206F72672E737072696E676672616D65776F726B2E687474702E526573706F6E7365456E746974793C737072696E67666F782E646F63756D656E746174696F6E2E737761676765722E7765622E5365637572697479436F6E66696775726174696F6E3E20737072696E67666F782E646F63756D656E746174696F6E2E737761676765722E7765622E4170695265736F75726365436F6E74726F6C6C65722E7365637572697479436F6E66696775726174696F6E2829, 'org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping', 'INFO', 'main', '1', null, null, null, null, 'AbstractHandlerMethodMapping.java', 'org.springframework.web.servlet.handler.AbstractHandlerMethodMapping$MappingRegistry', 'register', '543', '26');
INSERT INTO `logging_event` VALUES ('1484644925272', 0x4D617070656420227B5B2F636F6E66696775726174696F6E2F75695D7D22206F6E746F206F72672E737072696E676672616D65776F726B2E687474702E526573706F6E7365456E746974793C737072696E67666F782E646F63756D656E746174696F6E2E737761676765722E7765622E5569436F6E66696775726174696F6E3E20737072696E67666F782E646F63756D656E746174696F6E2E737761676765722E7765622E4170695265736F75726365436F6E74726F6C6C65722E7569436F6E66696775726174696F6E2829, 'org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping', 'INFO', 'main', '1', null, null, null, null, 'AbstractHandlerMethodMapping.java', 'org.springframework.web.servlet.handler.AbstractHandlerMethodMapping$MappingRegistry', 'register', '543', '27');
INSERT INTO `logging_event` VALUES ('1484644925302', 0x4D617070656420227B5B2F737761676765722D7265736F75726365735D7D22206F6E746F206F72672E737072696E676672616D65776F726B2E687474702E526573706F6E7365456E746974793C6A6176612E7574696C2E4C6973743C737072696E67666F782E646F63756D656E746174696F6E2E737761676765722E7765622E537761676765725265736F757263653E3E20737072696E67666F782E646F63756D656E746174696F6E2E737761676765722E7765622E4170695265736F75726365436F6E74726F6C6C65722E737761676765725265736F75726365732829, 'org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping', 'INFO', 'main', '1', null, null, null, null, 'AbstractHandlerMethodMapping.java', 'org.springframework.web.servlet.handler.AbstractHandlerMethodMapping$MappingRegistry', 'register', '543', '28');
INSERT INTO `logging_event` VALUES ('1484644925340', 0x4D617070656420227B5B2F6572726F725D7D22206F6E746F207075626C6963206F72672E737072696E676672616D65776F726B2E687474702E526573706F6E7365456E746974793C6A6176612E7574696C2E4D61703C6A6176612E6C616E672E537472696E672C206A6176612E6C616E672E4F626A6563743E3E206F72672E737072696E676672616D65776F726B2E626F6F742E6175746F636F6E6669677572652E7765622E42617369634572726F72436F6E74726F6C6C65722E6572726F72286A617661782E736572766C65742E687474702E48747470536572766C65745265717565737429, 'org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping', 'INFO', 'main', '1', null, null, null, null, 'AbstractHandlerMethodMapping.java', 'org.springframework.web.servlet.handler.AbstractHandlerMethodMapping$MappingRegistry', 'register', '543', '29');
INSERT INTO `logging_event` VALUES ('1484644925369', 0x4D617070656420227B5B2F6572726F725D2C70726F64756365733D5B746578742F68746D6C5D7D22206F6E746F207075626C6963206F72672E737072696E676672616D65776F726B2E7765622E736572766C65742E4D6F64656C416E6456696577206F72672E737072696E676672616D65776F726B2E626F6F742E6175746F636F6E6669677572652E7765622E42617369634572726F72436F6E74726F6C6C65722E6572726F7248746D6C286A617661782E736572766C65742E687474702E48747470536572766C6574526571756573742C6A617661782E736572766C65742E687474702E48747470536572766C6574526573706F6E736529, 'org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping', 'INFO', 'main', '1', null, null, null, null, 'AbstractHandlerMethodMapping.java', 'org.springframework.web.servlet.handler.AbstractHandlerMethodMapping$MappingRegistry', 'register', '543', '30');
INSERT INTO `logging_event` VALUES ('1484644925939', 0x4372656174696E672066696C74657220636861696E3A20416E74205B7061747465726E3D272F737761676765722D75692E68746D6C275D2C205B5D, 'org.springframework.security.web.DefaultSecurityFilterChain', 'INFO', 'main', '1', null, null, null, null, 'DefaultSecurityFilterChain.java', 'org.springframework.security.web.DefaultSecurityFilterChain', '<init>', '43', '31');
INSERT INTO `logging_event` VALUES ('1484644926024', 0x4372656174696E672066696C74657220636861696E3A20416E74205B7061747465726E3D272F737761676765722F2A2A275D2C205B5D, 'org.springframework.security.web.DefaultSecurityFilterChain', 'INFO', 'main', '1', null, null, null, null, 'DefaultSecurityFilterChain.java', 'org.springframework.security.web.DefaultSecurityFilterChain', '<init>', '43', '32');
INSERT INTO `logging_event` VALUES ('1484644926054', 0x4372656174696E672066696C74657220636861696E3A20416E74205B7061747465726E3D272F76322F6170692D646F6373275D2C205B5D, 'org.springframework.security.web.DefaultSecurityFilterChain', 'INFO', 'main', '1', null, null, null, null, 'DefaultSecurityFilterChain.java', 'org.springframework.security.web.DefaultSecurityFilterChain', '<init>', '43', '33');
INSERT INTO `logging_event` VALUES ('1484644926090', 0x4372656174696E672066696C74657220636861696E3A20416E74205B7061747465726E3D272F7765626A6172732F2A2A275D2C205B5D, 'org.springframework.security.web.DefaultSecurityFilterChain', 'INFO', 'main', '1', null, null, null, null, 'DefaultSecurityFilterChain.java', 'org.springframework.security.web.DefaultSecurityFilterChain', '<init>', '43', '34');
INSERT INTO `logging_event` VALUES ('1484644926120', 0x4372656174696E672066696C74657220636861696E3A20416E74205B7061747465726E3D272F737761676765722D7265736F75726365732F2A2A275D2C205B5D, 'org.springframework.security.web.DefaultSecurityFilterChain', 'INFO', 'main', '1', null, null, null, null, 'DefaultSecurityFilterChain.java', 'org.springframework.security.web.DefaultSecurityFilterChain', '<init>', '43', '35');
INSERT INTO `logging_event` VALUES ('1484644926168', 0x4372656174696E672066696C74657220636861696E3A20416E74205B7061747465726E3D272F696D616765732F2A2A275D2C205B5D, 'org.springframework.security.web.DefaultSecurityFilterChain', 'INFO', 'main', '1', null, null, null, null, 'DefaultSecurityFilterChain.java', 'org.springframework.security.web.DefaultSecurityFilterChain', '<init>', '43', '36');
INSERT INTO `logging_event` VALUES ('1484644926212', 0x4372656174696E672066696C74657220636861696E3A20416E74205B7061747465726E3D272F636F6E66696775726174696F6E2F2A2A275D2C205B5D, 'org.springframework.security.web.DefaultSecurityFilterChain', 'INFO', 'main', '1', null, null, null, null, 'DefaultSecurityFilterChain.java', 'org.springframework.security.web.DefaultSecurityFilterChain', '<init>', '43', '37');
INSERT INTO `logging_event` VALUES ('1484644926393', 0x4372656174696E672066696C74657220636861696E3A206F72672E737072696E676672616D65776F726B2E73656375726974792E7765622E7574696C2E6D6174636865722E416E79526571756573744D61746368657240312C205B6F72672E737072696E676672616D65776F726B2E73656375726974792E7765622E636F6E746578742E726571756573742E6173796E632E5765624173796E634D616E61676572496E746567726174696F6E46696C7465724036303735613465612C206F72672E737072696E676672616D65776F726B2E73656375726974792E7765622E636F6E746578742E5365637572697479436F6E7465787450657273697374656E636546696C7465724033613764363937362C206F72672E737072696E676672616D65776F726B2E73656375726974792E7765622E6865616465722E48656164657257726974657246696C7465724033376438353632662C206F72672E737072696E676672616D65776F726B2E73656375726974792E7765622E637372662E4373726646696C7465724037623662393963352C206F72672E737072696E676672616D65776F726B2E73656375726974792E7765622E61757468656E7469636174696F6E2E6C6F676F75742E4C6F676F757446696C7465724033343661323739392C206F72672E737072696E676672616D65776F726B2E73656375726974792E7765622E61757468656E7469636174696F6E2E7777772E426173696341757468656E7469636174696F6E46696C74657240353739656538322C206F72672E737072696E676672616D65776F726B2E73656375726974792E7765622E7361766564726571756573742E526571756573744361636865417761726546696C74657240336231383935652C206F72672E737072696E676672616D65776F726B2E73656375726974792E7765622E736572766C65746170692E5365637572697479436F6E74657874486F6C64657241776172655265717565737446696C74657240363466343962332C206F72672E737072696E676672616D65776F726B2E73656375726974792E7765622E73657373696F6E2E53657373696F6E4D616E6167656D656E7446696C7465724033393439353061642C206F72672E737072696E676672616D65776F726B2E73656375726974792E7765622E6163636573732E457863657074696F6E5472616E736C6174696F6E46696C7465724037393435346438652C206F72672E737072696E676672616D65776F726B2E73656375726974792E7765622E6163636573732E696E746572636570742E46696C7465725365637572697479496E746572636570746F724033323266383466645D, 'org.springframework.security.web.DefaultSecurityFilterChain', 'INFO', 'main', '1', null, null, null, null, 'DefaultSecurityFilterChain.java', 'org.springframework.security.web.DefaultSecurityFilterChain', '<init>', '43', '38');
INSERT INTO `logging_event` VALUES ('1484644926699', 0x4C6F6F6B696E6720666F722040436F6E74726F6C6C65724164766963653A206F72672E737072696E676672616D65776F726B2E626F6F742E636F6E746578742E656D6265646465642E416E6E6F746174696F6E436F6E666967456D6265646465645765624170706C69636174696F6E436F6E746578744037626535386631363A20737461727475702064617465205B547565204A616E2031372031373A32313A35382043535420323031375D3B20726F6F74206F6620636F6E7465787420686965726172636879, 'org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter', 'INFO', 'main', '1', null, null, null, null, 'RequestMappingHandlerAdapter.java', 'org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter', 'initControllerAdviceCache', '534', '39');
INSERT INTO `logging_event` VALUES ('1484644926955', 0x4D61707065642055524C2070617468205B2F7765626A6172732F2A2A5D206F6E746F2068616E646C6572206F662074797065205B636C617373206F72672E737072696E676672616D65776F726B2E7765622E736572766C65742E7265736F757263652E5265736F75726365487474705265717565737448616E646C65725D, 'org.springframework.web.servlet.handler.SimpleUrlHandlerMapping', 'INFO', 'main', '1', null, null, null, null, 'AbstractUrlHandlerMapping.java', 'org.springframework.web.servlet.handler.AbstractUrlHandlerMapping', 'registerHandler', '354', '40');
INSERT INTO `logging_event` VALUES ('1484644926984', 0x4D61707065642055524C2070617468205B2F2A2A5D206F6E746F2068616E646C6572206F662074797065205B636C617373206F72672E737072696E676672616D65776F726B2E7765622E736572766C65742E7265736F757263652E5265736F75726365487474705265717565737448616E646C65725D, 'org.springframework.web.servlet.handler.SimpleUrlHandlerMapping', 'INFO', 'main', '1', null, null, null, null, 'AbstractUrlHandlerMapping.java', 'org.springframework.web.servlet.handler.AbstractUrlHandlerMapping', 'registerHandler', '354', '41');
INSERT INTO `logging_event` VALUES ('1484644927087', 0x4D61707065642055524C2070617468205B2F2A2A2F66617669636F6E2E69636F5D206F6E746F2068616E646C6572206F662074797065205B636C617373206F72672E737072696E676672616D65776F726B2E7765622E736572766C65742E7265736F757263652E5265736F75726365487474705265717565737448616E646C65725D, 'org.springframework.web.servlet.handler.SimpleUrlHandlerMapping', 'INFO', 'main', '1', null, null, null, null, 'AbstractUrlHandlerMapping.java', 'org.springframework.web.servlet.handler.AbstractUrlHandlerMapping', 'registerHandler', '354', '42');
INSERT INTO `logging_event` VALUES ('1484644927803', 0x5265676973746572696E67206265616E7320666F72204A4D58206578706F73757265206F6E2073746172747570, 'org.springframework.jmx.export.annotation.AnnotationMBeanExporter', 'INFO', 'main', '1', null, null, null, null, 'MBeanExporter.java', 'org.springframework.jmx.export.MBeanExporter', 'afterSingletonsInstantiated', '431', '43');
INSERT INTO `logging_event` VALUES ('1484644927882', 0x4265616E2077697468206E616D65202764617461536F757263652720686173206265656E206175746F646574656374656420666F72204A4D58206578706F73757265, 'org.springframework.jmx.export.annotation.AnnotationMBeanExporter', 'INFO', 'main', '1', null, null, null, null, 'MBeanExporter.java', 'org.springframework.jmx.export.MBeanExporter', 'autodetect', '916', '44');
INSERT INTO `logging_event` VALUES ('1484644927926', 0x4C6F6361746564204D4265616E202764617461536F75726365273A207265676973746572696E672077697468204A4D5820736572766572206173204D4265616E205B636F6D2E616C69626162612E64727569642E706F6F6C3A6E616D653D64617461536F757263652C747970653D447275696444617461536F757263655D, 'org.springframework.jmx.export.annotation.AnnotationMBeanExporter', 'INFO', 'main', '1', null, null, null, null, 'MBeanExporter.java', 'org.springframework.jmx.export.MBeanExporter', 'registerBeanInstance', '671', '45');
INSERT INTO `logging_event` VALUES ('1484644927967', 0x436F6E7465787420726566726573686564, 'springfox.documentation.spring.web.plugins.DocumentationPluginsBootstrapper', 'INFO', 'main', '1', null, null, null, null, 'DocumentationPluginsBootstrapper.java', 'springfox.documentation.spring.web.plugins.DocumentationPluginsBootstrapper', 'onApplicationEvent', '80', '46');
INSERT INTO `logging_event` VALUES ('1484644928039', 0x466F756E64207B307D20637573746F6D20646F63756D656E746174696F6E20706C7567696E287329, 'springfox.documentation.spring.web.plugins.DocumentationPluginsBootstrapper', 'INFO', 'main', '1', '1', null, null, null, 'DocumentationPluginsBootstrapper.java', 'springfox.documentation.spring.web.plugins.DocumentationPluginsBootstrapper', 'onApplicationEvent', '83', '47');
INSERT INTO `logging_event` VALUES ('1484644928079', 0x5363616E6E696E6720666F7220617069206C697374696E67207265666572656E636573, 'springfox.documentation.spring.web.scanners.ApiListingReferenceScanner', 'INFO', 'main', '1', null, null, null, null, 'ApiListingReferenceScanner.java', 'springfox.documentation.spring.web.scanners.ApiListingReferenceScanner', 'scan', '53', '48');
INSERT INTO `logging_event` VALUES ('1484644928122', 0x47726F757020666F72206D6574686F6420676574416C6C4163636F756E747320776173206163636F756E742D636F6E74726F6C6C6572, 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping', 'INFO', 'main', '1', 'getAllAccounts', 'account-controller', null, null, 'ClassOrApiAnnotationResourceGrouping.java', 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping$1', 'apply', '100', '49');
INSERT INTO `logging_event` VALUES ('1484644928164', 0x52657175657374206D617070696E673A20676574416C6C4163636F756E74732062656C6F6E677320746F2067726F7570733A205B5B5265736F7572636547726F75707B67726F75704E616D653D276163636F756E742D636F6E74726F6C6C6572272C20706F736974696F6E3D302C20636F6E74726F6C6C65723D636F6D2E67642E636F6E74726F6C6C65722E6163636F756E742E4163636F756E74436F6E74726F6C6C65727D5D5D20, 'springfox.documentation.spring.web.scanners.ApiListingReferenceScanner', 'INFO', 'main', '1', 'getAllAccounts', '[ResourceGroup{groupName=\'account-controller\', position=0, controller=com.gd.controller.account.AccountController}]', null, null, 'ApiListingReferenceScanner.java', 'springfox.documentation.spring.web.scanners.ApiListingReferenceScanner', 'scan', '72', '50');
INSERT INTO `logging_event` VALUES ('1484644928192', 0x47726F757020666F72206D6574686F6420696E6465782077617320696E6465782D636F6E74726F6C6C6572, 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping', 'INFO', 'main', '1', 'index', 'index-controller', null, null, 'ClassOrApiAnnotationResourceGrouping.java', 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping$1', 'apply', '100', '51');
INSERT INTO `logging_event` VALUES ('1484644928227', 0x52657175657374206D617070696E673A20696E6465782062656C6F6E677320746F2067726F7570733A205B5B5265736F7572636547726F75707B67726F75704E616D653D27696E6465782D636F6E74726F6C6C6572272C20706F736974696F6E3D302C20636F6E74726F6C6C65723D636F6D2E67642E636F6E74726F6C6C65722E496E646578436F6E74726F6C6C65727D5D5D20, 'springfox.documentation.spring.web.scanners.ApiListingReferenceScanner', 'INFO', 'main', '1', 'index', '[ResourceGroup{groupName=\'index-controller\', position=0, controller=com.gd.controller.IndexController}]', null, null, 'ApiListingReferenceScanner.java', 'springfox.documentation.spring.web.scanners.ApiListingReferenceScanner', 'scan', '72', '52');
INSERT INTO `logging_event` VALUES ('1484644928330', 0x43726561746564207265736F75726365206C697374696E6720506174683A202F64656661756C742F696E6465782D636F6E74726F6C6C6572204465736372697074696F6E3A20696E6465782D636F6E74726F6C6C657220506F736974696F6E3A2030, 'springfox.documentation.spring.web.scanners.ApiListingReferenceScanner', 'INFO', 'main', '1', '/default/index-controller', 'index-controller', '0', null, 'ApiListingReferenceScanner.java', 'springfox.documentation.spring.web.scanners.ApiListingReferenceScanner', 'scan', '84', '53');
INSERT INTO `logging_event` VALUES ('1484644928360', 0x43726561746564207265736F75726365206C697374696E6720506174683A202F64656661756C742F6163636F756E742D636F6E74726F6C6C6572204465736372697074696F6E3A206163636F756E742D636F6E74726F6C6C657220506F736974696F6E3A2030, 'springfox.documentation.spring.web.scanners.ApiListingReferenceScanner', 'INFO', 'main', '1', '/default/account-controller', 'account-controller', '0', null, 'ApiListingReferenceScanner.java', 'springfox.documentation.spring.web.scanners.ApiListingReferenceScanner', 'scan', '84', '54');
INSERT INTO `logging_event` VALUES ('1484644928416', 0x4361636865204B65792047656E6572617465643A206A6176612E6C616E672E537472696E67287472756529, 'springfox.documentation.schema.ModelContextKeyGenerator', 'INFO', 'main', '1', 'java.lang.String(true)', null, null, null, 'ModelContextKeyGenerator.java', 'springfox.documentation.schema.ModelContextKeyGenerator', 'generate', '46', '55');
INSERT INTO `logging_event` VALUES ('1484644928446', 0x43616368696E6720617370656374206170706C69656420666F72206361636865206D6F64656C732077697468206B6579206A6176612E6C616E672E537472696E67287472756529, 'springfox.documentation.spring.web.caching.CachingAspect', 'INFO', 'main', '1', 'models', 'java.lang.String(true)', null, null, 'CachingAspect.java', 'springfox.documentation.spring.web.caching.CachingAspect', 'modelsAndDependencies', '79', '56');
INSERT INTO `logging_event` VALUES ('1484644928493', 0x4361636865204B65792047656E6572617465643A206A6176612E6C616E672E537472696E67287472756529, 'springfox.documentation.schema.ModelContextKeyGenerator', 'INFO', 'main', '1', 'java.lang.String(true)', null, null, null, 'ModelContextKeyGenerator.java', 'springfox.documentation.schema.ModelContextKeyGenerator', 'generate', '46', '57');
INSERT INTO `logging_event` VALUES ('1484644928523', 0x43616368696E6720617370656374206170706C69656420666F72206361636865206D6F64656C446570656E64656E636965732077697468206B6579206A6176612E6C616E672E537472696E67287472756529, 'springfox.documentation.spring.web.caching.CachingAspect', 'INFO', 'main', '1', 'modelDependencies', 'java.lang.String(true)', null, null, 'CachingAspect.java', 'springfox.documentation.spring.web.caching.CachingAspect', 'modelsAndDependencies', '79', '58');
INSERT INTO `logging_event` VALUES ('1484644928568', 0x4361636865206B65792067656E6572617465643A202F6163636F756E742F616C6C2E636F6D2E67642E636F6E74726F6C6C65722E6163636F756E742E4163636F756E74436F6E74726F6C6C65722E676574416C6C4163636F756E74732E44656661756C7447656E65726963547970654E616D696E675374726174656779, 'springfox.documentation.spring.web.OperationsKeyGenerator', 'INFO', 'main', '1', '/account/all.com.gd.controller.account.AccountController.getAllAccounts.DefaultGenericTypeNamingStrategy', null, null, null, 'OperationsKeyGenerator.java', 'springfox.documentation.spring.web.OperationsKeyGenerator', 'generate', '51', '59');
INSERT INTO `logging_event` VALUES ('1484644928622', 0x43616368696E6720617370656374206170706C69656420666F72206361636865206F7065726174696F6E732077697468206B6579202F6163636F756E742F616C6C2E636F6D2E67642E636F6E74726F6C6C65722E6163636F756E742E4163636F756E74436F6E74726F6C6C65722E676574416C6C4163636F756E74732E44656661756C7447656E65726963547970654E616D696E675374726174656779, 'springfox.documentation.spring.web.caching.CachingAspect', 'INFO', 'main', '1', 'operations', '/account/all.com.gd.controller.account.AccountController.getAllAccounts.DefaultGenericTypeNamingStrategy', null, null, 'CachingAspect.java', 'springfox.documentation.spring.web.caching.CachingAspect', 'operationsAndProperties', '68', '60');
INSERT INTO `logging_event` VALUES ('1484644928713', 0x47726F757020666F72206D6574686F6420676574416C6C4163636F756E747320776173206163636F756E742D636F6E74726F6C6C6572, 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping', 'INFO', 'main', '1', 'getAllAccounts', 'account-controller', null, null, 'ClassOrApiAnnotationResourceGrouping.java', 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping$1', 'apply', '100', '61');
INSERT INTO `logging_event` VALUES ('1484644928802', 0x47726F757020666F72206D6574686F6420676574416C6C4163636F756E747320776173206163636F756E742D636F6E74726F6C6C6572, 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping', 'INFO', 'main', '1', 'getAllAccounts', 'account-controller', null, null, 'ClassOrApiAnnotationResourceGrouping.java', 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping$1', 'apply', '100', '62');
INSERT INTO `logging_event` VALUES ('1484644928838', 0x47726F757020666F72206D6574686F6420676574416C6C4163636F756E747320776173206163636F756E742D636F6E74726F6C6C6572, 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping', 'INFO', 'main', '1', 'getAllAccounts', 'account-controller', null, null, 'ClassOrApiAnnotationResourceGrouping.java', 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping$1', 'apply', '100', '63');
INSERT INTO `logging_event` VALUES ('1484644928881', 0x47726F757020666F72206D6574686F6420676574416C6C4163636F756E747320776173206163636F756E742D636F6E74726F6C6C6572, 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping', 'INFO', 'main', '1', 'getAllAccounts', 'account-controller', null, null, 'ClassOrApiAnnotationResourceGrouping.java', 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping$1', 'apply', '100', '64');
INSERT INTO `logging_event` VALUES ('1484644928911', 0x47656E65726174696E6720756E69717565206F7065726174696F6E206E616D65643A20676574416C6C4163636F756E74735573696E674745545F31, 'springfox.documentation.spring.web.readers.operation.CachingOperationNameGenerator', 'INFO', 'main', '1', 'getAllAccountsUsingGET_1', null, null, null, 'CachingOperationNameGenerator.java', 'springfox.documentation.spring.web.readers.operation.CachingOperationNameGenerator', 'startingWith', '40', '65');
INSERT INTO `logging_event` VALUES ('1484644928948', 0x47726F757020666F72206D6574686F6420676574416C6C4163636F756E747320776173206163636F756E742D636F6E74726F6C6C6572, 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping', 'INFO', 'main', '1', 'getAllAccounts', 'account-controller', null, null, 'ClassOrApiAnnotationResourceGrouping.java', 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping$1', 'apply', '100', '66');
INSERT INTO `logging_event` VALUES ('1484644928977', 0x47726F757020666F72206D6574686F6420676574416C6C4163636F756E747320776173206163636F756E742D636F6E74726F6C6C6572, 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping', 'INFO', 'main', '1', 'getAllAccounts', 'account-controller', null, null, 'ClassOrApiAnnotationResourceGrouping.java', 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping$1', 'apply', '100', '67');
INSERT INTO `logging_event` VALUES ('1484644929013', 0x47656E65726174696E6720756E69717565206F7065726174696F6E206E616D65643A20676574416C6C4163636F756E74735573696E674745545F32, 'springfox.documentation.spring.web.readers.operation.CachingOperationNameGenerator', 'INFO', 'main', '1', 'getAllAccountsUsingGET_2', null, null, null, 'CachingOperationNameGenerator.java', 'springfox.documentation.spring.web.readers.operation.CachingOperationNameGenerator', 'startingWith', '40', '68');
INSERT INTO `logging_event` VALUES ('1484644929044', 0x47726F757020666F72206D6574686F6420676574416C6C4163636F756E747320776173206163636F756E742D636F6E74726F6C6C6572, 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping', 'INFO', 'main', '1', 'getAllAccounts', 'account-controller', null, null, 'ClassOrApiAnnotationResourceGrouping.java', 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping$1', 'apply', '100', '69');
INSERT INTO `logging_event` VALUES ('1484644929080', 0x47726F757020666F72206D6574686F6420676574416C6C4163636F756E747320776173206163636F756E742D636F6E74726F6C6C6572, 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping', 'INFO', 'main', '1', 'getAllAccounts', 'account-controller', null, null, 'ClassOrApiAnnotationResourceGrouping.java', 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping$1', 'apply', '100', '70');
INSERT INTO `logging_event` VALUES ('1484644929109', 0x47656E65726174696E6720756E69717565206F7065726174696F6E206E616D65643A20676574416C6C4163636F756E74735573696E674745545F33, 'springfox.documentation.spring.web.readers.operation.CachingOperationNameGenerator', 'INFO', 'main', '1', 'getAllAccountsUsingGET_3', null, null, null, 'CachingOperationNameGenerator.java', 'springfox.documentation.spring.web.readers.operation.CachingOperationNameGenerator', 'startingWith', '40', '71');
INSERT INTO `logging_event` VALUES ('1484644929148', 0x47726F757020666F72206D6574686F6420676574416C6C4163636F756E747320776173206163636F756E742D636F6E74726F6C6C6572, 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping', 'INFO', 'main', '1', 'getAllAccounts', 'account-controller', null, null, 'ClassOrApiAnnotationResourceGrouping.java', 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping$1', 'apply', '100', '72');
INSERT INTO `logging_event` VALUES ('1484644929177', 0x47726F757020666F72206D6574686F6420676574416C6C4163636F756E747320776173206163636F756E742D636F6E74726F6C6C6572, 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping', 'INFO', 'main', '1', 'getAllAccounts', 'account-controller', null, null, 'ClassOrApiAnnotationResourceGrouping.java', 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping$1', 'apply', '100', '73');
INSERT INTO `logging_event` VALUES ('1484644929213', 0x47656E65726174696E6720756E69717565206F7065726174696F6E206E616D65643A20676574416C6C4163636F756E74735573696E674745545F34, 'springfox.documentation.spring.web.readers.operation.CachingOperationNameGenerator', 'INFO', 'main', '1', 'getAllAccountsUsingGET_4', null, null, null, 'CachingOperationNameGenerator.java', 'springfox.documentation.spring.web.readers.operation.CachingOperationNameGenerator', 'startingWith', '40', '74');
INSERT INTO `logging_event` VALUES ('1484644929244', 0x47726F757020666F72206D6574686F6420676574416C6C4163636F756E747320776173206163636F756E742D636F6E74726F6C6C6572, 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping', 'INFO', 'main', '1', 'getAllAccounts', 'account-controller', null, null, 'ClassOrApiAnnotationResourceGrouping.java', 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping$1', 'apply', '100', '75');
INSERT INTO `logging_event` VALUES ('1484644929280', 0x47726F757020666F72206D6574686F6420676574416C6C4163636F756E747320776173206163636F756E742D636F6E74726F6C6C6572, 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping', 'INFO', 'main', '1', 'getAllAccounts', 'account-controller', null, null, 'ClassOrApiAnnotationResourceGrouping.java', 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping$1', 'apply', '100', '76');
INSERT INTO `logging_event` VALUES ('1484644929310', 0x47656E65726174696E6720756E69717565206F7065726174696F6E206E616D65643A20676574416C6C4163636F756E74735573696E674745545F35, 'springfox.documentation.spring.web.readers.operation.CachingOperationNameGenerator', 'INFO', 'main', '1', 'getAllAccountsUsingGET_5', null, null, null, 'CachingOperationNameGenerator.java', 'springfox.documentation.spring.web.readers.operation.CachingOperationNameGenerator', 'startingWith', '40', '77');
INSERT INTO `logging_event` VALUES ('1484644929346', 0x47726F757020666F72206D6574686F6420676574416C6C4163636F756E747320776173206163636F756E742D636F6E74726F6C6C6572, 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping', 'INFO', 'main', '1', 'getAllAccounts', 'account-controller', null, null, 'ClassOrApiAnnotationResourceGrouping.java', 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping$1', 'apply', '100', '78');
INSERT INTO `logging_event` VALUES ('1484644929376', 0x47726F757020666F72206D6574686F6420676574416C6C4163636F756E747320776173206163636F756E742D636F6E74726F6C6C6572, 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping', 'INFO', 'main', '1', 'getAllAccounts', 'account-controller', null, null, 'ClassOrApiAnnotationResourceGrouping.java', 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping$1', 'apply', '100', '79');
INSERT INTO `logging_event` VALUES ('1484644929412', 0x47656E65726174696E6720756E69717565206F7065726174696F6E206E616D65643A20676574416C6C4163636F756E74735573696E674745545F36, 'springfox.documentation.spring.web.readers.operation.CachingOperationNameGenerator', 'INFO', 'main', '1', 'getAllAccountsUsingGET_6', null, null, null, 'CachingOperationNameGenerator.java', 'springfox.documentation.spring.web.readers.operation.CachingOperationNameGenerator', 'startingWith', '40', '80');
INSERT INTO `logging_event` VALUES ('1484644929443', 0x47726F757020666F72206D6574686F6420676574416C6C4163636F756E747320776173206163636F756E742D636F6E74726F6C6C6572, 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping', 'INFO', 'main', '1', 'getAllAccounts', 'account-controller', null, null, 'ClassOrApiAnnotationResourceGrouping.java', 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping$1', 'apply', '100', '81');
INSERT INTO `logging_event` VALUES ('1484644929479', 0x47726F757020666F72206D6574686F6420676574416C6C4163636F756E747320776173206163636F756E742D636F6E74726F6C6C6572, 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping', 'INFO', 'main', '1', 'getAllAccounts', 'account-controller', null, null, 'ClassOrApiAnnotationResourceGrouping.java', 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping$1', 'apply', '100', '82');
INSERT INTO `logging_event` VALUES ('1484644929510', 0x47656E65726174696E6720756E69717565206F7065726174696F6E206E616D65643A20676574416C6C4163636F756E74735573696E674745545F37, 'springfox.documentation.spring.web.readers.operation.CachingOperationNameGenerator', 'INFO', 'main', '1', 'getAllAccountsUsingGET_7', null, null, null, 'CachingOperationNameGenerator.java', 'springfox.documentation.spring.web.readers.operation.CachingOperationNameGenerator', 'startingWith', '40', '83');
INSERT INTO `logging_event` VALUES ('1484644929553', 0x4361636865204B65792047656E6572617465643A206A6176612E6C616E672E537472696E67287472756529, 'springfox.documentation.schema.ModelContextKeyGenerator', 'INFO', 'main', '1', 'java.lang.String(true)', null, null, null, 'ModelContextKeyGenerator.java', 'springfox.documentation.schema.ModelContextKeyGenerator', 'generate', '46', '84');
INSERT INTO `logging_event` VALUES ('1484644929586', 0x43616368696E6720617370656374206170706C69656420666F72206361636865206D6F64656C732077697468206B6579206A6176612E6C616E672E537472696E67287472756529, 'springfox.documentation.spring.web.caching.CachingAspect', 'INFO', 'main', '1', 'models', 'java.lang.String(true)', null, null, 'CachingAspect.java', 'springfox.documentation.spring.web.caching.CachingAspect', 'modelsAndDependencies', '79', '85');
INSERT INTO `logging_event` VALUES ('1484644929623', 0x4361636865204B65792047656E6572617465643A206A6176612E6C616E672E537472696E67287472756529, 'springfox.documentation.schema.ModelContextKeyGenerator', 'INFO', 'main', '1', 'java.lang.String(true)', null, null, null, 'ModelContextKeyGenerator.java', 'springfox.documentation.schema.ModelContextKeyGenerator', 'generate', '46', '86');
INSERT INTO `logging_event` VALUES ('1484644929652', 0x43616368696E6720617370656374206170706C69656420666F72206361636865206D6F64656C446570656E64656E636965732077697468206B6579206A6176612E6C616E672E537472696E67287472756529, 'springfox.documentation.spring.web.caching.CachingAspect', 'INFO', 'main', '1', 'modelDependencies', 'java.lang.String(true)', null, null, 'CachingAspect.java', 'springfox.documentation.spring.web.caching.CachingAspect', 'modelsAndDependencies', '79', '87');
INSERT INTO `logging_event` VALUES ('1484644929689', 0x4361636865206B65792067656E6572617465643A202F696E6465782F746573742E636F6D2E67642E636F6E74726F6C6C65722E496E646578436F6E74726F6C6C65722E696E6465782E44656661756C7447656E65726963547970654E616D696E675374726174656779, 'springfox.documentation.spring.web.OperationsKeyGenerator', 'INFO', 'main', '1', '/index/test.com.gd.controller.IndexController.index.DefaultGenericTypeNamingStrategy', null, null, null, 'OperationsKeyGenerator.java', 'springfox.documentation.spring.web.OperationsKeyGenerator', 'generate', '51', '88');
INSERT INTO `logging_event` VALUES ('1484644929718', 0x43616368696E6720617370656374206170706C69656420666F72206361636865206F7065726174696F6E732077697468206B6579202F696E6465782F746573742E636F6D2E67642E636F6E74726F6C6C65722E496E646578436F6E74726F6C6C65722E696E6465782E44656661756C7447656E65726963547970654E616D696E675374726174656779, 'springfox.documentation.spring.web.caching.CachingAspect', 'INFO', 'main', '1', 'operations', '/index/test.com.gd.controller.IndexController.index.DefaultGenericTypeNamingStrategy', null, null, 'CachingAspect.java', 'springfox.documentation.spring.web.caching.CachingAspect', 'operationsAndProperties', '68', '89');
INSERT INTO `logging_event` VALUES ('1484644929755', 0x47726F757020666F72206D6574686F6420696E6465782077617320696E6465782D636F6E74726F6C6C6572, 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping', 'INFO', 'main', '1', 'index', 'index-controller', null, null, 'ClassOrApiAnnotationResourceGrouping.java', 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping$1', 'apply', '100', '90');
INSERT INTO `logging_event` VALUES ('1484644929785', 0x47726F757020666F72206D6574686F6420696E6465782077617320696E6465782D636F6E74726F6C6C6572, 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping', 'INFO', 'main', '1', 'index', 'index-controller', null, null, 'ClassOrApiAnnotationResourceGrouping.java', 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping$1', 'apply', '100', '91');
INSERT INTO `logging_event` VALUES ('1484644929822', 0x47726F757020666F72206D6574686F6420696E6465782077617320696E6465782D636F6E74726F6C6C6572, 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping', 'INFO', 'main', '1', 'index', 'index-controller', null, null, 'ClassOrApiAnnotationResourceGrouping.java', 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping$1', 'apply', '100', '92');
INSERT INTO `logging_event` VALUES ('1484644929859', 0x47726F757020666F72206D6574686F6420696E6465782077617320696E6465782D636F6E74726F6C6C6572, 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping', 'INFO', 'main', '1', 'index', 'index-controller', null, null, 'ClassOrApiAnnotationResourceGrouping.java', 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping$1', 'apply', '100', '93');
INSERT INTO `logging_event` VALUES ('1484644929899', 0x47656E65726174696E6720756E69717565206F7065726174696F6E206E616D65643A20696E6465785573696E674745545F31, 'springfox.documentation.spring.web.readers.operation.CachingOperationNameGenerator', 'INFO', 'main', '1', 'indexUsingGET_1', null, null, null, 'CachingOperationNameGenerator.java', 'springfox.documentation.spring.web.readers.operation.CachingOperationNameGenerator', 'startingWith', '40', '94');
INSERT INTO `logging_event` VALUES ('1484644929929', 0x47726F757020666F72206D6574686F6420696E6465782077617320696E6465782D636F6E74726F6C6C6572, 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping', 'INFO', 'main', '1', 'index', 'index-controller', null, null, 'ClassOrApiAnnotationResourceGrouping.java', 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping$1', 'apply', '100', '95');
INSERT INTO `logging_event` VALUES ('1484644929966', 0x47726F757020666F72206D6574686F6420696E6465782077617320696E6465782D636F6E74726F6C6C6572, 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping', 'INFO', 'main', '1', 'index', 'index-controller', null, null, 'ClassOrApiAnnotationResourceGrouping.java', 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping$1', 'apply', '100', '96');
INSERT INTO `logging_event` VALUES ('1484644929995', 0x47656E65726174696E6720756E69717565206F7065726174696F6E206E616D65643A20696E6465785573696E674745545F32, 'springfox.documentation.spring.web.readers.operation.CachingOperationNameGenerator', 'INFO', 'main', '1', 'indexUsingGET_2', null, null, null, 'CachingOperationNameGenerator.java', 'springfox.documentation.spring.web.readers.operation.CachingOperationNameGenerator', 'startingWith', '40', '97');
INSERT INTO `logging_event` VALUES ('1484644930032', 0x47726F757020666F72206D6574686F6420696E6465782077617320696E6465782D636F6E74726F6C6C6572, 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping', 'INFO', 'main', '1', 'index', 'index-controller', null, null, 'ClassOrApiAnnotationResourceGrouping.java', 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping$1', 'apply', '100', '98');
INSERT INTO `logging_event` VALUES ('1484644930062', 0x47726F757020666F72206D6574686F6420696E6465782077617320696E6465782D636F6E74726F6C6C6572, 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping', 'INFO', 'main', '1', 'index', 'index-controller', null, null, 'ClassOrApiAnnotationResourceGrouping.java', 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping$1', 'apply', '100', '99');
INSERT INTO `logging_event` VALUES ('1484644930099', 0x47656E65726174696E6720756E69717565206F7065726174696F6E206E616D65643A20696E6465785573696E674745545F33, 'springfox.documentation.spring.web.readers.operation.CachingOperationNameGenerator', 'INFO', 'main', '1', 'indexUsingGET_3', null, null, null, 'CachingOperationNameGenerator.java', 'springfox.documentation.spring.web.readers.operation.CachingOperationNameGenerator', 'startingWith', '40', '100');
INSERT INTO `logging_event` VALUES ('1484644930128', 0x47726F757020666F72206D6574686F6420696E6465782077617320696E6465782D636F6E74726F6C6C6572, 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping', 'INFO', 'main', '1', 'index', 'index-controller', null, null, 'ClassOrApiAnnotationResourceGrouping.java', 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping$1', 'apply', '100', '101');
INSERT INTO `logging_event` VALUES ('1484644930165', 0x47726F757020666F72206D6574686F6420696E6465782077617320696E6465782D636F6E74726F6C6C6572, 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping', 'INFO', 'main', '1', 'index', 'index-controller', null, null, 'ClassOrApiAnnotationResourceGrouping.java', 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping$1', 'apply', '100', '102');
INSERT INTO `logging_event` VALUES ('1484644930194', 0x47656E65726174696E6720756E69717565206F7065726174696F6E206E616D65643A20696E6465785573696E674745545F34, 'springfox.documentation.spring.web.readers.operation.CachingOperationNameGenerator', 'INFO', 'main', '1', 'indexUsingGET_4', null, null, null, 'CachingOperationNameGenerator.java', 'springfox.documentation.spring.web.readers.operation.CachingOperationNameGenerator', 'startingWith', '40', '103');
INSERT INTO `logging_event` VALUES ('1484644930231', 0x47726F757020666F72206D6574686F6420696E6465782077617320696E6465782D636F6E74726F6C6C6572, 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping', 'INFO', 'main', '1', 'index', 'index-controller', null, null, 'ClassOrApiAnnotationResourceGrouping.java', 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping$1', 'apply', '100', '104');
INSERT INTO `logging_event` VALUES ('1484644930261', 0x47726F757020666F72206D6574686F6420696E6465782077617320696E6465782D636F6E74726F6C6C6572, 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping', 'INFO', 'main', '1', 'index', 'index-controller', null, null, 'ClassOrApiAnnotationResourceGrouping.java', 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping$1', 'apply', '100', '105');
INSERT INTO `logging_event` VALUES ('1484644930298', 0x47656E65726174696E6720756E69717565206F7065726174696F6E206E616D65643A20696E6465785573696E674745545F35, 'springfox.documentation.spring.web.readers.operation.CachingOperationNameGenerator', 'INFO', 'main', '1', 'indexUsingGET_5', null, null, null, 'CachingOperationNameGenerator.java', 'springfox.documentation.spring.web.readers.operation.CachingOperationNameGenerator', 'startingWith', '40', '106');
INSERT INTO `logging_event` VALUES ('1484644930387', 0x47726F757020666F72206D6574686F6420696E6465782077617320696E6465782D636F6E74726F6C6C6572, 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping', 'INFO', 'main', '1', 'index', 'index-controller', null, null, 'ClassOrApiAnnotationResourceGrouping.java', 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping$1', 'apply', '100', '107');
INSERT INTO `logging_event` VALUES ('1484644930416', 0x47726F757020666F72206D6574686F6420696E6465782077617320696E6465782D636F6E74726F6C6C6572, 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping', 'INFO', 'main', '1', 'index', 'index-controller', null, null, 'ClassOrApiAnnotationResourceGrouping.java', 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping$1', 'apply', '100', '108');
INSERT INTO `logging_event` VALUES ('1484644930453', 0x47656E65726174696E6720756E69717565206F7065726174696F6E206E616D65643A20696E6465785573696E674745545F36, 'springfox.documentation.spring.web.readers.operation.CachingOperationNameGenerator', 'INFO', 'main', '1', 'indexUsingGET_6', null, null, null, 'CachingOperationNameGenerator.java', 'springfox.documentation.spring.web.readers.operation.CachingOperationNameGenerator', 'startingWith', '40', '109');
INSERT INTO `logging_event` VALUES ('1484644930482', 0x47726F757020666F72206D6574686F6420696E6465782077617320696E6465782D636F6E74726F6C6C6572, 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping', 'INFO', 'main', '1', 'index', 'index-controller', null, null, 'ClassOrApiAnnotationResourceGrouping.java', 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping$1', 'apply', '100', '110');
INSERT INTO `logging_event` VALUES ('1484644930520', 0x47726F757020666F72206D6574686F6420696E6465782077617320696E6465782D636F6E74726F6C6C6572, 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping', 'INFO', 'main', '1', 'index', 'index-controller', null, null, 'ClassOrApiAnnotationResourceGrouping.java', 'springfox.documentation.swagger.web.ClassOrApiAnnotationResourceGrouping$1', 'apply', '100', '111');
INSERT INTO `logging_event` VALUES ('1484644930548', 0x47656E65726174696E6720756E69717565206F7065726174696F6E206E616D65643A20696E6465785573696E674745545F37, 'springfox.documentation.spring.web.readers.operation.CachingOperationNameGenerator', 'INFO', 'main', '1', 'indexUsingGET_7', null, null, null, 'CachingOperationNameGenerator.java', 'springfox.documentation.spring.web.readers.operation.CachingOperationNameGenerator', 'startingWith', '40', '112');
INSERT INTO `logging_event` VALUES ('1484644930605', 0x496E697469616C697A696E6720537072696E67204672616D65776F726B536572766C6574202764697370617463686572536572766C657427, 'application', 'INFO', 'main', '1', null, null, null, null, 'ContextHandler.java', 'org.eclipse.jetty.server.handler.ContextHandler$Context', 'log', '2167', '113');
INSERT INTO `logging_event` VALUES ('1484644930637', 0x4672616D65776F726B536572766C6574202764697370617463686572536572766C6574273A20696E697469616C697A6174696F6E2073746172746564, 'org.springframework.web.servlet.DispatcherServlet', 'INFO', 'main', '1', null, null, null, null, 'FrameworkServlet.java', 'org.springframework.web.servlet.FrameworkServlet', 'initServletBean', '489', '114');
INSERT INTO `logging_event` VALUES ('1484644930704', 0x4672616D65776F726B536572766C6574202764697370617463686572536572766C6574273A20696E697469616C697A6174696F6E20636F6D706C6574656420696E203238206D73, 'org.springframework.web.servlet.DispatcherServlet', 'INFO', 'main', '1', null, null, null, null, 'FrameworkServlet.java', 'org.springframework.web.servlet.FrameworkServlet', 'initServletBean', '508', '115');
INSERT INTO `logging_event` VALUES ('1484644930792', 0x5374617274656420536572766572436F6E6E6563746F724031356538383163307B485454502F312E312C5B687474702F312E315D7D7B302E302E302E303A393039307D, 'org.eclipse.jetty.server.AbstractConnector', 'INFO', 'main', '1', null, null, null, null, 'AbstractConnector.java', 'org.eclipse.jetty.server.AbstractConnector', 'doStart', '278', '116');
INSERT INTO `logging_event` VALUES ('1484644930831', 0x4A657474792073746172746564206F6E20706F727428732920393039302028687474702F312E3129, 'org.springframework.boot.context.embedded.jetty.JettyEmbeddedServletContainer', 'INFO', 'main', '1', null, null, null, null, 'JettyEmbeddedServletContainer.java', 'org.springframework.boot.context.embedded.jetty.JettyEmbeddedServletContainer', 'start', '137', '117');
INSERT INTO `logging_event` VALUES ('1484644930864', 0x53746172746564204D614170706C69636174696F6E20696E2031342E323831207365636F6E647320284A564D2072756E6E696E6720666F722031342E383629, 'com.gd.MaApplication', 'INFO', 'main', '1', null, null, null, null, 'StartupInfoLogger.java', 'org.springframework.boot.StartupInfoLogger', 'logStarted', '57', '118');
INSERT INTO `logging_event` VALUES ('1484644945266', 0x7B64617461536F757263652D327D20696E69746564, 'com.alibaba.druid.pool.DruidDataSource', 'INFO', 'qtp2000793115-37', '1', null, null, null, null, 'DruidDataSource.java', 'com.alibaba.druid.pool.DruidDataSource', 'init', '669', '119');
INSERT INTO `logging_event` VALUES ('1484644945349', 0x3D3D3E2020507265706172696E673A2053454C454354202A2046524F4D207379735F6163636F756E7420574845524520313D3120414E4420555345524E414D453D3F20, 'com.gd.dao.account.IAccountDao.queryForObject', 'DEBUG', 'qtp2000793115-37', '1', null, null, null, null, 'BaseJdbcLogger.java', 'org.apache.ibatis.logging.jdbc.BaseJdbcLogger', 'debug', '181', '120');
INSERT INTO `logging_event` VALUES ('1484644945395', 0x3D3D3E20506172616D65746572733A2061646D696E28537472696E6729, 'com.gd.dao.account.IAccountDao.queryForObject', 'DEBUG', 'qtp2000793115-37', '1', null, null, null, null, 'BaseJdbcLogger.java', 'org.apache.ibatis.logging.jdbc.BaseJdbcLogger', 'debug', '181', '121');
INSERT INTO `logging_event` VALUES ('1484644945439', 0x3C3D3D202020202020546F74616C3A2031, 'com.gd.dao.account.IAccountDao.queryForObject', 'DEBUG', 'qtp2000793115-37', '1', null, null, null, null, 'BaseJdbcLogger.java', 'org.apache.ibatis.logging.jdbc.BaseJdbcLogger', 'debug', '181', '122');
INSERT INTO `logging_event` VALUES ('1484644945520', 0x3D3D3E2020507265706172696E673A2053454C454354202A2046524F4D20765F6163636F756E745F617574686F7269747920574845524520313D3120414E4420555345524E414D453D3F20, 'com.gd.dao.account.IAccountDao.queryForAuthorities', 'DEBUG', 'qtp2000793115-37', '1', null, null, null, null, 'BaseJdbcLogger.java', 'org.apache.ibatis.logging.jdbc.BaseJdbcLogger', 'debug', '181', '123');
INSERT INTO `logging_event` VALUES ('1484644945564', 0x3D3D3E20506172616D65746572733A2061646D696E28537472696E6729, 'com.gd.dao.account.IAccountDao.queryForAuthorities', 'DEBUG', 'qtp2000793115-37', '1', null, null, null, null, 'BaseJdbcLogger.java', 'org.apache.ibatis.logging.jdbc.BaseJdbcLogger', 'debug', '181', '124');
INSERT INTO `logging_event` VALUES ('1484644945612', 0x3C3D3D202020202020546F74616C3A2031, 'com.gd.dao.account.IAccountDao.queryForAuthorities', 'DEBUG', 'qtp2000793115-37', '1', null, null, null, null, 'BaseJdbcLogger.java', 'org.apache.ibatis.logging.jdbc.BaseJdbcLogger', 'debug', '181', '125');
INSERT INTO `logging_event` VALUES ('1484644945685', 0x3D3D3E2020507265706172696E673A2053454C454354202A2046524F4D207379735F7265736F7572636520574845524520313D3120414E442055524C3D3F20, 'com.gd.dao.resource.IResourceDao.queryForObject', 'DEBUG', 'qtp2000793115-37', '1', null, null, null, null, 'BaseJdbcLogger.java', 'org.apache.ibatis.logging.jdbc.BaseJdbcLogger', 'debug', '181', '126');
INSERT INTO `logging_event` VALUES ('1484644945715', 0x3D3D3E20506172616D65746572733A202F6163636F756E742F616C6C28537472696E6729, 'com.gd.dao.resource.IResourceDao.queryForObject', 'DEBUG', 'qtp2000793115-37', '1', null, null, null, null, 'BaseJdbcLogger.java', 'org.apache.ibatis.logging.jdbc.BaseJdbcLogger', 'debug', '181', '127');
INSERT INTO `logging_event` VALUES ('1484644945754', 0x3C3D3D202020202020546F74616C3A2031, 'com.gd.dao.resource.IResourceDao.queryForObject', 'DEBUG', 'qtp2000793115-37', '1', null, null, null, null, 'BaseJdbcLogger.java', 'org.apache.ibatis.logging.jdbc.BaseJdbcLogger', 'debug', '181', '128');
INSERT INTO `logging_event` VALUES ('1484644945790', 0x3D3D3E2020507265706172696E673A2053454C454354202A2046524F4D207379735F7265736F757263655F617574686F7269747920574845524520313D3120414E44205245534F5552434549443D3F20, 'com.gd.dao.resource_authority.IResourceAuthorityDao.queryForObject', 'DEBUG', 'qtp2000793115-37', '1', null, null, null, null, 'BaseJdbcLogger.java', 'org.apache.ibatis.logging.jdbc.BaseJdbcLogger', 'debug', '181', '129');
INSERT INTO `logging_event` VALUES ('1484644945858', 0x3D3D3E20506172616D65746572733A207265733128537472696E6729, 'com.gd.dao.resource_authority.IResourceAuthorityDao.queryForObject', 'DEBUG', 'qtp2000793115-37', '1', null, null, null, null, 'BaseJdbcLogger.java', 'org.apache.ibatis.logging.jdbc.BaseJdbcLogger', 'debug', '181', '130');
INSERT INTO `logging_event` VALUES ('1484644945896', 0x3C3D3D202020202020546F74616C3A2031, 'com.gd.dao.resource_authority.IResourceAuthorityDao.queryForObject', 'DEBUG', 'qtp2000793115-37', '1', null, null, null, null, 'BaseJdbcLogger.java', 'org.apache.ibatis.logging.jdbc.BaseJdbcLogger', 'debug', '181', '131');
INSERT INTO `logging_event` VALUES ('1484644945948', 0x3D3D3E2020507265706172696E673A2053454C454354202A2046524F4D207379735F6163636F756E7420574845524520313D3120414E4420555345524E414D453D3F20, 'com.gd.dao.account.IAccountDao.queryForObject', 'DEBUG', 'qtp2000793115-37', '1', null, null, null, null, 'BaseJdbcLogger.java', 'org.apache.ibatis.logging.jdbc.BaseJdbcLogger', 'debug', '181', '132');
INSERT INTO `logging_event` VALUES ('1484644945984', 0x3D3D3E20506172616D65746572733A2061646D696E28537472696E6729, 'com.gd.dao.account.IAccountDao.queryForObject', 'DEBUG', 'qtp2000793115-37', '1', null, null, null, null, 'BaseJdbcLogger.java', 'org.apache.ibatis.logging.jdbc.BaseJdbcLogger', 'debug', '181', '133');
INSERT INTO `logging_event` VALUES ('1484644946081', 0x3C3D3D202020202020546F74616C3A2031, 'com.gd.dao.account.IAccountDao.queryForObject', 'DEBUG', 'qtp2000793115-37', '1', null, null, null, null, 'BaseJdbcLogger.java', 'org.apache.ibatis.logging.jdbc.BaseJdbcLogger', 'debug', '181', '134');
INSERT INTO `logging_event` VALUES ('1484644946118', 0x3D3D3E2020507265706172696E673A2053454C454354202A2046524F4D207379735F6163636F756E7420, 'com.gd.dao.account.IAccountDao.queryForAllObject', 'DEBUG', 'qtp2000793115-37', '1', null, null, null, null, 'BaseJdbcLogger.java', 'org.apache.ibatis.logging.jdbc.BaseJdbcLogger', 'debug', '181', '135');
INSERT INTO `logging_event` VALUES ('1484644946146', 0x3D3D3E20506172616D65746572733A20, 'com.gd.dao.account.IAccountDao.queryForAllObject', 'DEBUG', 'qtp2000793115-37', '1', null, null, null, null, 'BaseJdbcLogger.java', 'org.apache.ibatis.logging.jdbc.BaseJdbcLogger', 'debug', '181', '136');
INSERT INTO `logging_event` VALUES ('1484644946206', 0x3C3D3D202020202020546F74616C3A2031, 'com.gd.dao.account.IAccountDao.queryForAllObject', 'DEBUG', 'qtp2000793115-37', '1', null, null, null, null, 'BaseJdbcLogger.java', 'org.apache.ibatis.logging.jdbc.BaseJdbcLogger', 'debug', '181', '137');

-- ----------------------------
-- Table structure for `logging_event_exception`
-- ----------------------------
DROP TABLE IF EXISTS `logging_event_exception`;
CREATE TABLE `logging_event_exception` (
  `event_id` bigint(20) NOT NULL,
  `i` smallint(6) NOT NULL,
  `trace_line` varchar(254) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`event_id`,`i`),
  CONSTRAINT `logging_event_exception_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `logging_event` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of logging_event_exception
-- ----------------------------

-- ----------------------------
-- Table structure for `logging_event_property`
-- ----------------------------
DROP TABLE IF EXISTS `logging_event_property`;
CREATE TABLE `logging_event_property` (
  `event_id` bigint(20) NOT NULL,
  `mapped_key` varchar(254) COLLATE utf8_bin NOT NULL,
  `mapped_value` text COLLATE utf8_bin,
  PRIMARY KEY (`event_id`,`mapped_key`),
  CONSTRAINT `logging_event_property_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `logging_event` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of logging_event_property
-- ----------------------------
INSERT INTO `logging_event_property` VALUES ('1', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('2', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('3', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('4', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('5', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('6', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('7', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('8', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('9', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('10', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('11', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('12', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('13', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('14', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('15', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('16', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('17', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('18', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('19', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('20', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('21', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('22', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('23', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('24', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('25', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('26', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('27', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('28', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('29', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('30', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('31', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('32', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('33', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('34', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('35', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('36', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('37', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('38', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('39', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('40', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('41', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('42', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('43', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('44', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('45', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('46', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('47', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('48', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('49', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('50', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('51', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('52', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('53', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('54', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('55', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('56', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('57', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('58', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('59', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('60', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('61', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('62', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('63', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('64', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('65', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('66', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('67', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('68', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('69', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('70', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('71', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('72', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('73', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('74', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('75', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('76', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('77', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('78', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('79', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('80', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('81', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('82', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('83', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('84', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('85', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('86', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('87', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('88', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('89', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('90', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('91', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('92', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('93', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('94', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('95', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('96', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('97', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('98', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('99', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('100', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('101', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('102', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('103', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('104', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('105', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('106', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('107', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('108', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('109', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('110', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('111', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('112', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('113', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('114', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('115', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('116', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('117', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('118', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('119', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('120', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('121', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('122', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('123', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('124', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('125', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('126', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('127', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('128', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('129', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('130', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('131', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('132', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('133', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('134', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('135', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('136', 'HOSTNAME', 0x64656C6C);
INSERT INTO `logging_event_property` VALUES ('137', 'HOSTNAME', 0x64656C6C);

-- ----------------------------
-- Table structure for `sys_account`
-- ----------------------------
DROP TABLE IF EXISTS `sys_account`;
CREATE TABLE `sys_account` (
  `ID` varchar(50) COLLATE utf8_bin NOT NULL,
  `USERNAME` varchar(50) COLLATE utf8_bin NOT NULL,
  `PASSWORD` varchar(50) COLLATE utf8_bin NOT NULL,
  `SALT` varchar(20) COLLATE utf8_bin NOT NULL,
  `CREATETIME` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `UPDATETIME` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `IFUSE` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `ORDERNUM` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `TOKEN` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `APPID` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `COMMUNICATIONID` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '环信ID',
  `validategroupid` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `loginYes` int(10) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='账户信息';

-- ----------------------------
-- Records of sys_account
-- ----------------------------
INSERT INTO `sys_account` VALUES ('51b5ae4a-7fb5-4a4b-a5d9-7ad8e5a95005', 'admin', '1cd97f0614dd96f99adc61ef866cd6ea', '495776', '2018-01-25 14:34:14', '2018-01-25 14:34:14', 'y', '0', '1', '123456', 'admin', null, '156');
INSERT INTO `sys_account` VALUES ('eb4cf65e-fefb-45dd-9e76-01d099ff621e', 'test1', '16fb6e8d15f2ac069387f25eb6da1aa6', '908570', '2019-03-04 09:46:54', '2019-03-04 09:46:54', 'Y', null, null, '123456', 'test1', null, '0');

-- ----------------------------
-- Table structure for `sys_account_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_account_role`;
CREATE TABLE `sys_account_role` (
  `ID` varchar(50) COLLATE utf8_bin NOT NULL,
  `ACCOUNTID` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `ROLEID` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sys_account_role
-- ----------------------------
INSERT INTO `sys_account_role` VALUES ('40b2530d-3b39-11e9-8c2f-a81e8431de8c', 'eb4cf65e-fefb-45dd-9e76-01d099ff621e', 'r1');
INSERT INTO `sys_account_role` VALUES ('b09768ad-760e-46f9-b2b3-c11d1444adb2', '51b5ae4a-7fb5-4a4b-a5d9-7ad8e5a95005', 'r1');

-- ----------------------------
-- Table structure for `sys_account_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_account_user`;
CREATE TABLE `sys_account_user` (
  `ID` varchar(50) COLLATE utf8_bin NOT NULL,
  `ACCOUNTID` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `USERID` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sys_account_user
-- ----------------------------
INSERT INTO `sys_account_user` VALUES ('e8fea5c3-2b91-4b2b-a142-09415020bcf6', 'eb4cf65e-fefb-45dd-9e76-01d099ff621e', 'dd1ea5a0-99e1-4bf7-8778-4ba825f77fcf');
INSERT INTO `sys_account_user` VALUES ('fad8d0e1-adbe-47d6-a53a-a7f2ac3cee70', '51b5ae4a-7fb5-4a4b-a5d9-7ad8e5a95005', 'u1');

-- ----------------------------
-- Table structure for `sys_authority`
-- ----------------------------
DROP TABLE IF EXISTS `sys_authority`;
CREATE TABLE `sys_authority` (
  `ID` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `CREATETIME` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `UPDATETIME` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `IFUSE` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `AUTHORITYNAME` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `ORDERNUM` varchar(10) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sys_authority
-- ----------------------------
INSERT INTO `sys_authority` VALUES ('auth1', '2017-08-29 09:37:10', '2017-08-29 09:37:10', 'y', '最高级权限', '获取所有内容', '01');
INSERT INTO `sys_authority` VALUES ('ddad4173-6ff5-4b0d-b5dc-8c8ab188acc2', '2017-11-17 17:03:16', '2017-11-17 17:03:16', 'y', '普通用户权限', '普通用户使用', '1');

-- ----------------------------
-- Table structure for `sys_org`
-- ----------------------------
DROP TABLE IF EXISTS `sys_org`;
CREATE TABLE `sys_org` (
  `ID` varchar(50) COLLATE utf8_bin NOT NULL,
  `ORGNAME` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `LEADER` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `CREATETIME` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `UPDATETIME` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `IFUSE` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `ORDERNUM` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `PARENTID` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `PARENTNAME` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `PATH` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sys_org
-- ----------------------------
INSERT INTO `sys_org` VALUES ('0b9eadcf-fa67-49a3-bbe9-b5ee7186db7d', '北京分部', '付总', '2017-05-26 21:55:53', '2017-05-26 21:55:53', 'y', null, 'd6be153d-a133-43bd-a945-bf2570391e07', '项目部', null);
INSERT INTO `sys_org` VALUES ('1', '航天长峰', '张三', '2017-04-30 12:12:12', '2017-04-30 12:12:12', 'y', '1', 'root', 'root', 'root-航天长峰');
INSERT INTO `sys_org` VALUES ('2dd17e9e-943d-49a6-a0ea-8f0e73d8ddb6', '上海分部', '兄台', '2017-05-25 21:45:32', '2017-05-25 21:45:32', 'y', null, 'a07d1b93-855d-4636-a5ae-575f45d0f6b5', '研发部', null);
INSERT INTO `sys_org` VALUES ('3614bcee-06a1-4639-a352-eaee4538145c', '新疆分部', '王琦谁', '2017-05-25 00:25:27', '2017-05-27 16:31:53', 'y', null, 'd6be153d-a133-43bd-a945-bf2570391e07', '项目部', null);
INSERT INTO `sys_org` VALUES ('5a9ed7fd-47a8-4850-b535-aba5a9ae2257', '成都分部', '付总', '2017-05-25 00:26:06', '2017-05-25 00:26:06', 'y', null, 'a07d1b93-855d-4636-a5ae-575f45d0f6b5', '研发部', null);
INSERT INTO `sys_org` VALUES ('8de844bc-89c7-40e4-af6b-0017c8547868', '大数据组', '张总', '2017-05-25 21:45:51', '2017-05-26 20:25:18', 'y', null, '2dd17e9e-943d-49a6-a0ea-8f0e73d8ddb6', '上海分部', null);
INSERT INTO `sys_org` VALUES ('96617674-6a65-4b1d-ae85-f814414f1cdb', '广州分局', '张总', '2017-08-02 09:05:43', '2017-08-02 09:05:43', 'y', null, '1', '航天长峰', null);
INSERT INTO `sys_org` VALUES ('a07d1b93-855d-4636-a5ae-575f45d0f6b5', '北京分局', '张三5', '2017-05-05 14:50:49', '2017-08-02 09:05:02', 'y', null, '1', '航天长峰', null);
INSERT INTO `sys_org` VALUES ('d6be153d-a133-43bd-a945-bf2570391e07', '天津分局', '李四', '2017-05-08 11:24:27', '2017-08-02 09:05:15', 'y', null, '1', '航天长峰', null);
INSERT INTO `sys_org` VALUES ('e0502c03-e130-4f70-bec9-32f1fd22d48f', '广州分部', '广总', '2017-05-26 21:56:52', '2017-05-26 22:14:01', 'y', null, 'a07d1b93-855d-4636-a5ae-575f45d0f6b5', '研发部', null);
INSERT INTO `sys_org` VALUES ('ebf28e8f-133a-47ff-966f-3cc6061a95b8', '中山分区', '李总', '2017-08-02 09:06:05', '2017-08-02 09:06:05', 'y', null, '96617674-6a65-4b1d-ae85-f814414f1cdb', '广州分局', null);

-- ----------------------------
-- Table structure for `sys_orgtree`
-- ----------------------------
DROP TABLE IF EXISTS `sys_orgtree`;
CREATE TABLE `sys_orgtree` (
  `ID` varchar(50) COLLATE utf8_bin NOT NULL,
  `ORGID` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `CHILDRENID` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sys_orgtree
-- ----------------------------
INSERT INTO `sys_orgtree` VALUES ('017231de-54e1-4838-9058-61730bb88426', '1', 'd6be153d-a133-43bd-a945-bf2570391e07');
INSERT INTO `sys_orgtree` VALUES ('07ae65ee-1f6a-4866-a6aa-ee409dc07dea', 'a07d1b93-855d-4636-a5ae-575f45d0f6b5', '5a9ed7fd-47a8-4850-b535-aba5a9ae2257');
INSERT INTO `sys_orgtree` VALUES ('07bb28d0-dc00-440e-84c0-83753f8f76ca', '1', '96617674-6a65-4b1d-ae85-f814414f1cdb');
INSERT INTO `sys_orgtree` VALUES ('130cccfe-9387-4dd6-a5c7-c2098584185e', 'a07d1b93-855d-4636-a5ae-575f45d0f6b5', '2dd17e9e-943d-49a6-a0ea-8f0e73d8ddb6');
INSERT INTO `sys_orgtree` VALUES ('281247fb-babc-42c5-be9f-80bb1fba2c07', 'd6be153d-a133-43bd-a945-bf2570391e07', '0b9eadcf-fa67-49a3-bbe9-b5ee7186db7d');
INSERT INTO `sys_orgtree` VALUES ('45227c3f-fd63-415f-9f5e-385e1fcf5e67', '96617674-6a65-4b1d-ae85-f814414f1cdb', 'ebf28e8f-133a-47ff-966f-3cc6061a95b8');
INSERT INTO `sys_orgtree` VALUES ('68670fb1-0048-47d3-bc3b-6d244d5cb72c', '2dd17e9e-943d-49a6-a0ea-8f0e73d8ddb6', '8de844bc-89c7-40e4-af6b-0017c8547868');
INSERT INTO `sys_orgtree` VALUES ('7a6768ec-992d-4554-9ff9-caed6a2a837a', 'd6be153d-a133-43bd-a945-bf2570391e07', '3614bcee-06a1-4639-a352-eaee4538145c');
INSERT INTO `sys_orgtree` VALUES ('a36ebee7-38d1-412f-9dc0-23d772e400f4', 'a07d1b93-855d-4636-a5ae-575f45d0f6b5', 'e0502c03-e130-4f70-bec9-32f1fd22d48f');
INSERT INTO `sys_orgtree` VALUES ('cf36f723-d89b-478d-8687-08dc0f2736c6', '1', 'a07d1b93-855d-4636-a5ae-575f45d0f6b5');

-- ----------------------------
-- Table structure for `sys_resource`
-- ----------------------------
DROP TABLE IF EXISTS `sys_resource`;
CREATE TABLE `sys_resource` (
  `ID` varchar(50) COLLATE utf8_bin NOT NULL,
  `RESOURCENAME` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `TYPE` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `PARENTID` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `PARENTNAME` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `APPNAME` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `URL` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `LEVEL` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `ISMENULEAF` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `CREATETIME` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `UPDATETIME` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `IFUSE` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `ORDERNUM` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `relationid` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '关联资源Id',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sys_resource
-- ----------------------------
INSERT INTO `sys_resource` VALUES ('1', 'app.user', '用户管理', 'MENU', 'root', 'root', 'User', '/user/list', '1', 'y', '2017-04-05 12:12:12', '2017-04-05 12:12:12', 'y', '4', null);
INSERT INTO `sys_resource` VALUES ('10', 'app.updown', '平台管理', 'MENU', 'root', 'root', 'Platform', '/updown/list', '1', 'y', '2017-01-13 12:12:12', '2017-04-05 12:12:12', 'y', '12', null);
INSERT INTO `sys_resource` VALUES ('13', 'app.camera', '摄像机管理', 'unuse', 'root', 'root', 'Camera', '/camera/list', '1', 'y', '2017-01-13 12:12:12', '2017-01-13 12:12:12', 'y', '2', null);
INSERT INTO `sys_resource` VALUES ('14', 'ACCOUNT_ALL', '查询所有用户', 'web', 'c', 'root', 'maApp', '/login', '1', 'y', '2017-01-13 12:12:12', '2017-01-13 12:12:12', 'y', '0', null);
INSERT INTO `sys_resource` VALUES ('15', '/resource/menus', '获取菜单', 'api', 'root', 'root', 'Menu', '/resource/menus/', '1', 'y', '2017-04-05 12:12:12', '2017-04-05 12:12:12', 'y', '8', null);
INSERT INTO `sys_resource` VALUES ('16', 'app.save', '存储管理', 'MENU', 'root', 'root', 'Save', '/save/list', '1', 'y', '2017-04-05 12:12:12', '2017-04-05 12:12:12', 'y', '15', null);
INSERT INTO `sys_resource` VALUES ('17', 'app.server', '服务管理', 'MENU', 'root', 'root', 'Service', '/server/list', '1', 'y', '2017-04-05 12:12:12', '2017-04-05 12:12:12', 'y', '16', null);
INSERT INTO `sys_resource` VALUES ('18', 'app.channel', '通道列表', 'unuse', 'root', 'root', 'Channel', '/channel/list', '1', 'y', '2017-04-05 12:12:12', '2017-04-05 12:12:12', 'y', '17', null);
INSERT INTO `sys_resource` VALUES ('19', 'app.layout', '布局管理', 'MENU', 'root', 'root', 'Layout', '/layout/list', '1', 'y', '2017-04-05 12:12:12', '2017-04-05 12:12:12', 'y', '19', null);
INSERT INTO `sys_resource` VALUES ('2', 'app.account', '账户列表', 'MENU', 'root', 'root', 'Account', '/account/list', '1', 'y', '2017-04-05 12:12:12', '2017-04-05 12:12:12', 'y', '9', null);
INSERT INTO `sys_resource` VALUES ('22', 'app.alarm', '报警设置', 'MENU', 'root', 'root', 'Alarm', '/alarm/list', '1', 'y', '2017-04-05 12:12:12', '2017-04-05 12:12:12', 'y', '22', null);
INSERT INTO `sys_resource` VALUES ('23', 'app.logview', '操作日志', 'MENU', 'root', 'root', 'Log', '/logview/list', '1', 'y', '2017-04-05 12:12:12', '2017-04-05 12:12:12', 'y', '23', null);
INSERT INTO `sys_resource` VALUES ('24', 'app.skin', '皮肤管理', 'MENU', 'root', 'root', 'Skin', '/skin/list', '1', 'y', '2017-04-05 12:12:12', '2017-04-05 12:12:12', 'y', '24', null);
INSERT INTO `sys_resource` VALUES ('3', 'app.role', '角色管理', 'MENU', 'root', 'root', 'Role', '/role/list', '1', 'y', '2017-04-05 12:12:12', '2017-04-05 12:12:12', 'y', '5', null);
INSERT INTO `sys_resource` VALUES ('4', 'app.authority', '权限管理', 'MENU', 'root', 'root', 'Authority', '/authority/list', '1', 'y', '2017-04-05 12:12:12', '2017-04-05 12:12:12', 'y', '7', null);
INSERT INTO `sys_resource` VALUES ('5', 'app.resource', '菜单管理', 'web', 'root', 'root', 'Menus', '/resource/list', '1', 'y', '2017-04-05 12:12:12', '2017-04-05 12:12:12', 'y', '6', null);
INSERT INTO `sys_resource` VALUES ('6', 'app.res', '设备管理', 'unuse', 'root', 'root', 'Device', '/res/list', '1', 'y', '2017-01-13 12:12:12', '2017-01-13 12:12:12', 'y', '13', null);
INSERT INTO `sys_resource` VALUES ('7', 'app.groups', '虚拟组域管理', 'unuse', 'root', 'root', 'Group', '/groups/list', '1', 'y', '2017-04-05 12:12:12', '2017-04-05 12:12:12', 'y', '14', null);
INSERT INTO `sys_resource` VALUES ('9', 'app.org', '综合使用', 'MENU', 'root', 'root', 'Comprehensive', '/org/list', '1', 'y', '2017-04-05 12:12:12', '2017-04-05 12:12:12', 'y', '10', null);

-- ----------------------------
-- Table structure for `sys_resource_authority`
-- ----------------------------
DROP TABLE IF EXISTS `sys_resource_authority`;
CREATE TABLE `sys_resource_authority` (
  `ID` varchar(50) COLLATE utf8_bin NOT NULL,
  `AUTHORITYID` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `RESOURCEID` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sys_resource_authority
-- ----------------------------
INSERT INTO `sys_resource_authority` VALUES ('0df5d26d-360c-44d1-9451-4af6a46a672f', 'auth1', '2');
INSERT INTO `sys_resource_authority` VALUES ('1a9595aa-be07-4907-969b-2a5669a73068', 'auth1', '9');
INSERT INTO `sys_resource_authority` VALUES ('1ed962f6-82e1-4466-802f-6618efe30623', 'auth1', '15');
INSERT INTO `sys_resource_authority` VALUES ('2280ef05-7f96-425b-83cc-b8935ce0e7c0', 'ddad4173-6ff5-4b0d-b5dc-8c8ab188acc2', '9');
INSERT INTO `sys_resource_authority` VALUES ('267fce77-d3f7-493c-917b-5cecc1f2c71c', 'auth1', '1');
INSERT INTO `sys_resource_authority` VALUES ('3040f752-7a3e-4512-93aa-9f7d525dfb2c', 'ddad4173-6ff5-4b0d-b5dc-8c8ab188acc2', '17');
INSERT INTO `sys_resource_authority` VALUES ('491b83fb-c4fa-412b-b16c-8ceca9de7b4d', 'auth1', '23');
INSERT INTO `sys_resource_authority` VALUES ('4e802769-e557-40b8-8798-606f0b2de24a', 'ddad4173-6ff5-4b0d-b5dc-8c8ab188acc2', '14');
INSERT INTO `sys_resource_authority` VALUES ('4ff8bb33-43b5-4a60-8f6b-8f7d53bd6d6f', 'ddad4173-6ff5-4b0d-b5dc-8c8ab188acc2', '15');
INSERT INTO `sys_resource_authority` VALUES ('538e4ae1-f007-43ce-9220-5d724c2039e8', 'auth1', '4');
INSERT INTO `sys_resource_authority` VALUES ('54087438-3da2-476f-83bc-71d58157df79', 'ddad4173-6ff5-4b0d-b5dc-8c8ab188acc2', '19');
INSERT INTO `sys_resource_authority` VALUES ('79a1773d-ea2a-4be8-ad13-d4c3bd904bc4', 'auth1', '3');
INSERT INTO `sys_resource_authority` VALUES ('9e658309-07e9-4b43-a500-c1ceffa36bf5', 'auth1', '14');
INSERT INTO `sys_resource_authority` VALUES ('b25eb821-afb2-4cb1-b432-8dce4c88734c', 'auth1', '17');
INSERT INTO `sys_resource_authority` VALUES ('b7877116-8e29-4d84-b26e-9c92d7dfe014', 'auth1', '10');
INSERT INTO `sys_resource_authority` VALUES ('c254ad08-9a98-4d8a-9d31-689cc1514d20', 'ddad4173-6ff5-4b0d-b5dc-8c8ab188acc2', '10');
INSERT INTO `sys_resource_authority` VALUES ('d611d3cf-d4d6-427a-97d0-9b257cad2f20', 'auth1', '16');
INSERT INTO `sys_resource_authority` VALUES ('e59fdf78-c3df-4f53-81ee-868e4dd38f07', 'auth1', '24');
INSERT INTO `sys_resource_authority` VALUES ('eaa17914-9bc5-4a7f-ac2a-cbe0499838ca', 'auth1', '22');
INSERT INTO `sys_resource_authority` VALUES ('eafd8334-0529-4d29-8f5e-4ad931d41689', 'ddad4173-6ff5-4b0d-b5dc-8c8ab188acc2', '16');
INSERT INTO `sys_resource_authority` VALUES ('edb39168-430a-4b96-a31d-de792ea47b15', 'auth1', '19');

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `ID` varchar(50) COLLATE utf8_bin NOT NULL,
  `ROLENAME` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `CREATETIME` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `UPDATETIME` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `IFUSE` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `ORDERNUM` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('26ce1713-0354-4e50-869d-ec0837afe943', '普通用户', '普通用户使用', '2017-11-17 17:03:35', '2017-11-17 17:03:35', 'y', '221');
INSERT INTO `sys_role` VALUES ('r1', '超级管理员', '超级管理员', '2017-11-08 17:39:03', '2017-11-08 17:39:03', 'y', '123');

-- ----------------------------
-- Table structure for `sys_role_authority`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_authority`;
CREATE TABLE `sys_role_authority` (
  `ID` varchar(50) COLLATE utf8_bin NOT NULL,
  `AUTHORITYID` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `ROLEID` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sys_role_authority
-- ----------------------------
INSERT INTO `sys_role_authority` VALUES ('4d49c748-005c-444e-a204-7760bb775112', 'ddad4173-6ff5-4b0d-b5dc-8c8ab188acc2', '26ce1713-0354-4e50-869d-ec0837afe943');
INSERT INTO `sys_role_authority` VALUES ('role1', 'auth1', 'r1');

-- ----------------------------
-- Table structure for `sys_userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `sys_userinfo`;
CREATE TABLE `sys_userinfo` (
  `ID` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '用户id',
  `REALNAME` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '用户姓名',
  `GENDER` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '性别',
  `NATION` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '民族',
  `NATIVEPLACE` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '籍贯',
  `BIRTHDATE` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '出生日期',
  `POLITICALSTATUS` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '政治面貌',
  `MARITALSTATUS` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '婚姻状况',
  `NICKNAME` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '昵称',
  `PICTURE` varchar(300) COLLATE utf8_bin DEFAULT NULL COMMENT '头像',
  `PHONE` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '电话号码(唯一)',
  `MAIL` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '邮箱',
  `ORG` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '部门',
  `POLICENUM` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '警号',
  `IDENTITYCODE` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '身份证号',
  `QR` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '二维码',
  `QQ` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT 'qq号',
  `WECHAT` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '微信号',
  `JOBCODE` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '职务代码',
  `STATION` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '职称',
  `AUTOGRAPH` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '个性签名',
  `HOMEADDRESS` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '家庭住址',
  `OFFICEADDRESS` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '办公地址',
  `OTHERADDRESS` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '其他地址',
  `OFFICETELEPHONE` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '办公电话',
  `OTHERTELEPHONE` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '其他联系电话',
  `IFHIDENUM` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '开启号码隐藏',
  `CREATETIME` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `UPDATETIME` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `IFUSE` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `ORDERNUM` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `ORGID` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '部门id',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `POLICENUM` (`POLICENUM`) USING BTREE,
  UNIQUE KEY `PHONE` (`PHONE`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sys_userinfo
-- ----------------------------
INSERT INTO `sys_userinfo` VALUES ('dd1ea5a0-99e1-4bf7-8778-4ba825f77fcf', '测试用户1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2019-03-04 09:41:18', '2019-03-04 09:41:18', 'y', null, null);
INSERT INTO `sys_userinfo` VALUES ('u1', '系统默认', null, null, null, null, null, null, null, null, '15233212341', 'beijingchang@163.com', null, '10005', '110224198909292038', null, null, null, null, '总管理', null, null, null, null, null, null, null, '2017-08-22 08:58:20', '2018-10-25 08:51:17', 'y', null, null);

-- ----------------------------
-- Table structure for `tbl_account_camera`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_account_camera`;
CREATE TABLE `tbl_account_camera` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `AccountId` varchar(100) COLLATE utf8_bin NOT NULL,
  `AccountName` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `Type` varchar(100) COLLATE utf8_bin NOT NULL,
  `GroupOrCameraName` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `GroupOrCameraId` int(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of tbl_account_camera
-- ----------------------------
INSERT INTO `tbl_account_camera` VALUES ('57', 'eb4cf65e-fefb-45dd-9e76-01d099ff621e', 'test1', 'GROUP', '根组（请勿删除）', '8185');
INSERT INTO `tbl_account_camera` VALUES ('58', 'eb4cf65e-fefb-45dd-9e76-01d099ff621e', 'test1', 'CAMERA', 'DVR_TEST', '7');
INSERT INTO `tbl_account_camera` VALUES ('59', 'eb4cf65e-fefb-45dd-9e76-01d099ff621e', 'test1', 'CAMERA', '通道1', '8');
INSERT INTO `tbl_account_camera` VALUES ('60', 'eb4cf65e-fefb-45dd-9e76-01d099ff621e', 'test1', 'CAMERA', '通道2', '9');
INSERT INTO `tbl_account_camera` VALUES ('61', 'eb4cf65e-fefb-45dd-9e76-01d099ff621e', 'test1', 'CAMERA', '通道3', '10');
INSERT INTO `tbl_account_camera` VALUES ('62', 'eb4cf65e-fefb-45dd-9e76-01d099ff621e', 'test1', 'CAMERA', 'NVR_TEST', '11');
INSERT INTO `tbl_account_camera` VALUES ('63', 'eb4cf65e-fefb-45dd-9e76-01d099ff621e', 'test1', 'CAMERA', '通道1', '12');
INSERT INTO `tbl_account_camera` VALUES ('64', 'eb4cf65e-fefb-45dd-9e76-01d099ff621e', 'test1', 'CAMERA', '通道2', '13');
INSERT INTO `tbl_account_camera` VALUES ('65', 'eb4cf65e-fefb-45dd-9e76-01d099ff621e', 'test1', 'CAMERA', '通道3', '14');
INSERT INTO `tbl_account_camera` VALUES ('66', 'eb4cf65e-fefb-45dd-9e76-01d099ff621e', 'test1', 'CAMERA', 'IPC_TEST', '15');
INSERT INTO `tbl_account_camera` VALUES ('67', '51b5ae4a-7fb5-4a4b-a5d9-7ad8e5a95005', 'admin', 'GROUP', '根组（请勿删除）', '8185');

-- ----------------------------
-- Table structure for `tbl_account_place`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_account_place`;
CREATE TABLE `tbl_account_place` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `accountId` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `accountName` varchar(50) NOT NULL,
  `PlaceId` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_account_place
-- ----------------------------
INSERT INTO `tbl_account_place` VALUES ('5', 'eb4cf65e-fefb-45dd-9e76-01d099ff621e', 'test1', '1');

-- ----------------------------
-- Table structure for `tbl_alarm_event`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_alarm_event`;
CREATE TABLE `tbl_alarm_event` (
  `AlarmID` varchar(250) COLLATE utf8_bin NOT NULL,
  `DeviceID` varchar(1024) COLLATE utf8_bin NOT NULL,
  `AlarmPriority` int(10) NOT NULL,
  `AlarmMethod` int(10) NOT NULL,
  `DateTime` datetime NOT NULL,
  `AlarmDescription` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `Longitude` double DEFAULT NULL,
  `Latitude` double DEFAULT NULL,
  `AlarmType` int(11) DEFAULT NULL,
  `AlarmTypeParam` int(11) DEFAULT NULL,
  `EventType` int(11) DEFAULT NULL,
  PRIMARY KEY (`AlarmID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of tbl_alarm_event
-- ----------------------------
INSERT INTO `tbl_alarm_event` VALUES ('000d21141f234ffa9e2d713e7384b51d', '10000000001347412343', '4', '5', '2019-03-09 18:06:22', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('001d4421e338405f866a9a69f0bfbc4a', '10000000001347412343', '4', '5', '2019-03-09 18:05:59', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('00451bbd8197483a9efd50f09092bf7b', '10000000001347412343', '4', '5', '2019-03-09 18:07:05', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('006c052348da46b2951b737c4c532919', '10000000001347412343', '4', '5', '2019-03-09 20:00:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('0091b16927024b8392f50be2a112d6b0', '10000000001347412343', '4', '5', '2019-03-09 20:07:33', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('00bfbb7cdace483c817f949f44aa0661', '10000000001347412343', '4', '5', '2019-03-09 18:05:45', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('00ca467b0d77440b9086ef1e7b16b3d1', '10000000001347412343', '4', '5', '2019-03-09 18:09:29', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('00d73b50ac73422388b3e60f942c7b32', '10000000001347412343', '4', '5', '2019-03-09 18:08:58', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('010ad44834444c9abf6657773ba84d03', '10000000001347412343', '4', '5', '2019-03-09 20:02:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('0111492b0f4c46c3871f01119cc5c42e', '10000000001347412343', '4', '5', '2019-03-09 20:00:55', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('01ab01879fd34b7b9e3b8917f77ac256', '10000000001347412343', '4', '5', '2019-03-09 18:07:35', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('01b0ddc165574cd08414713a37a2050e', '10000000001347412343', '4', '5', '2019-03-09 20:07:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('01cf99e1f7e3472d891df82c12d1559a', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:47:07', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('01edfc103a19480ab8552d9a6deda5dc', '10000000001347412343', '4', '5', '2019-03-09 18:07:35', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('026cb5afc16847fab32012e1dd183387', '10000000001347412343', '4', '5', '2019-03-09 18:05:52', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('027ec7d3bffe4229a45a7750f20b6442', '10000000001347412343', '4', '5', '2019-03-09 18:07:51', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('029896c555e84659b685f73a622b16ba', '10000000001347412343', '4', '5', '2019-03-09 18:05:45', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('02d6802e17114cb6bc663659d6ba7f53', '10000000001347412343', '4', '5', '2019-03-09 18:05:29', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('03219ee3766f4da7972dcb46adcd2dd3', '10000000001347412343', '4', '5', '2019-03-09 20:07:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('03748481193d4c60aa8fa5bca1500205', '10000000001347412343', '4', '5', '2019-03-09 18:08:06', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('039b8fa4c6b446d6a6f9a1fe7f4cebd7', '10000000001347412343', '4', '5', '2019-03-09 18:04:16', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('03a81f3e5f0341b69ed374588c6fe718', '10000000001327412345', '1', '5', '2019-03-14 16:27:02', 'description', null, null, '2', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('03f0cac5ff744e9795d39453358447bf', '10000000001347412343', '4', '5', '2019-03-09 18:09:14', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('04142b50c1ac49428ebcc6c4ef82e599', '10000000001347412343', '4', '5', '2019-03-09 20:04:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('04933f2e720442e0b70b0e89ff96d38d', '10000000001327412346', '1', '5', '2019-03-14 16:08:02', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('049afa9fdf164856858f3b6980d58679', '10000000001347412343', '4', '5', '2019-03-09 18:09:37', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('04c667ed98f04d46887e2fd31e83657e', '10000000001347412343', '4', '5', '2019-03-09 18:09:36', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('04c6fa8cbe99473981314a3c2125c64c', '10000000001347412343', '4', '5', '2019-03-09 20:07:25', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('04d50b6a1c054826aaf74f1c462a293e', '10000000001347412343', '4', '5', '2019-03-09 18:04:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('0511f5902cc246369fd473f209f313cd', '10000000001347412343', '4', '5', '2019-03-09 18:08:52', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('052ebec712a54d269c769399c3c0b15d', '10000000001347412343', '4', '5', '2019-03-09 20:02:46', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('05716521ced6417f8884d43cbfa40ff8', '10000000001347412343', '4', '5', '2019-03-09 18:09:36', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('05a1065130734ce28a92e219e7aba47f', '10000000001347412343', '4', '5', '2019-03-09 18:08:21', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('05c637d8f2a14646938974c9c862a4df', '10000000001347412343', '4', '5', '2019-03-09 18:05:53', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('05ddcc29a3bc48dc8ec812adca336ee6', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:36:49', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('05e406f5a5f8451c88af19d4f7cf83b9', '10000000001347412343', '4', '5', '2019-03-09 18:03:53', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('061b53ffde964f70bc4e273b4c1a2583', '10000000001347412343', '4', '5', '2019-03-09 18:06:08', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('06358fa1559248d0b70559325c2f6710', '10000000001347412343', '4', '5', '2019-03-09 20:08:10', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('0658083d3e864804b55d7b46c6d73df4', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:24:15', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('067e07f1f7b84684ba762e83338b70e7', '10000000001347412343', '4', '5', '2019-03-09 20:00:55', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('0686ed8e4cf8491fb1ecbbd51b1e0ddb', '10000000001347412343', '4', '5', '2019-03-09 20:02:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('069178dc584b4b11a31194ff7d274f6a', '10000000001347412343', '4', '5', '2019-03-09 18:05:30', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('06cc9a5a25bb4c0486eb8d6434f20af3', '10000000001347412343', '4', '5', '2019-03-09 18:08:05', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('06cd2ddbeef64db9ac2fa069bf7e6c66', '10000000001347412343', '4', '5', '2019-03-09 20:00:48', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('06cfac854e5a4001a1f5663a35cae298', '10000000001347412343', '4', '5', '2019-03-09 18:07:05', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('06d065cb98fc460db6eb81ca4d54d2c6', '10000000001347412343', '4', '5', '2019-03-09 18:06:08', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('06df89751e114a868a7cdaeb1bc09fc5', '10000000001347412343', '4', '5', '2019-03-09 18:04:31', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('07347c543dd54ddfb921871a697f21f1', '10000000001347412343', '4', '5', '2019-03-09 18:07:13', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('076588f70cd948aabe8d948ad75f3e67', '10000000001347412343', '4', '5', '2019-03-09 18:09:37', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('077383773d6b479688c0e9c4a385bac7', '10000000001347412343', '4', '5', '2019-03-09 18:08:29', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('0780afc6905a4bbbb0c5122ec8c725af', '10000000001347412343', '4', '5', '2019-03-09 20:04:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('07c14b170288474c94b626291f0ea0a4', '10000000001347412343', '4', '5', '2019-03-09 18:04:08', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('07da19a61ccd473eb9df24af873b4d60', '10000000001347412343', '4', '5', '2019-03-09 18:03:53', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('080229096de54c82a40382381cca68a6', '10000000001347412343', '4', '5', '2019-03-09 18:07:29', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('081289d3223444b0968b9ceeb57f3d84', '10000000001347412343', '4', '5', '2019-03-09 18:08:43', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('082a6b879172478dba9da899e642802f', '10000000001347412343', '4', '5', '2019-03-09 20:02:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('086432e0d3304fa8a207b8493f1c4303', '10000000001347412343', '4', '5', '2019-03-09 18:04:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('08ab5d02aed7414bb2b8ec01bb3b7ffb', '10000000001347412343', '4', '5', '2019-03-09 20:07:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('08c0d45827c24aaf8a1bed293bac9630', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 08:54:12', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('08d9dc76edef40f28d05997c28a07b87', '10000000001347412343', '4', '5', '2019-03-09 20:01:01', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('0902cced0d77427a9eb893b27939aa29', '10000000001347412343', '4', '5', '2019-03-09 18:07:36', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('090d366e1d63408f8b83d04f1e6ac609', '10000000001347412343', '4', '5', '2019-03-09 20:05:01', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('091d77d9e7d94711901384958d0ec941', '10000000001347412343', '4', '5', '2019-03-09 18:07:21', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('093a90c100114f629e86ad7ae50994c3', '10000000001347412343', '4', '5', '2019-03-09 20:08:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('095c420b7756404aa3fd37d8b772a152', '10000000001347412343', '4', '5', '2019-03-09 18:04:30', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('097c7d01428149e59ff6b0a3a5f1bce7', '10000000001347412343', '4', '5', '2019-03-09 20:04:31', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('09b05cfad47a40ee8f46b01a9cf5642e', '10000000001347412343', '4', '5', '2019-03-09 20:04:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('0a694a8a40104e03a2ca8afae0d5dcf2', '10000000001347412343', '4', '5', '2019-03-09 18:08:05', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('0a9909f61c1948688a88806de99da11a', '10000000001347412343', '4', '5', '2019-03-09 20:03:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('0ae80e15be764d7385dee44519de0338', '10000000001347412343', '4', '5', '2019-03-09 18:06:07', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('0b160e50c77c4b0bbe89233dd95b85c0', '10000000001347412343', '4', '5', '2019-03-09 18:05:29', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('0b1f9ddae13040f4b73f76e856bb3d5f', '10000000001347412343', '4', '5', '2019-03-09 18:05:15', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('0b285e39461c49e89de1d3604b6035b9', '10000000001347412343', '4', '5', '2019-03-09 18:08:21', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('0b3fd904ad894ed0bad021c8a723a539', '10000000001347412343', '4', '5', '2019-03-09 20:01:10', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('0b6469ae810344f79191713f28d33dea', '10000000001347412343', '4', '5', '2019-03-09 18:06:22', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('0b6c2b75eced4bbdb06518988afb7697', '10000000001347412343', '4', '5', '2019-03-09 20:01:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('0b76d01ef5e648009ff96ac326f8ed12', '10000000001347412343', '4', '5', '2019-03-09 18:07:43', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('0ba16df0ac47435aabaa023ee5b35aad', '10000000001347412343', '4', '5', '2019-03-09 18:07:20', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('0bcdf5cce5d045e2b6d1b226d2daa479', '10000000001347412343', '4', '5', '2019-03-09 20:05:00', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('0be481a52803428d942bee1c257e8ef5', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:18:43', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('0c23dd49ed894c8b9092ba8de6abd313', '10000000001347412343', '4', '5', '2019-03-09 20:08:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('0c36591bd1fc4beda80825633803b62c', '10000000001347412343', '4', '5', '2019-03-09 20:02:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('0cd39b01531b4e0896d92681580aac87', '10000000001347412343', '4', '5', '2019-03-09 20:03:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('0ceafabe9ac74a44ab8516b155c15d91', '10000000001347412343', '4', '5', '2019-03-09 18:07:36', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('0d0e395a7bb242288d0d138625c61c69', '10000000001347412343', '4', '5', '2019-03-09 20:07:18', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('0d276dad53084118a4ec1770f8ee406b', '10000000001347412343', '4', '5', '2019-03-09 18:07:28', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('0d59d47918024c739a413f45e622a04f', '10000000001347412343', '4', '5', '2019-03-09 20:02:40', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('0d5ece6e1bab4434af6d6f59d40229a7', '10000000001347412343', '4', '5', '2019-03-09 20:04:23', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('0d63f7092d0b49cfabb23210e9b5e7e9', '10000000001347412343', '4', '5', '2019-03-09 18:08:21', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('0d650b62d93544138e2cdbd0a7e566e9', '10000000001347412343', '4', '5', '2019-03-09 20:04:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('0d801fda209d4280bfeb9d18448023a5', '10000000001347412343', '4', '5', '2019-03-09 18:04:46', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('0d90c4a6dbb04f26a7fca9dbad87f18d', '10000000001347412343', '4', '5', '2019-03-09 20:00:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('0d929276ad634879a4001486975b6bb2', '10000000001347412343', '4', '5', '2019-03-09 18:06:23', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('0ded17ce1c0344a99258774ec0c56584', '10000000001347412343', '4', '5', '2019-03-09 20:01:25', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('0df2162b7f6042b984935760bfe931e0', '10000000001347412343', '4', '5', '2019-03-09 20:02:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('0e039487ac2a450380b07796261810f3', '10000000001347412343', '4', '5', '2019-03-09 20:01:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('0e15b1e852304804a4002ac986e34bca', '10000000001347412343', '4', '5', '2019-03-09 20:03:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('0e1a0073479a40188b386fbc61269015', '10000000001347412343', '4', '5', '2019-03-09 18:09:06', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('0e200e2ac5ee481685b99b234ec1058b', '10000000001347412343', '4', '5', '2019-03-09 18:05:37', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('0e73cf918e29469a89388c4abebe90db', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:27:10', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('0e9555a9ff32456b8eff9531527643fb', '10000000001347412343', '4', '5', '2019-03-09 18:10:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('0eb53c0613554805a3ee7429580b1dcb', '10000000001347412343', '4', '5', '2019-03-09 18:06:50', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('0ebbb25b6760477c931a3104381da3f5', '10000000001347412343', '4', '5', '2019-03-09 20:01:25', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('0ec4be43282c4f688014d5b19b753eb5', '10000000001347412343', '4', '5', '2019-03-09 18:05:52', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('0f13756a09c648e996b9c10aae603e90', '10000000001347412343', '4', '5', '2019-03-09 18:06:15', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('0f2bd86751754823b7b95fcceaf56bd1', '10000000001347412343', '4', '5', '2019-03-09 18:09:14', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('0f90b2c22bb74a118ca6a4af69eab49b', '10000000001347412343', '4', '5', '2019-03-09 20:08:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('0f938be7919c402e9168de72faaeb896', '10000000001347412343', '4', '5', '2019-03-09 20:07:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('0f94a06fcc2b4044beedaf5833c72703', '10000000001347412343', '4', '5', '2019-03-09 20:01:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('102955ec8aa34291b7bfa6fee1557e92', '10000000001347412343', '4', '5', '2019-03-09 18:05:53', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('104e6ab6f34e4071a39454260f66be22', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:33:34', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('10854880f91e418f915ee9a4ce2fe532', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 08:58:10', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('10b369a9b5e947298572aa70f234812d', '10000000001347412343', '4', '5', '2019-03-09 20:04:01', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('10c39d6b265c4dd1af2305ae48932efb', '10000000001347412343', '4', '5', '2019-03-09 18:10:33', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('112abef520464f28af039227c4bd3d52', '10000000001347412343', '4', '5', '2019-03-09 18:10:11', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('115413afc4d94f24b5ee6ed70196304f', '10000000001347412343', '4', '5', '2019-03-09 20:07:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('115dab913fb944958a1d90631b0b8ce1', '10000000001347412343', '4', '5', '2019-03-09 20:01:48', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('116122f2b79c44f4b8c39b0d82af5dae', '10000000001347412343', '4', '5', '2019-03-09 20:03:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('11788637a1bc45aca171be08a0739ca8', '10000000001347412343', '4', '5', '2019-03-09 18:07:58', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('11bdd86a8f6f45a6a262396da35c78ac', '10000000001347412343', '4', '5', '2019-03-09 20:01:40', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('11c142429196420cb6320c86b5c0f213', '10000000001347412343', '4', '5', '2019-03-09 18:04:08', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('11eb470546404690b8e940ef27256bde', '10000000001347412343', '4', '5', '2019-03-09 18:08:13', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('11fbbcbee5a94e8cb19bcf07aa7c2318', '10000000001347412343', '4', '5', '2019-03-09 18:07:51', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('11fcb0b846d14305b0c294892b67e13f', '10000000001347412343', '4', '5', '2019-03-09 20:01:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('11fd342d5b654997b55561f737ddcc5c', '10000000001347412343', '4', '5', '2019-03-09 18:04:23', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1248d2bf5ffa48c682987fc1f327013e', '10000000001347412343', '4', '5', '2019-03-09 18:04:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1262b514f8ea483f86f58e24661e898d', '10000000001347412343', '4', '5', '2019-03-09 20:07:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('129e10ba228c46dca48f5bda91cdbb40', '10000000001347412343', '4', '5', '2019-03-09 20:02:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('12a8ae5b45f34e4c8ea72ec227d39539', '10000000001347412343', '4', '5', '2019-03-09 20:03:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1323e351b06441c581e3b6af3763d1bf', '10000000001347412343', '4', '5', '2019-03-09 18:06:51', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1353104a33ce4921aa447648c5ad4ad4', '10000000001347412343', '4', '5', '2019-03-09 20:08:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('138360ae645a464c9772b1dd531e6560', '10000000001347412343', '4', '5', '2019-03-09 18:08:14', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1384f86df66c4ddbaa4083f7d603cb36', '10000000001347412343', '4', '5', '2019-03-09 20:04:38', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1386585e333e4a5da6da22f596551eae', '10000000001347412343', '4', '5', '2019-03-09 20:04:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('13ed19a668e044ea945d8fe3a6b65934', '10000000001347412343', '4', '5', '2019-03-09 18:06:00', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('144e5d9b7e0e4b028cd7f7d8aa8eedd6', '10000000001347412343', '4', '5', '2019-03-09 20:07:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1475782417554a689c4ba0238ed224c7', '10000000001347412343', '4', '5', '2019-03-09 20:07:25', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('14b56fedfbf64d7a9b63dc7b8252252e', '10000000001347412343', '4', '5', '2019-03-09 20:01:01', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1519ad5b2be9413dacb1d5ba298475e0', '10000000001347412343', '4', '5', '2019-03-09 18:10:18', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('153047edf4c24db1988792548eae66b5', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:39:54', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('158654d604c7400d8557b38b8ca41cea', '10000000001347412343', '4', '5', '2019-03-09 20:02:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('15c414a26f0b4e7a8b0c3cf17f838c79', '10000000001347412343', '4', '5', '2019-03-09 18:07:29', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('15ca2d29862a46e38ddb5b39ca02f8eb', '10000000001347412343', '4', '5', '2019-03-09 18:04:08', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('15ee0068a71540df98b3cec5d0efdffc', '10000000001347412343', '4', '5', '2019-03-09 20:04:16', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1606d709537b4339866c80f0257b06a3', '10000000001347412343', '4', '5', '2019-03-09 20:08:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1622433dfcb94be0899d49d551fdb778', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:08:59', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('1624e1ebba9c414cbdb5d785a9345c62', '10000000001347412343', '4', '5', '2019-03-09 18:08:44', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('162bca12378e4bf78ddd133a90e1b11c', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 08:45:26', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('1669ec4963304c9fb51a58ea77738637', '10000000001347412343', '4', '5', '2019-03-09 18:06:43', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1695c8d492de424c9a5094e9d7fd751e', '10000000001347412343', '4', '5', '2019-03-09 18:09:22', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('16a99252ad08419eb1b3e527bd88b50c', '10000000001347412343', '4', '5', '2019-03-09 18:07:06', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('16b5e9fba3de4d53a3b1df88e326e0a8', '10000000001347412343', '4', '5', '2019-03-09 20:03:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('16bb72cdc7bf4520b3decb91521a44ad', '10000000001347412343', '4', '5', '2019-03-09 18:05:14', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('171943061e754ce3a700bc125e67be36', '10000000001347412343', '4', '5', '2019-03-09 20:01:55', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1758b6bd6bb94a47a3e2f1873f5544f6', '10000000001347412343', '4', '5', '2019-03-09 18:10:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('17807597db4944bfa3d4d2c71d75d559', '10000000001347412343', '4', '5', '2019-03-09 20:01:03', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1780876fc7d54f21a92a2452fbbed04d', '10000000001347412343', '4', '5', '2019-03-09 18:07:59', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('17e72d9f9ee04f3ba1f7b436d9562534', '10000000001347412343', '4', '5', '2019-03-09 20:04:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('17f4ef6f781e4cafb16f01741ce82b7e', '10000000001347412343', '4', '5', '2019-03-09 18:10:33', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('184bacc50d8d4199a3272854ab64cbfe', '10000000001347412343', '4', '5', '2019-03-09 18:05:36', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1853ea19a6ba44c4a015d2d6365b78ee', '10000000001347412343', '4', '5', '2019-03-09 18:08:06', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('185b6ee471e54a10ac82ff61c0914d65', '10000000001347412343', '4', '5', '2019-03-09 20:04:23', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('18b0077392774fc48227a2140e11f5c8', '10000000001347412343', '4', '5', '2019-03-09 18:05:53', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('18c15913d6e64f42a8126f1fb82c60ac', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:58:33', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('18c49b1bc73e4377baaf306808138ee4', '10000000001347412343', '4', '5', '2019-03-09 18:08:51', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('18db1c7bca5445cb9c087e221ba2706d', '10000000001347412343', '4', '5', '2019-03-09 20:03:55', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('18eaa2e9472349cb91480370706a8b88', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:52:43', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('1901f8614d914492863e72ff2b27d9ff', '10000000001347412343', '4', '5', '2019-03-09 20:07:33', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1931eaf1704c4d2a8927b1eaf46db83b', '10000000001347412343', '4', '5', '2019-03-09 20:02:31', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('193f8de01ad6487eb5b7a40b6dc15ee8', '10000000001347412343', '4', '5', '2019-03-09 18:08:37', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('195294b745824d32bf4fd72a170d9ea9', '10000000001347412343', '4', '5', '2019-03-09 18:08:59', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('197f9bcf96d04cc694605016adfea1cb', '10000000001347412343', '4', '5', '2019-03-09 20:04:10', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('19ad95e5c56648b28a04100c3b100ae1', '10000000001347412343', '4', '5', '2019-03-09 18:09:14', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('19dadadda5bd44e6b18630df74e640ce', '10000000001347412343', '4', '5', '2019-03-09 18:04:08', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('19f1b68164854ef5982737fb446a3352', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:23:12', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('1a54f357c745453dab6d6d9ce21c86e9', '10000000001347412343', '4', '5', '2019-03-09 18:07:20', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1a56cc443ae343f594323c85ea106eea', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:35:46', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('1a622bbf4111459781cd21af847033f8', '10000000001347412343', '4', '5', '2019-03-09 18:08:52', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1a7d868b541e4f5789a4f18ff82183e6', '10000000001347412343', '4', '5', '2019-03-09 20:07:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1a82f1a1fee7475ba9fc29e8623ac2ef', '10000000001347412343', '4', '5', '2019-03-09 20:08:10', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1ac5db2339ea4d35a62647c16f352e9d', '10000000001347412343', '4', '5', '2019-03-09 20:00:55', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1ad5c8563ff64870a15fd91e31428d74', '10000000001347412343', '4', '5', '2019-03-09 18:10:18', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1aee0e0dd9ce4db9bb327c62c0192923', '10000000001347412343', '4', '5', '2019-03-09 20:04:46', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1b141914aa384197beef10946918d119', '10000000001347412343', '4', '5', '2019-03-09 18:08:20', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1b3b5e5acb534b0398693a437acb62e3', '10000000001347412343', '4', '5', '2019-03-09 20:05:01', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1b5deda3d38f4061b735ac3b7f6a22d8', '10000000001347412343', '4', '5', '2019-03-09 18:06:07', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1b6154d04fdd41a4afda1f4712327093', '10000000001347412343', '4', '5', '2019-03-09 20:02:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1b65bf0a9f39474faf3bcc34f05a539a', '10000000001327412346', '1', '5', '2019-03-14 16:07:25', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('1b70170fc581412086b90ca3fd510bfc', '10000000001347412343', '4', '5', '2019-03-09 20:02:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1b90e19a92774a59b31e4d9e968931d4', '10000000001347412343', '4', '5', '2019-03-09 18:08:13', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1b9c6d46e976410987cfd479924388fc', '10000000001347412343', '4', '5', '2019-03-09 18:04:53', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1ba1a50777c443c48662ee421d6b5510', '10000000001347412343', '4', '5', '2019-03-09 20:01:55', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1bc55bea670844ffa7663d8e5b1248d7', '10000000001347412343', '4', '5', '2019-03-09 18:07:21', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1bd9ebb834e54daa903b1f1b7d592574', '10000000001347412343', '4', '5', '2019-03-09 18:05:14', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1c13b7d8fce74e6c9eeb9ec07c25db9f', '10000000001347412343', '4', '5', '2019-03-09 18:05:37', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1c2465f82ace4e87ab63c05ce124db79', '10000000001347412343', '4', '5', '2019-03-09 20:03:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1c6690c173a84a2ab4983c771f41f22e', '10000000001347412343', '4', '5', '2019-03-09 18:05:30', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1c796e8469cf49cf97a3517fa189878e', '10000000001347412343', '4', '5', '2019-03-09 20:03:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1c7f3cfdaae649959e56919df5e89917', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:15:48', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('1cc1c342bfe743da84df76e872ed9820', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:10:01', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('1cd89c0b89c44153abd49af6d060889f', '10000000001347412343', '4', '5', '2019-03-09 18:07:58', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1cda5080be8a432fa514b13afcfedf2b', '10000000001347412343', '4', '5', '2019-03-09 18:10:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1d0433ebe7d641e6aef493cea047e9e2', '10000000001347412343', '4', '5', '2019-03-09 20:08:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1d0db4162b3345feb8612eec4607509c', '10000000001347412343', '4', '5', '2019-03-09 18:08:37', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1d339dd5e0a84ddc801940f45f64da62', '10000000001347412343', '4', '5', '2019-03-09 20:01:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1d7f4915c9014944b8026c6845c2eff6', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:41:43', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('1d8ed06b2ab0454193cb68defaab4352', '10000000001347412343', '4', '5', '2019-03-09 18:08:51', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1d9bc9eb2bbe4caf8838cbbc64eaaca6', '10000000001347412343', '4', '5', '2019-03-09 20:02:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1dfdaf7d78274170b59d969e7398c1ae', '10000000001347412343', '4', '5', '2019-03-09 20:02:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1e060c6882314cb79c65499c1aabd528', '10000000001327412346', '1', '5', '2019-03-14 14:40:18', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('1e28432d762d44d98353db21193f9840', '10000000001347412343', '4', '5', '2019-03-09 18:09:29', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1e4f980b00f141bab281c1b4ef42b12c', '10000000001347412343', '4', '5', '2019-03-09 20:04:16', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1ea677668fbe44b18fbd25529c4c6ec9', '10000000001347412343', '4', '5', '2019-03-09 18:07:05', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1eabe75f33414a93b4fad3130f773a25', '10000000001347412343', '4', '5', '2019-03-09 18:08:14', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1ebf75029b4e43b595bfa014c002942a', '', '1', '5', '2019-03-14 16:56:48', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('1ec06e3af76f43339657036dda184b60', '10000000001347412343', '4', '5', '2019-03-09 18:04:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1efed637d9f8419a919cd5b657867c6e', '10000000001347412343', '4', '5', '2019-03-09 20:03:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1f4a6871a52045148b049babe66ffc1b', '10000000001347412343', '4', '5', '2019-03-09 20:00:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1f67c4de7cb54b7c90d5d2a979ecdb0f', '10000000001347412343', '4', '5', '2019-03-09 20:04:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1f7038c2366a42438f5be48d4c36f1c8', '10000000001347412343', '4', '5', '2019-03-09 20:04:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1f7a47489e864e74b967f507e2407bcb', '10000000001347412343', '4', '5', '2019-03-09 20:01:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1f9b989e747847e68063ae9eba67627c', '10000000001347412343', '4', '5', '2019-03-09 20:01:10', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('1fec460b606f4413b4cd5f675b2c6bbc', '10000000001347412343', '4', '5', '2019-03-09 18:07:58', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('200960dbe8c0462fb2ecb8c7e6c668fb', '10000000001347412343', '4', '5', '2019-03-09 18:10:33', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('2023c2e826d84eefba01240136c2e677', '10000000001347412343', '4', '5', '2019-03-09 18:08:36', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('205062b5c3c74e18b567a7141b52de14', '10000000001347412343', '4', '5', '2019-03-09 18:05:45', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('20689bc999eb483dbb9587ebec1b3742', '10000000001347412343', '4', '5', '2019-03-09 20:00:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('2072c962434843248dab8c8203e74326', '10000000001347412343', '4', '5', '2019-03-09 20:01:31', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('2090063805104504a092cb8f1ba319df', '10000000001347412343', '4', '5', '2019-03-09 20:07:55', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('20bbd2f79c1a4330873dcf7c060205c9', '10000000001347412343', '4', '5', '2019-03-09 18:08:06', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('20c1741ceb0746d3b79c9a23cd5bfeae', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 08:55:45', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('211e328f0e44476c838459fa8b249113', '10000000001347412343', '4', '5', '2019-03-09 18:04:01', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('2138e5d22a944df4b1957b08b7bcf80e', '10000000001347412343', '4', '5', '2019-03-09 18:05:52', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('2195da34ccc44a0188147aa24487c3e5', '10000000001347412343', '4', '5', '2019-03-09 20:07:18', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('2198c16542554b49946108dcefe9dd7a', '10000000001347412343', '4', '5', '2019-03-09 18:05:37', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('222de6d314ac40fda361918a5c414223', '10000000001347412343', '4', '5', '2019-03-09 18:08:13', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('223b923338374f75bb51df1ecd04226e', '10000000001347412343', '4', '5', '2019-03-09 18:04:15', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('227dcf981dd942128f7a4c5cc02ea299', '10000000001347412343', '4', '5', '2019-03-09 20:01:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('22ac1853a50d400ca98ce8302034c05e', '10000000001347412343', '4', '5', '2019-03-09 18:07:58', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('22db33eb63d442d1bdffcecb3afc29f8', '10000000001347412343', '4', '5', '2019-03-09 18:08:28', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('22e68681d049499c948a84f5324a7620', '10000000001347412343', '4', '5', '2019-03-09 20:08:16', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('23145cb84b004183bbdcc7d177c6d6f3', '10000000001347412343', '4', '5', '2019-03-09 18:05:37', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('232f97e0782045a9b310a42624e34215', '10000000001347412343', '4', '5', '2019-03-09 20:02:01', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('2333d55bf1434cb3975e168b962b9565', '10000000001347412343', '4', '5', '2019-03-09 20:01:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('23460597fdfc4f5ab8875fe5d315172a', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:24:45', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('235f4a9a9ade4ac7b7db771b4a10835c', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:06:54', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('236373ab862d4791b7364a19a1d78f31', '10000000001347412343', '4', '5', '2019-03-09 20:01:10', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('23b537b89b604e608eb5ebf633388715', '10000000001347412343', '4', '5', '2019-03-09 20:04:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('23c846d191324c60afeeeaeecd33db9b', '10000000001347412343', '4', '5', '2019-03-09 20:04:46', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('23cc0ded8af3407db4125402745ad92b', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:07:26', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('23dd2bfc8ead460b89daffc4fef55fc3', '10000000001347412343', '4', '5', '2019-03-09 18:04:31', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('23e537c181c243669d1e40a32959dd86', '10000000001327412346', '1', '5', '2019-03-14 16:08:28', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('23f830e0dd4a4624a9d687872a56419e', '10000000001347412343', '4', '5', '2019-03-09 18:09:21', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('24144ebcdaad4a63b375f440334aadbf', '10000000001347412343', '4', '5', '2019-03-09 18:07:36', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('2478412be5b6408a922d35198bce59a6', '10000000001347412343', '4', '5', '2019-03-09 20:03:31', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('247e9f2e7ff543fba8424f1efed07cc2', '10000000001347412343', '4', '5', '2019-03-09 18:08:59', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('248d7625dd0c485391a915a59db6b2ca', '10000000001347412343', '4', '5', '2019-03-09 18:07:58', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('249b6e3923274f9ab66331d5474b94e6', '10000000001347412343', '4', '5', '2019-03-09 20:01:40', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('24bc73e6d5c84657a1bfdd63d844d8c8', '10000000001347412343', '4', '5', '2019-03-09 18:06:51', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('24dde8d8173c40b4aa538985e34e3133', '10000000001347412343', '4', '5', '2019-03-09 20:00:55', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('24fc4f134b534d0fbde60ade2e6e3626', '10000000001327412346', '1', '5', '2019-03-14 16:05:22', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('251eee30e9aa4d3cab4f7bd00d8d0101', '10000000001347412343', '4', '5', '2019-03-09 20:07:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('253f9d8a35e4409c8c3d880926b59c3a', '10000000001347412343', '4', '5', '2019-03-09 20:01:46', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('2542d360a0bb49e188646a1127f7200b', '10000000001347412343', '4', '5', '2019-03-09 20:04:01', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('25f69a076b6148dcab54c41b4840a785', '10000000001347412343', '4', '5', '2019-03-09 20:07:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('2607d0de53454f799a41ff20a7858f03', '10000000001347412343', '4', '5', '2019-03-09 20:00:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('2637f2e0c0e5478faacac4e7c495da48', '10000000001347412343', '4', '5', '2019-03-09 18:06:23', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('267ae813df6041c3834431c4e490c00c', '10000000001327412341', '1', '5', '2019-03-09 19:40:16', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('2698a3799c1f425eb5b6fa70c895cf99', '10000000001347412343', '4', '5', '2019-03-09 18:07:35', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('2721f620a7ff4c57bb68e53af2de20f3', '10000000001347412343', '4', '5', '2019-03-09 18:05:44', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('27428d6df07847d585d028515f2f7d45', '10000000001347412343', '4', '5', '2019-03-09 20:07:25', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('27e4771ff26249f79b8ccf49dd1a17ba', '10000000001347412343', '4', '5', '2019-03-09 18:09:07', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('27ee4cb6242a4717849d5e31a91a4975', '10000000001347412343', '4', '5', '2019-03-09 18:07:36', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('28168eb4c0dc4c1aa79c0e7ea59e677a', '10000000001347412343', '4', '5', '2019-03-09 20:04:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('288cae332bcf4d9da12b7d010fbe171d', '10000000001347412343', '4', '5', '2019-03-09 18:07:05', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('28a52afacaff417194daf27ba8a021a9', '10000000001347412343', '4', '5', '2019-03-09 18:04:45', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('29026fcdc123433b94d1c36ebdae4130', '10000000001347412343', '4', '5', '2019-03-09 18:03:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('2921bb36c5014b7eb02e130725c08147', '10000000001347412343', '4', '5', '2019-03-09 18:10:33', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('296796dd35d54f61b2d52ecb87e103bb', '10000000001347412343', '4', '5', '2019-03-09 18:08:21', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('29b1c1e13cdc405bb3f220fc8bc99e6a', '10000000001347412343', '4', '5', '2019-03-09 20:01:25', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('29ba75079ec948abb56bc09afbfa36f2', '10000000001347412343', '4', '5', '2019-03-09 20:07:55', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('29c1e107d27442eb9c702741309131be', '10000000001347412343', '4', '5', '2019-03-09 20:04:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('29d5eaadb9f4415fbdb5f3765a1c420b', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 08:49:28', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('2a2e52955e634f948ff950bd54cc40ef', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:11:36', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('2a3aefcd314c4140aa64e83015107183', '10000000001347412343', '4', '5', '2019-03-09 20:05:01', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('2a58543fb9c04bb2a09b07458102eebb', '10000000001347412343', '4', '5', '2019-03-09 18:07:51', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('2a653e38b00f4e6384dfa06ca1182ef6', '10000000001347412343', '4', '5', '2019-03-09 20:01:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('2a80f159389348ce91fa749deb147e24', '10000000001347412343', '4', '5', '2019-03-09 20:01:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('2ab7f1a0ae7342819a9dd5a22c4e2cc8', '10000000001347412343', '4', '5', '2019-03-09 18:05:22', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('2ad3b66514b543e3b8be8e62e1e81b55', '10000000001347412343', '4', '5', '2019-03-09 20:03:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('2ae0240fa138489bba1cbbbcb85b42dc', '10000000001347412343', '4', '5', '2019-03-09 20:03:31', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('2b1aaeabac8f4f4284208718ea1a1c1c', '10000000001347412343', '4', '5', '2019-03-09 18:04:16', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('2b3352862c724f439baab7b71fbdfe28', '10000000001347412343', '4', '5', '2019-03-09 18:05:14', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('2b3ddc923be440f694a0614c89ddf3d1', '10000000001347412343', '4', '5', '2019-03-09 18:04:38', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('2b5542f77a13496389be502bf20f6a43', '10000000001347412343', '4', '5', '2019-03-09 18:08:43', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('2bdde0bcc64544568c204c35704b3933', '10000000001347412343', '4', '5', '2019-03-09 18:10:10', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('2c31ced1c2e1474ba44e4065528a33ff', '10000000001347412343', '4', '5', '2019-03-09 18:06:57', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('2c674c9e893e44daa49beb0931f9d6dd', '10000000001347412343', '4', '5', '2019-03-09 20:02:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('2c70e1c20e144fefbd916af28927f625', '10000000001347412343', '4', '5', '2019-03-09 20:02:25', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('2cb5f4d1f1e949ae95c3943644277507', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:50:44', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('2cdbceae66dd47f28f04f7e9dedd5d99', '10000000001347412343', '4', '5', '2019-03-09 18:04:23', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('2ce5646cf31145a6a0622b64c4d14f76', '10000000001347412343', '4', '5', '2019-03-09 20:01:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('2cf179289f1840b59fa9b5c8346d17a9', '10000000001347412343', '4', '5', '2019-03-09 18:09:37', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('2d3990b253834c0a9691a61cb9d3ea95', '10000000001347412343', '4', '5', '2019-03-09 18:05:30', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('2d61dddeb7de45cc86ef625a38cef462', '10000000001347412343', '4', '5', '2019-03-09 20:04:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('2db75cd50aba430398dd92746bfce4a3', '10000000001347412343', '4', '5', '2019-03-09 20:00:40', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('2dbdc93bb7ee4900b9baaf946d1a07a4', '10000000001347412343', '4', '5', '2019-03-09 18:06:51', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('2e1faf2d97b74151bfce0aa75852454f', '10000000001347412343', '4', '5', '2019-03-09 20:03:31', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('2e783470777142879a105b800429e663', '10000000001347412343', '4', '5', '2019-03-09 18:10:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('2ea4c965a57f4f1a906cb2950d1e2e6f', '10000000001347412343', '4', '5', '2019-03-09 20:04:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('2f2d02de0e964b4c8e72419403b93b9f', '10000000001347412343', '4', '5', '2019-03-09 18:06:58', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('2f3c1032d0e14ec3a72f27f964cbcbb3', '10000000001347412343', '4', '5', '2019-03-09 18:05:29', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('2f6117000c16444d9174d2224dfbd5c5', '10000000001347412343', '4', '5', '2019-03-09 18:09:14', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('2f67a4ab335f4dc8b6a34fc97a985a11', '10000000001347412343', '4', '5', '2019-03-09 18:06:07', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('2f77e7372baa490ca14d4c1dfef4c7f3', '10000000001347412343', '4', '5', '2019-03-09 20:01:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('2f966a7d99314cb1ab19b2f8d6e9ffa7', '10000000001347412343', '4', '5', '2019-03-09 18:05:45', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('2f9786648bed43a9aa1f627dc74c74b4', '10000000001347412343', '4', '5', '2019-03-09 20:03:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('2f9e7d90eea444489eafa11759626e55', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:22:31', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('2fecc27af83e4466b022bab173b687bf', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:02:29', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('30025c9b3e894d57bc91a73f6fbe5524', '10000000001347412343', '4', '5', '2019-03-09 18:07:58', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3013be2830c74629a07ae768121429ef', '10000000001347412343', '4', '5', '2019-03-09 18:08:29', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('302f5f3fad8c4b7d869a7459e358068e', '10000000001347412343', '4', '5', '2019-03-09 18:06:58', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('303ba90b3a5a4a5f9ed68f5e183d4bc0', '10000000001347412343', '4', '5', '2019-03-09 20:02:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('30559c96970744be86c2acec79f54f32', '10000000001347412343', '4', '5', '2019-03-09 20:02:16', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('305becbc8aed479fbcac502cc45c3dc2', '10000000001347412343', '4', '5', '2019-03-09 20:07:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('30cd16299a9f4b8f9612a78c900fd546', '10000000001347412343', '4', '5', '2019-03-09 18:06:50', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3103b6c88680443bb6f5758ec06d9306', '10000000001347412343', '4', '5', '2019-03-09 20:08:10', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3148c2dc9a704f919c7b6ac95cce327a', '10000000001347412343', '4', '5', '2019-03-09 18:04:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3160e8e060144b1a909010a473c226e0', '10000000001347412343', '4', '5', '2019-03-09 18:04:46', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3174b14514254ab9af86d1dbf3e4ae58', '10000000001347412343', '4', '5', '2019-03-09 18:08:52', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('317df0cb2fe241ffb25eee4be0cb97be', '10000000001347412343', '4', '5', '2019-03-09 20:03:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('319e04a2e796484bbafcef8cc689a86d', '10000000001347412343', '4', '5', '2019-03-09 20:01:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('31df05d9c44749fa9d536f21d741c4f0', '10000000001347412343', '4', '5', '2019-03-09 18:05:15', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('31f0ba21b51a421ca93df75c64f19223', '10000000001347412343', '4', '5', '2019-03-09 20:02:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('31f19af1439448b1a70f5bf96fb8e78e', '10000000001347412343', '4', '5', '2019-03-09 18:08:21', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('32058e4e9018494e92e6abd762ab76e8', '10000000001347412343', '4', '5', '2019-03-09 20:00:46', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3247bb31321b47139366895b1eab4cc1', '10000000001347412343', '4', '5', '2019-03-09 18:07:13', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3285e5fd268e404098abc7b23e245a33', '10000000001347412343', '4', '5', '2019-03-09 20:07:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('32cbb029ea8a479f8d35012cc8f5aadf', '10000000001347412343', '4', '5', '2019-03-09 20:02:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('32dd6312adc0476ab48d145ac3c8f477', '10000000001347412343', '4', '5', '2019-03-09 18:08:36', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('331fa01659014090bdee277a1bc839d6', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:32:01', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('339c38fb0a1e41c496aaaabd48a28fe9', '10000000001347412343', '4', '5', '2019-03-09 20:03:40', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('33c684c71aca4b878ea74d6f5fbbfca1', '10000000001347412343', '4', '5', '2019-03-09 20:02:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('33ca0537ecfd4d07933e8563af987450', '10000000001347412343', '4', '5', '2019-03-09 20:03:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('33e06f0e922c410081a243b101f4283f', '10000000001347412343', '4', '5', '2019-03-09 20:07:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('33e9ed7c3dee42298c95373cdbecb93e', '10000000001347412343', '4', '5', '2019-03-09 20:02:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3417417c003f4084b45c14c7abdff98d', '10000000001347412343', '4', '5', '2019-03-09 18:05:22', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('341ad384bf5b4ecb97db4ca4da0cb852', '10000000001347412343', '4', '5', '2019-03-09 18:08:13', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('34e0e7f8aaa64b0089bd1ff69eb05dd3', '10000000001347412343', '4', '5', '2019-03-09 18:10:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('35009ef6abcf47fb95c68aeffc044b4e', '10000000001347412343', '4', '5', '2019-03-09 18:10:18', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3539fcbd7de948bda6969059f427c6a4', '10000000001347412343', '4', '5', '2019-03-09 18:04:23', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('35402cfa36e540a889f1e189e0d13b32', '10000000001347412343', '4', '5', '2019-03-09 20:03:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('35475a8f98f04c85ac971982f9cacb90', '10000000001347412343', '4', '5', '2019-03-09 18:03:53', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3561474ac8ae4f0a90aebd77c1385469', '10000000001347412343', '4', '5', '2019-03-09 20:08:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('35a51e876ce4438ebc2d961d5fc98bf8', '10000000001347412343', '4', '5', '2019-03-09 20:02:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('35c4fbe311db416594819c2be28c5a2d', '10000000001347412343', '4', '5', '2019-03-09 18:05:45', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3664984695714b5ba23b3c8298cb4955', '10000000001347412343', '4', '5', '2019-03-09 18:07:36', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('36bb3468c14240fea713b168ea17ed6f', '10000000001327412346', '1', '5', '2019-03-14 15:53:39', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('36d1f62281f642748bc77e7c037a890d', '10000000001347412343', '4', '5', '2019-03-09 18:07:35', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('36dc667df6d24d14815a8596a49a5518', '10000000001347412343', '4', '5', '2019-03-09 20:00:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('36dfa12819d94e35aa3311ccb94867c5', '10000000001347412343', '4', '5', '2019-03-09 20:07:55', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('370bbd689292440a9e8585c5fbcd17b9', '10000000001347412343', '4', '5', '2019-03-09 18:08:20', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('372c5bbebfdf4ee0b28dd23414b9e99e', '10000000001347412343', '4', '5', '2019-03-09 18:05:59', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('374f20e769b84d23995627b1ef3c845c', '10000000001347412343', '4', '5', '2019-03-09 20:08:01', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('376058727e814298b8024ebfb022c992', '10000000001347412343', '4', '5', '2019-03-09 20:02:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3774699b76de4a6d9eaf1aa871a13039', '10000000001347412343', '4', '5', '2019-03-09 20:02:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3775ce92ca0f43a99ae44913b23243ec', '10000000001347412343', '4', '5', '2019-03-09 20:04:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('377c1d7e77d64c10b3cee5825f46dc02', '10000000001347412343', '4', '5', '2019-03-09 18:07:14', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3793acf18f054e40ba5ed77500a74d33', '10000000001347412343', '4', '5', '2019-03-09 20:03:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('37c20dd8a72046cfa3c5904f47b2ece6', '10000000001347412343', '4', '5', '2019-03-09 18:05:22', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('37c2c9513a224d40a97614b4ad11a9bb', '10000000001347412343', '4', '5', '2019-03-09 20:04:31', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('37d7acf3c8ee43dd8524edc2fc602809', '10000000001347412343', '4', '5', '2019-03-09 20:04:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3811007b1b044f20ab7833ace15da120', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:29:01', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('381b0222a0674e4c8919ef20fb43db10', '10000000001327412345', '1', '5', '2019-03-14 16:25:54', 'description', null, null, '2', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('38322c8c1912441f912e3f8e5fc9fb9b', '10000000001347412343', '4', '5', '2019-03-09 18:05:45', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3866ae02086b480b9ecf19b03b8c766c', '10000000001347412343', '4', '5', '2019-03-09 20:02:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('388436bb2ce84fc48f8744cd00886275', '10000000001347412343', '4', '5', '2019-03-09 18:07:58', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('389bddaac58243289c0936ad9ea40216', '10000000001347412343', '4', '5', '2019-03-09 18:10:18', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('38c947473b914866a344e7c076488dc9', '10000000001347412343', '4', '5', '2019-03-09 20:05:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('38cbb7bed2a1402f93c8ccf60e7920da', '10000000001347412343', '4', '5', '2019-03-09 18:07:05', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('38ef4c57e1524ec69721490dab399fbd', '10000000001347412343', '4', '5', '2019-03-09 20:04:31', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('38f196439e224c2e89171c5a794ec4bb', '10000000001347412343', '4', '5', '2019-03-09 18:05:22', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('393afea3f89e4d68a4b425e1b97fbeab', '10000000001347412343', '4', '5', '2019-03-09 20:03:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3958f8d26c2646bb921066ae6de49957', '10000000001347412343', '4', '5', '2019-03-09 18:08:14', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('39862dbd5641433a999a847f4f9f7034', '10000000001347412343', '4', '5', '2019-03-09 18:08:36', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('39a0ac773afb4506a97044e71d51d591', '10000000001347412343', '4', '5', '2019-03-09 18:08:37', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('39a193e080ac4331b28680276a33fbdb', '10000000001347412343', '4', '5', '2019-03-09 20:01:40', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('39ad983d96df44c4a8496b92fa27915d', '10000000001347412343', '4', '5', '2019-03-09 18:06:51', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('39c7c5d99e5b460eb70443ba134a11fc', '10000000001347412343', '4', '5', '2019-03-09 18:10:18', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3a28d31d412d4e6d835cfde0512cca10', '10000000001347412343', '4', '5', '2019-03-09 20:03:10', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3a2c97787bc5434e9af6cab3e68bc4bc', '10000000001347412343', '4', '5', '2019-03-09 18:07:51', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3a31e8a33f9348b396b10bc0b30ab5f0', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:10:31', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('3a414471bf2f408287fcb67a7f8d89cb', '10000000001347412343', '4', '5', '2019-03-09 20:03:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3a6f12d50f744fe9932060b40abfc10e', '10000000001347412343', '4', '5', '2019-03-09 20:08:01', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3a841f6799d743e89eda6e5ea74c7f22', '10000000001347412343', '4', '5', '2019-03-09 18:06:43', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3aa77a24e9504c898fbc666981b5cb4c', '10000000001347412343', '4', '5', '2019-03-09 20:05:01', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3abe2290639a42af82e001a017ce0ea7', '10000000001347412343', '4', '5', '2019-03-09 20:01:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3ac8cfb7f296400999efc77fb312722e', '10000000001347412343', '4', '5', '2019-03-09 18:03:53', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3addeecd286442de87c568cabd943bad', '10000000001347412343', '4', '5', '2019-03-09 20:07:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3b17ebccdacf495d9d7e338f5e0b0831', '10000000001347412343', '4', '5', '2019-03-09 20:04:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3b41d0d5c63744a89722c28eae3cbd2a', '10000000001347412343', '4', '5', '2019-03-09 20:01:25', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3b4e6616f9d84578a629ab32e9b085af', '10000000001347412343', '4', '5', '2019-03-09 18:06:50', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3b526c6fa42941ba8b04e8ed8221a9f9', '10000000001347412343', '4', '5', '2019-03-09 18:09:28', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3bcb9c82fa8d4f39ad35df424e9b5c53', '10000000001347412343', '4', '5', '2019-03-09 18:09:37', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3bf3e81291454ad684d47dc377ce708a', '10000000001347412343', '4', '5', '2019-03-09 18:09:14', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3c0b0640c13e4cc1bca50cb818a5661b', '10000000001347412343', '4', '5', '2019-03-09 18:08:28', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3c1efac6a158457aa57ad4e9a49e98b7', '10000000001347412343', '4', '5', '2019-03-09 18:07:05', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3c47e51678c541ba925368b91e7b514f', '10000000001347412343', '4', '5', '2019-03-09 20:00:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3c73948c2027490d811743c09fd147cc', '10000000001347412343', '4', '5', '2019-03-09 20:02:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3ccbe0307585474598c3d22ebe0d6c24', '10000000001347412343', '4', '5', '2019-03-09 18:09:29', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3d17aead3bb542d6baaeae6f387a01ab', '10000000001347412343', '4', '5', '2019-03-09 18:07:06', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3d60350375974878955dd28f4c2f9c01', '10000000001347412343', '4', '5', '2019-03-09 18:05:52', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3d6c7a6d068a4fe69d21b37e149a4d6e', '10000000001347412343', '4', '5', '2019-03-09 18:10:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3db92e35aacf43a19340c1a5f1807f17', '10000000001347412343', '4', '5', '2019-03-09 18:08:13', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3dc96895689c4efb93bf009ba2f0d38f', '10000000001347412343', '4', '5', '2019-03-09 18:05:15', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3e327696284742f6b1d1696d7552b9ac', '10000000001347412343', '4', '5', '2019-03-09 20:01:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3e3bc989570c45798afd0d5ad2a3e4e0', '10000000001347412343', '4', '5', '2019-03-09 20:02:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3e513d1507c7406b95978f89160907b1', '10000000001347412343', '4', '5', '2019-03-09 18:07:51', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3ebbea8b7d124b768ef82db0e7a82111', '10000000001347412343', '4', '5', '2019-03-09 18:06:00', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3ecbb955835a48aaa7972bb8c97512a1', '10000000001347412343', '4', '5', '2019-03-09 18:10:33', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3edf9a9d9e9c486db0b1de7a7aada06d', '10000000001347412343', '4', '5', '2019-03-09 20:07:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3ef114846c20441b86aa4c0c27e6b080', '10000000001347412343', '4', '5', '2019-03-09 18:05:29', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3ef4849704974d33b2cbefd33ccbffda', '10000000001347412343', '4', '5', '2019-03-09 20:03:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3f18704e1bde4a93a1abe2c139f543b9', '10000000001347412343', '4', '5', '2019-03-09 20:07:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3f32945b64d648ada43aa5f5f407d669', '10000000001347412343', '4', '5', '2019-03-09 18:03:53', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3f33e1e2b11d4acd8946bab51106c5e4', '10000000001347412343', '4', '5', '2019-03-09 18:04:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3f7e4286a9354670abf21c6733c59a53', '10000000001347412343', '4', '5', '2019-03-09 20:04:46', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3f97ebbf51f2471da78f9119f6bc188e', '10000000001347412343', '4', '5', '2019-03-09 18:05:45', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3fa40819dfa349fca1851fc15751224a', '10000000001347412343', '4', '5', '2019-03-09 20:02:01', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3fab7058aa9b4427832da125ec104724', '10000000001347412343', '4', '5', '2019-03-09 20:02:10', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3fcb53c7c24a43e6a7d09b2e63462a6e', '10000000001347412343', '4', '5', '2019-03-09 18:06:07', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3fcbfb5e810b448bb4befec4b05863e2', '10000000001347412343', '4', '5', '2019-03-09 18:04:30', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('3fd05a62ca9b42ba85eeabb2bd083196', '10000000001347412343', '4', '5', '2019-03-09 18:03:53', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('40600cbcdb9b458f84605afcc24f2916', '10000000001347412343', '4', '5', '2019-03-09 20:04:53', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4080bdae1dca4113972df3a6198843eb', '10000000001347412343', '4', '5', '2019-03-09 20:02:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('40ff6baac4b14115a886f94d66607782', '10000000001347412343', '4', '5', '2019-03-09 18:07:20', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4101fc8f2aac47368c346d02009fef40', '10000000001347412343', '4', '5', '2019-03-09 18:04:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4108c9997eb241dfbf1b34637304f9de', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:53:13', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('4151aba346164598879ac210741b10ba', '10000000001347412343', '4', '5', '2019-03-09 20:01:33', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('419891a0f4a44f20a07adbbf63c90a7e', '10000000001347412343', '4', '5', '2019-03-09 18:08:44', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('41d1147205d5475390dde2cf1e15b4d1', '10000000001347412343', '4', '5', '2019-03-09 20:02:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('41ded74b5a2a497a9dc867dc2b209cba', '10000000001327412346', '1', '5', '2019-03-14 15:52:39', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('41ebaf563e6247c1ac1d948c57bf2a10', '10000000001347412343', '4', '5', '2019-03-09 20:01:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('41f9c8afa46c4a50a0161c1fb3ba47d8', '10000000001347412343', '4', '5', '2019-03-09 18:03:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('42018f50aad849a4b3a5d76ba38fb584', '10000000001347412343', '4', '5', '2019-03-09 20:03:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('422b6498991a4a1ea591ee05a2e184b1', '10000000001347412343', '4', '5', '2019-03-09 18:07:58', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4257fff988e749e9beaa1023ddb45c1d', '10000000001347412343', '4', '5', '2019-03-09 18:09:06', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('426b6b71437a4ccb9995bf0ccd0fa194', '10000000001347412343', '4', '5', '2019-03-09 20:02:55', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('42ac1f694445427aa955bdbf6dc75beb', '10000000001347412343', '4', '5', '2019-03-09 18:06:14', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('42bbd85c923949bdb2bf7560be9370dd', '10000000001347412343', '4', '5', '2019-03-09 20:07:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('42bf3a1b19af46d59922f4dd395cbbc2', '10000000001347412343', '4', '5', '2019-03-09 18:06:00', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('42fbe9bde4404319834a381ed059e868', '10000000001347412343', '4', '5', '2019-03-09 18:04:45', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('432c5881db5b4b478ae1380948483f5b', '10000000001347412343', '4', '5', '2019-03-09 18:07:43', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4343982dd44f42b0ade318ec6f5429ab', '10000000001347412343', '4', '5', '2019-03-09 20:07:48', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('43591fc9406148a395bd87e57133d4c2', '', '1', '5', '2019-03-14 16:56:16', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('4360bc53dac8463b82afea7175544127', '10000000001347412343', '4', '5', '2019-03-09 18:09:06', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('43877b103cbc48359a4c264d97d88921', '10000000001347412343', '4', '5', '2019-03-09 18:05:59', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('43d6e803b9144098b82859440bf5644b', '10000000001347412343', '4', '5', '2019-03-09 18:08:13', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('43df70a2722a41d0b70c44b03a26cf4d', '10000000001347412343', '4', '5', '2019-03-09 20:01:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('44441355658e40d5854b40d873d12703', '10000000001347412343', '4', '5', '2019-03-09 20:07:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('444b1f7a95234f69a90bd3ef4941a3b5', '10000000001347412343', '4', '5', '2019-03-09 18:08:51', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('448d4d9dfd364e0d84b6bccdc85f80ac', '10000000001347412343', '4', '5', '2019-03-09 20:08:16', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('44977249c3b54a11bb33fd1d9e254d5e', '10000000001347412343', '4', '5', '2019-03-09 18:08:52', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('44bd249592de40fd998139b1a6bf0bde', '10000000001347412343', '4', '5', '2019-03-09 20:00:40', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('44e88d3d4e9745bc9bb53dbdabb4d84b', '10000000001347412343', '4', '5', '2019-03-09 18:04:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4505883d60e24119aaaa9221b74bd9bc', '10000000001347412343', '4', '5', '2019-03-09 20:00:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('45609d2744334d988cc78f555ff543c9', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:33:04', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('457eb36b489e48c281c4670e9c8c1898', '10000000001347412343', '4', '5', '2019-03-09 18:04:16', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('45a1e8672d32446cad11ad5c2fa9e6d8', '10000000001347412343', '4', '5', '2019-03-09 20:04:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('45cc136b805444d49bba0d836a3158b8', '10000000001347412343', '4', '5', '2019-03-09 18:07:20', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('460c6a7e34ff4c8f88c3f08a9c4777ec', '10000000001347412343', '4', '5', '2019-03-09 18:07:36', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('461ff3063c5f4f96b25e61b1130c1846', '10000000001347412343', '4', '5', '2019-03-09 20:01:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4628a203739a435eb984a6a3f6327d8e', '10000000001347412343', '4', '5', '2019-03-09 20:08:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('462bbc9deaca4cb5aac0439605938620', '10000000001347412343', '4', '5', '2019-03-09 20:00:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('46409eb0a52e4b09b59a5fd829c6f53e', '10000000001347412343', '4', '5', '2019-03-09 18:09:07', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4650c20b1f2545379c0628da6d0a606f', '10000000001347412343', '4', '5', '2019-03-09 20:07:18', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('466f9347080d45d8aa4abcb0bcb4ee48', '10000000001347412343', '4', '5', '2019-03-09 18:09:00', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('469235d557394b85a53dfa5c94001ee6', '10000000001347412343', '4', '5', '2019-03-09 20:03:46', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('46da7770392c43ad9b8d398b9c70bdab', '10000000001347412343', '4', '5', '2019-03-09 18:04:45', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('46e49390ab3d4c109aa371619d476d0b', '10000000001347412343', '4', '5', '2019-03-09 18:10:25', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('46ec01993228470892e9d315c748408f', '10000000001347412343', '4', '5', '2019-03-09 20:02:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4705c46ce51143b8a835190f6ea247a6', '10000000001347412343', '4', '5', '2019-03-09 18:04:23', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('475513eae31f4ac589254e18d3865002', '10000000001347412343', '4', '5', '2019-03-09 18:05:14', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4773216f595e446ba5d5e638abd0b883', '10000000001327412345', '1', '5', '2019-03-14 16:14:55', 'description', null, null, '2', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('47d49bfd5a584aa798f9a98880193634', '10000000001347412343', '4', '5', '2019-03-09 20:01:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4822b6e81da64985be2bfa51af0bae0d', '10000000001347412343', '4', '5', '2019-03-09 18:06:58', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('482572c9eccf4867a08271c141623983', '10000000001347412343', '4', '5', '2019-03-09 18:10:18', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4867946468d74ecb8aa4b4f1d141c1b4', '10000000001347412343', '4', '5', '2019-03-09 20:01:03', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('487839618b304f178528526525643509', '10000000001347412343', '4', '5', '2019-03-09 20:04:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('491f5b08cfa04f128329ab3d06138f4d', '10000000001347412343', '4', '5', '2019-03-09 20:08:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4928d770b0bc496c9554cb45a3357ccf', '10000000001347412343', '4', '5', '2019-03-09 20:03:55', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4936722aeccb424ab2919b9f54c9c508', '10000000001347412343', '4', '5', '2019-03-09 18:10:18', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('49a67297a7de4b38abb625b2671741c4', '10000000001347412343', '4', '5', '2019-03-09 18:10:10', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('49abae2262ae42bba86a098c7ee747f9', '10000000001347412343', '4', '5', '2019-03-09 20:04:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('49bf1252d1fb43eb9a9f197b30e9978c', '10000000001347412343', '4', '5', '2019-03-09 18:05:37', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4a8fb3c413914e1c9036f48e5d11713d', '10000000001347412343', '4', '5', '2019-03-09 20:08:10', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4aac4fa6c75046a9b9ac754c2b8cfb44', '10000000001347412343', '4', '5', '2019-03-09 18:04:38', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4ab087cff4ea42508c289e3ddaf608c6', '10000000001347412343', '4', '5', '2019-03-09 20:03:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4ab8657ed9404b3f8dc44b14790c5739', '10000000001347412343', '4', '5', '2019-03-09 18:07:51', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4ac98bfd69b8433cab162cb8998957e7', '10000000001347412343', '4', '5', '2019-03-09 20:05:01', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4b19d54668544b91beacc7d78cfb03a2', '10000000001347412343', '4', '5', '2019-03-09 20:07:25', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4b2fcf96415d47f2892f0212fcce6cb8', '10000000001347412343', '4', '5', '2019-03-09 18:09:36', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4b49bcfc85bd46f795d3ad43dcddbf1c', '10000000001347412343', '4', '5', '2019-03-09 20:04:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4b5ab9816a564a33a2f59ba78c9a1362', '10000000001347412343', '4', '5', '2019-03-09 18:10:25', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4b6120598cbd4be1b9692cda1a329afc', '10000000001347412343', '4', '5', '2019-03-09 18:07:21', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4b67cc5053164eeaaddb0ede21730625', '10000000001347412343', '4', '5', '2019-03-09 20:02:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4ba2966146df45b3933a519d55317a87', '10000000001347412343', '4', '5', '2019-03-09 20:01:16', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4bc928e5e2e54c24bf2624d960fdefa1', '10000000001347412343', '4', '5', '2019-03-09 20:01:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4bd27f709bb6410d8bdb548c8e1be80f', '10000000001347412343', '4', '5', '2019-03-09 18:10:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4bd6950a363a478ca5b982c5ac158184', '10000000001347412343', '4', '5', '2019-03-09 20:03:46', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4bf62f6f6ee347379710a62427d83eb9', '10000000001347412343', '4', '5', '2019-03-09 18:09:14', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4c0aaa10f4f3434e8f17955acb731fc8', '10000000001347412343', '4', '5', '2019-03-09 18:04:31', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4c1b16d66ed940c6afb28ed564fa70c9', '10000000001347412343', '4', '5', '2019-03-09 20:04:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4c4b6d21792d44b3acf92535544fce66', '10000000001327412346', '1', '5', '2019-03-14 14:45:28', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('4c4c3bc5f88a4eeda0edb657b7330fe2', '10000000001347412343', '4', '5', '2019-03-09 18:05:30', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4c90b0681ec3405098645ff615242c72', '10000000001347412343', '4', '5', '2019-03-09 20:03:01', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4cd9492394f84b6ba82e565c7a174e4f', '10000000001347412343', '4', '5', '2019-03-09 18:09:36', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4d00ebe8ebf94c628b120e15f138ddb5', '10000000001347412343', '4', '5', '2019-03-09 20:01:25', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4d05b86f703343ce868a9ab1944a789d', '10000000001347412343', '4', '5', '2019-03-09 18:10:33', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4d32bc9ff03e430cb8dd9c744aeded2c', '10000000001347412343', '4', '5', '2019-03-09 18:07:06', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4d56918a3e29403d82179fd30c6a9dd0', '10000000001347412343', '4', '5', '2019-03-09 20:07:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4d5742fe09a842a8916109326f918282', '10000000001347412343', '4', '5', '2019-03-09 20:07:25', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4d58cb6f8c1649c898d3c39ecadb8dd6', '10000000001347412343', '4', '5', '2019-03-09 18:08:29', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4d61fc4727fb4bb68797395308b6127d', '10000000001347412343', '4', '5', '2019-03-09 18:06:15', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4d683836f8ba49bfa56ad282d7c6c9d4', '10000000001347412343', '4', '5', '2019-03-09 20:02:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4d717824a8c942f4bf207591b535db13', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:27:43', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('4d8b03769e57472eae4ac5fc04925db2', '10000000001347412343', '4', '5', '2019-03-09 20:07:40', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4dcde7002c7743a29e696138f937b093', '10000000001347412343', '4', '5', '2019-03-09 20:03:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4dd06b92796e4ff3bce2d6cb130c8d1b', '10000000001347412343', '4', '5', '2019-03-09 20:07:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4df3dac118e24d98a8ad9c5920fe25d7', '10000000001347412343', '4', '5', '2019-03-09 20:01:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4dfeafdeb349409daa326dc6f1a1611e', '10000000001347412343', '4', '5', '2019-03-09 20:07:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4e3984eebb6545689689bb1716c59082', '10000000001347412343', '4', '5', '2019-03-09 20:03:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4e6405e4e62c4a88881c340a2f40dd59', '10000000001347412343', '4', '5', '2019-03-09 18:09:21', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4eb2a42243b54ad9832b61c22aac1993', '10000000001347412343', '4', '5', '2019-03-09 18:09:15', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4eda4228c2d8458daa680d72123a2e1e', '10000000001347412343', '4', '5', '2019-03-09 20:04:38', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4f0539014655459aa4af89545de7a5f8', '10000000001347412343', '4', '5', '2019-03-09 18:08:05', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4f5e062ead8a46478a4acac88e55f01f', '10000000001347412343', '4', '5', '2019-03-09 20:08:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4f64fabf3d1f4292b9365006cabc6a14', '10000000001347412343', '4', '5', '2019-03-09 18:10:26', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4f68108db8c14ab89a149243c3cb9f9e', '10000000001347412343', '4', '5', '2019-03-09 18:06:22', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4f7e6d138e3f48d9b040339b6daeae09', '10000000001347412343', '4', '5', '2019-03-09 18:06:22', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4fa0c7823fae49b0811f5bfb0000e4ee', '10000000001347412343', '4', '5', '2019-03-09 18:08:06', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('4fc07bcb92db4142a3ce41a78c7bcb64', '10000000001347412343', '4', '5', '2019-03-09 18:05:21', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('501069e4abf44869b49c08df5686ded5', '10000000001347412343', '4', '5', '2019-03-09 20:01:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('501303e49f2246ed99eb0c14dd801f57', '10000000001347412343', '4', '5', '2019-03-09 18:05:22', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('502b702e3d484d939d00101f134ba8e2', '10000000001347412343', '4', '5', '2019-03-09 18:05:53', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('503c8a9f8f3e4868bd7a6ba4fbdde8b8', '10000000001347412343', '4', '5', '2019-03-09 18:04:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('50562d64ae364426ba306bea3c136e6e', '10000000001347412343', '4', '5', '2019-03-09 20:03:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('5065c5cbfb7b4665bc42be7e2378740a', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:13:40', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('5095450918e843dd87c78fd1d0df0b5f', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:34:28', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('509e6b95cbe54bbb873115f633d6b648', '10000000001347412343', '4', '5', '2019-03-09 20:03:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('50de5835d208414291a9648ab20ff771', '10000000001347412343', '4', '5', '2019-03-09 18:05:59', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('50de89cb1d9642dea239c8a86413ff43', '10000000001347412343', '4', '5', '2019-03-09 18:09:37', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('50fa042c5ec34be184c4f1ac58d26015', '10000000001347412343', '4', '5', '2019-03-09 18:06:43', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('51031161e0b24d4ea7b9cf39e947e9a0', '10000000001347412343', '4', '5', '2019-03-09 18:04:01', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('511e566a733c4355921be806f350814a', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 08:48:26', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('5145708fc76849dfa082bdc0530f096a', '10000000001347412343', '4', '5', '2019-03-09 20:01:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('5150ad88bf0b4beba554f8025465ccb0', '10000000001347412343', '4', '5', '2019-03-09 20:04:46', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('5169f72511a146049d09038ade2622c4', '10000000001347412343', '4', '5', '2019-03-09 18:09:07', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('51721a95aeac4dc2b6faad1aec541408', '10000000001347412343', '4', '5', '2019-03-09 18:06:58', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('51e56879af234db09474d1b08faf1c1b', '10000000001347412343', '4', '5', '2019-03-09 18:09:29', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('5204e1876e4c4b928a90ad4a23d08036', '10000000001327412346', '1', '5', '2019-03-14 15:56:53', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('525eacab48a244e7a3cc0a2f6aaa7c54', '10000000001347412343', '4', '5', '2019-03-09 20:03:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('527f30be202c4bc888ef2e90768bd7be', '10000000001347412343', '4', '5', '2019-03-09 18:08:35', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('52908dadbc024cfbbd04acddeffac366', '10000000001347412343', '4', '5', '2019-03-09 20:04:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('52bc9ec8be9d4cf9893520091389742b', '10000000001347412343', '4', '5', '2019-03-09 18:04:08', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('52c0cffe7c864b9ebce7f300f37754ef', '10000000001347412343', '4', '5', '2019-03-09 20:04:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('52d13eeb5b6a4403ab36918776020c8f', '10000000001347412343', '4', '5', '2019-03-09 20:05:01', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('52e20bac3166474586cb888bb98ae26a', '10000000001347412343', '4', '5', '2019-03-09 20:07:18', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('530405dd7c4343f3a3c3f413e92a530a', '10000000001347412343', '4', '5', '2019-03-09 20:01:40', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('530f244855a54ed0a9291b29b414bd09', '10000000001347412343', '4', '5', '2019-03-09 20:01:40', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('533f05b82bd946ca985ca7f14993b7db', '10000000001347412343', '4', '5', '2019-03-09 20:07:55', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('5385d211ff7240ba8b4bf173f1b249d4', '10000000001347412343', '4', '5', '2019-03-09 18:09:07', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('542bed44ffe8418897c5fbb0484f5602', '10000000001347412343', '4', '5', '2019-03-09 18:10:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('543aa5e37d9b4b0d85a8da44824e93bf', '10000000001347412343', '4', '5', '2019-03-09 18:06:51', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('543d20c6d3074d5eb67e6b848f9f8253', '10000000001347412343', '4', '5', '2019-03-09 20:02:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('54668a277f5449648714761da427056e', '10000000001347412343', '4', '5', '2019-03-09 20:02:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('54b7ffe98e594f519e408f63ff68c9c1', '10000000001347412343', '4', '5', '2019-03-09 20:03:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('54de1f943c3e46a695e3146f6ee07814', '10000000001347412343', '4', '5', '2019-03-09 18:10:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('54ef0734254642cab3d3fff310e51225', '10000000001347412343', '4', '5', '2019-03-09 18:09:14', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('5522094f69d64601b4c7136de14f6e4a', '10000000001347412343', '4', '5', '2019-03-09 20:03:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('5543c219735c495bb3be8465c7483340', '10000000001347412343', '4', '5', '2019-03-09 18:05:22', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('555e19564b554a9abe70211355e61808', '10000000001347412343', '4', '5', '2019-03-09 18:10:25', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('557d7d77519143e7a460354e91529c6a', '10000000001347412343', '4', '5', '2019-03-09 20:03:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('558ba6fb725f485894253a88c2534d67', '10000000001347412343', '4', '5', '2019-03-09 20:07:33', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('55f4cc981e404949a15f11b9e297c521', '10000000001347412343', '4', '5', '2019-03-09 20:03:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('55f55a732f7c47a8b5043f16bc8120e8', '10000000001347412343', '4', '5', '2019-03-09 18:09:29', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('55f7c76dee36406eb9e457e5cc4d7582', '10000000001347412343', '4', '5', '2019-03-09 20:04:08', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('55f959fd5e8f478885be0f003ab19914', '10000000001347412343', '4', '5', '2019-03-09 18:08:50', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('56014741efb1458191c39aafc340f62e', '10000000001347412343', '4', '5', '2019-03-09 18:07:43', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('561df291718c468b85cbb99348233bf4', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:21:03', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('562c383ea5a94775accec58c791cf6c0', '10000000001347412343', '4', '5', '2019-03-09 20:03:16', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('563bcd79fc0b4f86a99ce325e0153b6a', '10000000001347412343', '4', '5', '2019-03-09 18:08:21', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('56743138decb4a06a7fdecbc9871be93', '10000000001347412343', '4', '5', '2019-03-09 18:08:29', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('569dfcf8920f4415aeec2ca2c2a9e0b8', '10000000001327412345', '1', '5', '2019-03-14 16:29:08', 'description', null, null, '2', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('5705b00be16041789d093db5242881d4', '10000000001347412343', '4', '5', '2019-03-09 18:10:10', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('57282f571d9e44c7af8f499f7f6d2ead', '10000000001347412343', '4', '5', '2019-03-09 20:01:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('5763fdcb222e43e4a0c3e067f983eff7', '10000000001347412343', '4', '5', '2019-03-09 18:07:28', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('5787992e631e4f03bf7e82c9b907cfde', '10000000001347412343', '4', '5', '2019-03-09 18:04:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('57b963dd5de24ea7afe21a9b3e0ceb3f', '10000000001347412343', '4', '5', '2019-03-09 20:03:10', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('57cf47fd49944305a85e19a4a85cc4f3', '10000000001347412343', '4', '5', '2019-03-09 18:08:06', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('57d9faba2e6b4265acbe145f230e3ee0', '10000000001347412343', '4', '5', '2019-03-09 20:03:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('582d3899737c4748a00e06ab0bbabd03', '10000000001347412343', '4', '5', '2019-03-09 20:02:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('58428e52d60949e195397e26e19279bd', '10000000001347412343', '4', '5', '2019-03-09 18:09:21', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('592723c1daa8402f8a38dd54b617eb80', '10000000001347412343', '4', '5', '2019-03-09 20:01:01', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('596914990f154e3c9a96c138c863329a', '10000000001347412343', '4', '5', '2019-03-09 18:09:07', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('5980ceec812d4b55a7898ffb7e9b367d', '10000000001347412343', '4', '5', '2019-03-09 18:09:07', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('59bb5307025645edaea7adb2e72c32ae', '10000000001347412343', '4', '5', '2019-03-09 20:01:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('59fb996b7d6949708315258fba2d0c7d', '10000000001347412343', '4', '5', '2019-03-09 18:04:16', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('5a00293531684383bdbac09f7dbb42fb', '10000000001347412343', '4', '5', '2019-03-09 18:09:37', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('5a0b64acea2c496b9c4d9e6fffedc45a', '10000000001347412343', '4', '5', '2019-03-09 20:01:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('5a3c0dd99bb44191889817436f347503', '10000000001347412343', '4', '5', '2019-03-09 20:01:03', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('5a46bedde2b345ae815f2f39ea2e4f98', '10000000001347412343', '4', '5', '2019-03-09 18:06:08', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('5a76ee8b69314ae6bf4493e86895e5b3', '10000000001347412343', '4', '5', '2019-03-09 20:03:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('5abc8c5a424546939d7956fcf2913fc3', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 08:55:15', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('5ac45e0de77b4e43b6570714b7c3e953', '10000000001347412343', '4', '5', '2019-03-09 20:01:48', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('5ac7fe3b5fbb4056a9ab2d2430c5e82a', '10000000001347412343', '4', '5', '2019-03-09 20:08:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('5aede3874f3046658e9e61f51dd17f39', '10000000001347412343', '4', '5', '2019-03-09 20:07:25', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('5b1d7eead2124bbe8e137a0b17db2155', '10000000001347412343', '4', '5', '2019-03-09 20:04:53', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('5b485c3d783c4a849be57d77d7b6e025', '10000000001347412343', '4', '5', '2019-03-09 20:07:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('5b664a275857465eb6e05829e4675c9c', '10000000001327412341', '1', '5', '2019-03-09 19:42:52', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('5b8091a440c1459abb401a47feefc939', '10000000001347412343', '4', '5', '2019-03-09 18:06:22', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('5bab35deefb4413fb666f0bcfd6d7019', '10000000001347412343', '4', '5', '2019-03-09 18:04:01', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('5be05c3a7c9b4e9aa75a5a2f86f1ea17', '10000000001347412343', '4', '5', '2019-03-09 18:07:43', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('5be4697f3a8c42f0adb7e8ac6d02fb72', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 08:51:54', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('5c1546a6b6fd4fa7a516107e10559eb4', '10000000001347412343', '4', '5', '2019-03-09 18:05:52', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('5c3481185e404b9497948706e939d060', '10000000001347412343', '4', '5', '2019-03-09 20:01:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('5c459c1d8d324cbe9b86ec9849585a3f', '10000000001347412343', '4', '5', '2019-03-09 18:06:58', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('5c48f4d701a543b5a9017a4fef73021d', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:57:59', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('5c5d9c6f93064b67a2cd220ed155f291', '10000000001347412343', '4', '5', '2019-03-09 18:07:36', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('5ca9499f84464f498e8ff8a33471f84a', '10000000001347412343', '4', '5', '2019-03-09 20:07:48', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('5cacc39eaaf94b0da5b888f445fff17b', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:05:37', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('5cc6430761114c9aa6589b71a9987e42', '10000000001347412343', '4', '5', '2019-03-09 20:02:55', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('5d000622483d447c921b124122d0b474', '10000000001347412343', '4', '5', '2019-03-09 20:07:48', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('5d06957dc0b94a818277df9680f650c4', '10000000001347412343', '4', '5', '2019-03-09 20:07:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('5d1f76b505ea4512820ad182c0a2613f', '10000000001347412343', '4', '5', '2019-03-09 18:07:12', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('5d26bc85e6994b7daa0c5673d045c035', '10000000001347412343', '4', '5', '2019-03-09 18:10:10', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('5d4df7b66a6844aeb7d471c36c663f3f', '10000000001347412343', '4', '5', '2019-03-09 20:01:33', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('5d5358e2110f43e69961baca5ea7a108', '10000000001347412343', '4', '5', '2019-03-09 18:08:21', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('5d8d82e089044163a9eeb60f553f70f4', '10000000001347412343', '4', '5', '2019-03-09 20:07:33', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('5dac689320494d739ca47429fef01964', '10000000001347412343', '4', '5', '2019-03-09 20:00:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('5dad187b3c444fc7837fd369285b264a', '10000000001347412343', '4', '5', '2019-03-09 18:10:10', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('5e6bd8177af0430dbe7eb30dd3fcdc6a', '10000000001347412343', '4', '5', '2019-03-09 20:04:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('5e74c57519014bc99dd412a2401ae47c', '10000000001347412343', '4', '5', '2019-03-09 20:01:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('5e98725eef7642b8a119ebda79d4d826', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:03:31', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('5ead52c0100b47f184eeaa016f17a522', '10000000001347412343', '4', '5', '2019-03-09 18:07:28', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('5ef7ec7f871448d49bd1cfd3cfc4c427', '10000000001347412343', '4', '5', '2019-03-09 20:03:01', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('5f23122aecdf4b428985e4dd87a1df27', '10000000001347412343', '4', '5', '2019-03-09 20:03:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('5f3fcf5e15f34ceb91b61c5f3d406479', '10000000001347412343', '4', '5', '2019-03-09 18:09:30', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('5f8633b0e3434c319c305982deb22421', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:39:23', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('5f92111c4fe742f69e70cbfe8df26053', '10000000001347412343', '4', '5', '2019-03-09 20:04:01', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('5f99b53da91b4849b8d2e5f018051e53', '10000000001347412343', '4', '5', '2019-03-09 20:01:10', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('5fb7cb1bb96446af8494e86900015a0c', '10000000001347412343', '4', '5', '2019-03-09 20:04:16', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('600fd3620adb4df6bd775a81eb8298a1', '10000000001347412343', '4', '5', '2019-03-09 20:03:46', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('6030ccfceb18484d9a26ef5e3a24448b', '10000000001347412343', '4', '5', '2019-03-09 18:07:05', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('607d1b01b86c4fdf8ac73a25681b4a2c', '10000000001347412343', '4', '5', '2019-03-09 18:03:53', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('60822db3b36a4d23be689ec5fd65b5c2', '10000000001347412343', '4', '5', '2019-03-09 18:06:08', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('608c7c5ce50744889ca48e341e673f3a', '10000000001347412343', '4', '5', '2019-03-09 20:01:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('60acacddbb764795b6e50c0e5a5deda9', '10000000001347412343', '4', '5', '2019-03-09 18:09:14', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('60bc201c51d6416e974e2b0e94f58e9c', '10000000001347412343', '4', '5', '2019-03-09 20:02:31', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('610e3f5116f4402e9dd96e692b5f14cd', '10000000001347412343', '4', '5', '2019-03-09 18:07:59', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('6133fd78839f4512abe343239c34399c', '10000000001347412343', '4', '5', '2019-03-09 18:05:37', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('616674568ca74947ba96987c50cdd205', '10000000001347412343', '4', '5', '2019-03-09 20:03:10', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('616e36f3653047029511923c4b8f35ef', '10000000001347412343', '4', '5', '2019-03-09 18:07:05', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('61cb02968f7e4b08bbda26ae42557d48', '10000000001347412343', '4', '5', '2019-03-09 20:02:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('61e5728783234c25b996a0fa018f93f4', '10000000001347412343', '4', '5', '2019-03-09 18:08:51', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('61fd678ee0094b9eafbeadee239da515', '10000000001347412343', '4', '5', '2019-03-09 18:09:29', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('61ff604706384f61bfb6391369b3ebed', '10000000001347412343', '4', '5', '2019-03-09 20:04:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('6239efd4330d4b54bcf68e7e78a5d775', '10000000001347412343', '4', '5', '2019-03-09 20:04:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('624a02b03fe04fb09024f092b91e5496', '10000000001347412343', '4', '5', '2019-03-09 18:05:15', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('6273db7ee1994fd68987a46275796230', '10000000001347412343', '4', '5', '2019-03-09 20:00:48', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('6278259133a943448444ea6a1a01f783', '10000000001347412343', '4', '5', '2019-03-09 20:04:23', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('62855c8fd7054459ba2676ed513852d5', '10000000001347412343', '4', '5', '2019-03-09 20:04:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('628adbd9410740b09bf413092592b55c', '10000000001347412343', '4', '5', '2019-03-09 20:01:31', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('62cd69910eb64e71b1b62011c6d9b094', '10000000001327412341', '1', '5', '2019-03-09 19:46:45', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('62ddd063fea44a80a1354e8c91d3562e', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:17:53', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('630b698808204b21a686cf10b0f64013', '10000000001347412343', '4', '5', '2019-03-09 20:03:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('6315bff53821422c912911034627ad66', '10000000001347412343', '4', '5', '2019-03-09 18:05:29', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('631a5af1738f4dcdbaa43035240ca40f', '10000000001347412343', '4', '5', '2019-03-09 20:02:10', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('63321b29308945588b6bd0d6471b0633', '10000000001347412343', '4', '5', '2019-03-09 20:03:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('63873c7617ab44ac8ebe423e5d027adc', '10000000001347412343', '4', '5', '2019-03-09 20:02:25', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('63bc5a50707649f2abaca10ea13b20c5', '10000000001347412343', '4', '5', '2019-03-09 18:06:15', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('63c418c7e0124c2d9a6e49bb0d705138', '10000000001347412343', '4', '5', '2019-03-09 18:08:43', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('63e53b33aa604c898ebcdee9058313cf', '10000000001347412343', '4', '5', '2019-03-09 20:04:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('63e67bff33364193b540a85497e772bc', '10000000001347412343', '4', '5', '2019-03-09 20:04:45', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('63eb6f492e074a38a4b2c1b28cb05f01', '10000000001347412343', '4', '5', '2019-03-09 18:06:50', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('640fea8c972a4fec865144cb7225f080', '10000000001347412343', '4', '5', '2019-03-09 18:09:30', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('643a55eea58c4608a918003238dfefad', '10000000001347412343', '4', '5', '2019-03-09 18:04:31', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('6448528a81fc4cb6943364a3f395d2a4', '10000000001327412341', '1', '5', '2019-03-09 19:42:19', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('644a14f37358461b80353b61a889dd6d', '10000000001347412343', '4', '5', '2019-03-09 18:04:31', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('6471c7aec2014e428f6f24587f741115', '10000000001347412343', '4', '5', '2019-03-09 18:03:53', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('648bb5d6d0194936b0adc24c6348b5d6', '10000000001347412343', '4', '5', '2019-03-09 20:03:01', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('6494da9f494c4deb9a02c1735689a1f1', '10000000001347412343', '4', '5', '2019-03-09 20:02:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('64a5d6f1e29c411196242c425f81180c', '10000000001347412343', '4', '5', '2019-03-09 20:03:23', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('64ece2b2b8f54bdf92658b5c4b43ca0e', '10000000001347412343', '4', '5', '2019-03-09 20:03:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('65277c80d4d14005b58efbd5d5972de4', '10000000001347412343', '4', '5', '2019-03-09 18:07:29', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('6531113c78a547c5a7bb769d7aa9fd1d', '10000000001347412343', '4', '5', '2019-03-09 20:02:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('657ad7643ef24e8eb00e3f902fde4f62', '10000000001347412343', '4', '5', '2019-03-09 20:08:03', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('658acd988077454ea7eccf20bba1c20e', '10000000001347412343', '4', '5', '2019-03-09 20:01:10', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('6590030ed1bc40f3a60eaac0ed81be7d', '10000000001347412343', '4', '5', '2019-03-09 18:06:58', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('659367e53c0c48f9a4703564c3b1cd0b', '10000000001347412343', '4', '5', '2019-03-09 18:06:57', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('65c3f6fb4b614c8183b49bc31f50aaa7', '10000000001327412345', '1', '5', '2019-03-14 16:04:50', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('65dfa92bf33b45cda5ce5b6a584ecb03', '10000000001327412346', '1', '5', '2019-03-14 14:38:45', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('65fb271e2ae444339caac4d760d11a98', '10000000001347412343', '4', '5', '2019-03-09 18:09:37', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('66674c2c66f44274b57cc819c2ee699d', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:35:16', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('666ed9c71414422e843b979d64043027', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 10:01:17', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('667c19bba331499bbf5ddc0d6936a0e3', '10000000001347412343', '4', '5', '2019-03-09 18:07:51', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('668a18e5ef394468a3510fa3ff7bf1be', '10000000001347412343', '4', '5', '2019-03-09 18:07:59', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('669029200a59462f82f4aa76fba85b6e', '10000000001347412343', '4', '5', '2019-03-09 20:02:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('66c51c12cfc5401d8f891e31f0924885', '10000000001347412343', '4', '5', '2019-03-09 20:04:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('66d0d457b0dd4a2fb35bf4447510e8b6', '10000000001347412343', '4', '5', '2019-03-09 20:03:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('6702d2e6325244e4aeb9044d9091a343', '10000000001347412343', '4', '5', '2019-03-09 20:08:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('6720c97f69094ecd8989ade90a9cc289', '10000000001347412343', '4', '5', '2019-03-09 20:04:53', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('67251d4d67324ecbac79d0aced2d068e', '10000000001347412343', '4', '5', '2019-03-09 18:08:44', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('679f0630da7245d8a0be39f59025c70d', '10000000001347412343', '4', '5', '2019-03-09 18:07:28', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('67a2942c7e9d4567b0f2d0dd8ee6e53f', '10000000001347412343', '4', '5', '2019-03-09 18:04:00', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('67a6fd6ab3344832a0cef347c4a7dc5e', '10000000001347412343', '4', '5', '2019-03-09 18:05:45', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('680596a7579643689591cb9cd9b3b251', '10000000001347412343', '4', '5', '2019-03-09 20:01:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('6842bde3c02a42c8bbc78d177bccf55a', '10000000001347412343', '4', '5', '2019-03-09 18:08:37', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('688da8bd979e45d58293510f39b28325', '10000000001347412343', '4', '5', '2019-03-09 18:04:23', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('688f8c185e1047c3905d9b95829c4c5b', '10000000001347412343', '4', '5', '2019-03-09 18:08:05', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('68c3e3c284b84e808883a7c44ca2445e', '10000000001347412343', '4', '5', '2019-03-09 20:00:55', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('68c62b9c31cf4d31b553163c2ce11dee', '10000000001347412343', '4', '5', '2019-03-09 20:04:08', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('68e4723ebfc847c186c5a268bcd41867', '10000000001347412343', '4', '5', '2019-03-09 18:04:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('69563f86683348e99ab1f5cffb5284c9', '10000000001327412341', '1', '5', '2019-03-09 19:47:31', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('69664222d91340d8a9c00041dbaf75a9', '10000000001347412343', '4', '5', '2019-03-09 18:07:21', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('696ec2770bc548ad81a3fdc660170895', '10000000001347412343', '4', '5', '2019-03-09 20:03:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('696f1733cc1445da9a552837bc1a39e1', '10000000001347412343', '4', '5', '2019-03-09 20:02:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('697e90672aac4778b1f04f7dab9296bf', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-14 16:37:23', 'description', null, null, '2', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('698dd7d03fa74ac5bb87ae6d22635d9e', '10000000001347412343', '4', '5', '2019-03-09 20:03:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('699685e80eb9427eb4d2ae1027cf297b', '10000000001347412343', '4', '5', '2019-03-09 20:03:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('6a1af9c16bf440aab39bbaed5aaa62b9', '10000000001347412343', '4', '5', '2019-03-09 20:07:40', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('6a35e73acc5f4bd09d04b341a000ab15', '10000000001347412343', '4', '5', '2019-03-09 20:00:55', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('6a380236ebcb4d6c855c643cf2392a36', '10000000001347412343', '4', '5', '2019-03-09 18:06:00', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('6a3a9af1b2274bb1bee0a2db94eb29ec', '10000000001347412343', '4', '5', '2019-03-09 18:07:36', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('6a72098b179548cb95a28cf8dbed7cad', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:49:07', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('6a7c82ac36a7445983b6e5e2271f41ee', '10000000001327412341', '1', '5', '2019-03-09 19:44:00', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('6a89c856af4e41bf9a7fb4af6c2a4beb', '10000000001347412343', '4', '5', '2019-03-09 18:06:58', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('6accc68207004b598c02308fe153f798', '10000000001347412343', '4', '5', '2019-03-09 20:04:46', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('6b169c8c369c426bbd1cfcc603944706', '10000000001347412343', '4', '5', '2019-03-09 20:02:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('6b1a2c6feef843b281bd5fa9ef432b21', '10000000001347412343', '4', '5', '2019-03-09 20:04:46', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('6b494ab8542a4123914c3cfbc0058476', '10000000001347412343', '4', '5', '2019-03-09 20:03:31', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('6b5d6fd3cdb74dee88e0f4c3ac474a33', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:28:29', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('6b889ba5e1be45e996f80ba82a90c3c0', '10000000001347412343', '4', '5', '2019-03-09 20:04:31', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('6b964b08178345b3aa71d6a5960fc5b6', '10000000001347412343', '4', '5', '2019-03-09 18:05:30', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('6bbc4f19389e490e8a557e3bc1aee580', '10000000001347412343', '4', '5', '2019-03-09 18:05:45', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('6bbcb6e17fcf408fabc90d1777e0f168', '10000000001347412343', '4', '5', '2019-03-09 18:04:15', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('6bd59ab7064643ea84e67ed8e81b1629', '10000000001347412343', '4', '5', '2019-03-09 20:01:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('6bdac4e698f7457688182d3a69244814', '10000000001347412343', '4', '5', '2019-03-09 20:01:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('6be597e7326b46bb89550341d9e2bb05', '10000000001347412343', '4', '5', '2019-03-09 18:09:21', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('6be780a7ee124a00be344c3f051a77b3', '10000000001347412343', '4', '5', '2019-03-09 18:09:15', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('6c5b45b1e49f446a8280bd37c88bb03c', '10000000001347412343', '4', '5', '2019-03-09 18:09:22', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('6c76adab246b4bb6950e7e2d928c4c50', '10000000001347412343', '4', '5', '2019-03-09 18:07:51', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('6c795af20e804cb1b1933d8a4b2b76bb', '10000000001347412343', '4', '5', '2019-03-09 20:03:01', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('6caa917e060d48a096cec785154ef84e', '10000000001347412343', '4', '5', '2019-03-09 18:06:16', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('6cb2cc705297422385af75278a8ac70b', '10000000001347412343', '4', '5', '2019-03-09 18:10:10', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('6d4f976722a046a0902eb1695ba0a13c', '10000000001347412343', '4', '5', '2019-03-09 20:02:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('6d9d81c0936a445eb19590997982dfa5', '10000000001347412343', '4', '5', '2019-03-09 18:07:29', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('6dce2b93c7654308982626cfbdd19d10', '10000000001327412346', '1', '5', '2019-03-14 15:54:46', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('6dd07b41a1fc471e934f99582ea9c33d', '10000000001347412343', '4', '5', '2019-03-09 20:02:10', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('6ddeb4b3ec5e4006828061e7b89a4060', '10000000001347412343', '4', '5', '2019-03-09 20:02:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('6df45a8f72d94f268cd9ab2cda3435b2', '10000000001347412343', '4', '5', '2019-03-09 18:10:11', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('6df47aa597d34391be7c68be9e229fc9', '10000000001347412343', '4', '5', '2019-03-09 18:05:38', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('6e4179dfac8c4224bce00e8014f1330a', '10000000001347412343', '4', '5', '2019-03-09 18:05:23', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('6e728b9112a04e1a9ea9dd6edbfc8570', '10000000001347412343', '4', '5', '2019-03-09 18:05:15', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('6e88a08f686b48af95576348e419f284', '10000000001347412343', '4', '5', '2019-03-09 20:01:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('6e940ab40df8463fa078f945719f20f8', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:05:05', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('6ef50e4a9f4d4913ac9da0acfa8ace57', '10000000001347412343', '4', '5', '2019-03-09 18:07:05', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('6f05a0731f7b42f8bef8a4a21762034c', '10000000001347412343', '4', '5', '2019-03-09 20:01:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('6f1217f5a6f947a180bfa05f5bf1f153', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:03:00', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('6f1ea8a0724c4fca86f555d1c8a29e7d', '10000000001347412343', '4', '5', '2019-03-09 20:03:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('6f71a81ae90448fda4c7d3323c6b8024', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:59:44', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('6f7402f143fd4a0aa962defe20be8e38', '10000000001347412343', '4', '5', '2019-03-09 20:04:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('6f861129bae443b3a457746ead35695b', '10000000001347412343', '4', '5', '2019-03-09 20:01:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('6facb49b49334df88f7e493d0993f4ed', '10000000001347412343', '4', '5', '2019-03-09 18:04:53', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('6fc5c950ed574d98bdd20c3031a58888', '10000000001347412343', '4', '5', '2019-03-09 20:01:55', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('6fdda1e082bd4924bb77eaeaa47da8af', '10000000001347412343', '4', '5', '2019-03-09 20:03:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7016c0a8542341a6b6e253baea1078c4', '10000000001347412343', '4', '5', '2019-03-09 18:09:37', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('70204c4f1d44498d8270a2f7d6f7e9f8', '10000000001347412343', '4', '5', '2019-03-09 20:03:01', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('70252a855b1d42b59ae2854e524b7e1d', '10000000001347412343', '4', '5', '2019-03-09 20:02:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('708689d2f6a046aa8005f9b59befc267', '10000000001347412343', '4', '5', '2019-03-09 20:04:10', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('70a44df0a9094f348a1516da0023191b', '10000000001347412343', '4', '5', '2019-03-09 18:04:46', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('70a897529916434d996111c3016193b2', '10000000001347412343', '4', '5', '2019-03-09 18:08:29', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('70cd556b88e14a60b24f16813621e75e', '10000000001347412343', '4', '5', '2019-03-09 20:02:46', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('70e4aba62012442e9d0da974a3ece93c', '10000000001347412343', '4', '5', '2019-03-09 20:04:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('71098387c7334529a9c742f892af12de', '10000000001347412343', '4', '5', '2019-03-09 20:07:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('716c3246fa6f4f9fbeb31b4556f88b2a', '10000000001347412343', '4', '5', '2019-03-09 20:00:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('71986583250b47d2a35976c5cf4902b0', '10000000001347412343', '4', '5', '2019-03-09 18:06:16', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('719fa2aa98da4b409bd7a685edd1e081', '10000000001347412343', '4', '5', '2019-03-09 20:01:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('722700102d924327aab7cd4a1115fed3', '10000000001347412343', '4', '5', '2019-03-09 18:07:28', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7227c289035a47f2b4f41653736be86d', '10000000001347412343', '4', '5', '2019-03-09 20:08:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('722a78e97ba64cc190cfd04471f70805', '10000000001347412343', '4', '5', '2019-03-09 18:05:15', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('72425032ce964add883a791f67ead83d', '10000000001327412341', '1', '5', '2019-03-09 19:45:08', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('7266b85c770a4ff68a63bfebcf85a7f7', '10000000001347412343', '4', '5', '2019-03-09 20:02:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7283fd399d794cfa928e859f0d2b18f4', '10000000001347412343', '4', '5', '2019-03-09 18:07:12', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('729d16565d1243ae90c7235d06e0639c', '10000000001347412343', '4', '5', '2019-03-09 18:06:50', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('729fa1400c61492ea1b1b682e318f518', '10000000001327412346', '1', '5', '2019-03-14 15:57:23', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('72a610da58e942269e1aaf166d363a01', '10000000001347412343', '4', '5', '2019-03-09 18:07:50', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('72c18bf2bca74fd08787a1201064d3b7', '10000000001347412343', '4', '5', '2019-03-09 20:07:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('72d45bfbe4d3485fa1b9f5ce5d72d8d1', '10000000001347412343', '4', '5', '2019-03-09 18:05:30', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('730dcaf8912c4fb7b849b25399d61637', '10000000001347412343', '4', '5', '2019-03-09 18:09:07', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('732891af0d864a7db56893cb43c7541d', '10000000001347412343', '4', '5', '2019-03-09 18:08:28', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7332a5dadea646a3823fccbbaecb806a', '10000000001347412343', '4', '5', '2019-03-09 18:04:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7356dd69f1dc48ff84065401b3e88138', '10000000001347412343', '4', '5', '2019-03-09 20:08:01', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7369766c8a004d2f811f25faeddfee02', '10000000001347412343', '4', '5', '2019-03-09 20:02:31', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('73764dd3607c4bb1b811bcb4d398296e', '10000000001347412343', '4', '5', '2019-03-09 20:03:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('738ac1e992a744f3ab2b43da3b2a2907', '10000000001347412343', '4', '5', '2019-03-09 18:04:53', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('738cf285c9d1425d960491dbfb3e4555', '10000000001347412343', '4', '5', '2019-03-09 20:04:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('739d0991544f467bbef8fffa392253a1', '10000000001347412343', '4', '5', '2019-03-09 18:08:06', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('73bbce55f5624ef4a05d1ad1bc0ffb2f', '10000000001347412343', '4', '5', '2019-03-09 18:05:38', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('73c016eb02b048c7ab6e036a515abc20', '10000000001347412343', '4', '5', '2019-03-09 20:08:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('73cf5a026cd94166b0165af45b3fe029', '10000000001347412343', '4', '5', '2019-03-09 18:07:13', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('73d2924beeb44ffaadc71147c6c5ac63', '10000000001347412343', '4', '5', '2019-03-09 20:08:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('73deae2860f344d0ba0c71cb39f30f41', '10000000001347412343', '4', '5', '2019-03-09 18:05:15', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('740360ed665d41c38efd083fe7f86c24', '10000000001347412343', '4', '5', '2019-03-09 18:08:44', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('740ef74948ce4f78901e985ac90713b7', '10000000001347412343', '4', '5', '2019-03-09 20:07:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7452493df9d14174accf25e770493e42', '10000000001347412343', '4', '5', '2019-03-09 18:04:31', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7460dee85f4c48a4802c282247e6e24c', '10000000001347412343', '4', '5', '2019-03-09 20:01:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('74bcd48c4b4f4cf8a56b1ce064085249', '10000000001347412343', '4', '5', '2019-03-09 20:02:25', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('74c17b48cf7e4e11a8c1ba728713ea57', '10000000001347412343', '4', '5', '2019-03-09 20:04:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('74fdb5efb6694378b15bb93a2a9efb89', '10000000001347412343', '4', '5', '2019-03-09 20:08:10', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('75153db0e69d4b189838593c354a6b28', '10000000001347412343', '4', '5', '2019-03-09 20:00:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('75345ac37b0a4bdeac5c7921eba8bedb', '10000000001347412343', '4', '5', '2019-03-09 18:08:28', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7539e06983ce4da68f03bb0934de43c8', '10000000001347412343', '4', '5', '2019-03-09 18:09:06', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('754f0e4c1f5740538b764ef1744b7201', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:57:25', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('7577fe09a06b45f3a067287988804cb2', '10000000001347412343', '4', '5', '2019-03-09 18:06:50', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('75885e71096447ccb15b801276e1913b', '10000000001347412343', '4', '5', '2019-03-09 20:02:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('758fcc415e7c4867a680539a69f6c4cf', '10000000001347412343', '4', '5', '2019-03-09 18:04:31', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('75b6886e43464cafb9de179e060a8a2b', '10000000001347412343', '4', '5', '2019-03-09 18:04:45', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('75b96a66e93142df8ce9032818428ebe', '10000000001347412343', '4', '5', '2019-03-09 18:08:28', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('75f3a89ede0e486882d68e388a40731e', '10000000001347412343', '4', '5', '2019-03-09 18:09:30', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('761332f567ed42dfa53604568e96cd53', '10000000001327412345', '1', '5', '2019-03-14 16:15:52', 'description', null, null, '2', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('761697026b9e419a97d79b7453c34a32', '10000000001347412343', '4', '5', '2019-03-09 18:05:23', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('76254bbd71b44ec79d524bdf2329ffba', '10000000001347412343', '4', '5', '2019-03-09 20:07:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('76399e860bf949e4a1bfee49a945adf6', '10000000001347412343', '4', '5', '2019-03-09 18:09:22', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('763fad1846b64d489fd8b8ef7c489920', '10000000001347412343', '4', '5', '2019-03-09 20:00:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('765369a22a654f9185223433c95b8dd0', '10000000001347412343', '4', '5', '2019-03-09 20:04:38', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('766479f2e9794ba693fa3ec14ef190a7', '10000000001347412343', '4', '5', '2019-03-09 18:05:37', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('767fcac9caa148f0b9760a29a209b9f4', '10000000001347412343', '4', '5', '2019-03-09 20:04:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('769808a706f44cd2a0cdede5bbc6f6cb', '10000000001347412343', '4', '5', '2019-03-09 18:04:46', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('76fcd30f1716471d94abfd57ba274c26', '10000000001347412343', '4', '5', '2019-03-09 20:02:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('776c7105dae944f7804b4ab9edf8bab0', '10000000001347412343', '4', '5', '2019-03-09 20:00:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7778bede63974b36ace050838d52da55', '10000000001347412343', '4', '5', '2019-03-09 18:06:00', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('778ba99befaf47c983175b4a1a83b018', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 08:47:54', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('778ef0e4850e45589117c6b43b690990', '10000000001347412343', '4', '5', '2019-03-09 20:01:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('77a1304eab3042fc9220d45c78593a51', '10000000001347412343', '4', '5', '2019-03-09 20:03:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('77a51a67c75d4055a909cff41ffb5aa1', '10000000001347412343', '4', '5', '2019-03-09 18:04:31', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('77ae21843c3243c0a155599c3b08522b', '10000000001347412343', '4', '5', '2019-03-09 18:03:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('782c212990b045d0839358786e4550ac', '10000000001347412343', '4', '5', '2019-03-09 20:04:31', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7856f4c85bdc4ca89a5eb5c801107ae4', '10000000001347412343', '4', '5', '2019-03-09 18:04:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('789f132ae3b6424295d58bc35d2c595d', '10000000001347412343', '4', '5', '2019-03-09 20:03:40', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('78dea1d0aebc4e4e96c0c628e1a1b5b5', '10000000001347412343', '4', '5', '2019-03-09 18:07:20', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('791331083d314f67b117ae2204d00072', '10000000001347412343', '4', '5', '2019-03-09 20:04:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7971daee5fcb4f91a66a193c409ed6bc', '10000000001347412343', '4', '5', '2019-03-09 18:07:13', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7985d5a357f8409abf9294a33b013c2b', '10000000001347412343', '4', '5', '2019-03-09 18:05:38', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('798837dff5154d6e998374b8e6a2c52f', '10000000001347412343', '4', '5', '2019-03-09 20:04:16', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('799d68ee2d6e4001981147ce45e2a9bc', '10000000001347412343', '4', '5', '2019-03-09 20:00:55', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('79c0106058fc4fb9a7543bfbb9157eac', '10000000001347412343', '4', '5', '2019-03-09 20:05:01', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('79ee36afbbd7484e9c9aa13b686c0789', '10000000001347412343', '4', '5', '2019-03-09 18:08:59', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('79f1255970a64d809335f25b81105f07', '10000000001347412343', '4', '5', '2019-03-09 20:02:10', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7a65d09d30f64d8b81a33eb835b3ed82', '10000000001347412343', '4', '5', '2019-03-09 18:07:44', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7a709d6892ef4c7699d3ac2b34798c81', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 08:53:27', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('7a79648a92584424aebbb6ffd9349852', '10000000001347412343', '4', '5', '2019-03-09 18:07:28', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7a7a17972da14319b2e5b3410c31fb50', '10000000001347412343', '4', '5', '2019-03-09 20:03:46', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7a82026449cc45d488ecf3199962cc9e', '10000000001347412343', '4', '5', '2019-03-09 20:03:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7a89e72390004874b8fe51e95f19aa99', '10000000001347412343', '4', '5', '2019-03-09 18:04:15', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7aa5a28c560a48219b5f0e69a1cd64fa', '10000000001347412343', '4', '5', '2019-03-09 20:03:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7ad11d538cea4a249b82cba178ebb214', '10000000001347412343', '4', '5', '2019-03-09 18:05:37', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7aeb1b6dd7bc46b197875256c3c8eb55', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:26:07', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('7b1827d6930c45fdaf345837883679e8', '10000000001347412343', '4', '5', '2019-03-09 18:08:13', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7b3ed4c606e14f5d95da6b3548931366', '10000000001347412343', '4', '5', '2019-03-09 20:08:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7b45c199e4e340f3958c3aa76f43cc93', '10000000001347412343', '4', '5', '2019-03-09 20:08:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7b53b0f038a043cd8dd79dca42bdb522', '10000000001347412343', '4', '5', '2019-03-09 20:04:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7b5ad0d217374842b66b2d27652bf28b', '10000000001347412343', '4', '5', '2019-03-09 18:06:07', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7ba531c8e1e549d4a5dad00c64f02d3c', '10000000001347412343', '4', '5', '2019-03-09 20:07:25', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7bcee7fb919a4e0d97a00d702a6c1d08', '10000000001347412343', '4', '5', '2019-03-09 20:03:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7bd193f7296b47038c2abb1e2bed462b', '10000000001347412343', '4', '5', '2019-03-09 20:03:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7be26d8d06f74c469a6145b1365ddc28', '10000000001347412343', '4', '5', '2019-03-09 18:06:15', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7c118002858d41c28224a95abc647c84', '10000000001347412343', '4', '5', '2019-03-09 20:07:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7c1a707a7c6c494298ff4d3fae1cdc67', '10000000001347412343', '4', '5', '2019-03-09 20:03:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7c55831f868c4971b68fd1eeba804140', '10000000001327412346', '1', '5', '2019-03-14 14:40:50', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('7c6dce4bc0104c3cbc7c698e098a2337', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:29:56', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('7c7fdab84386474ea58567f0178f0568', '10000000001347412343', '4', '5', '2019-03-09 20:04:46', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7c929d20d1824f7db7470437492909cd', '10000000001347412343', '4', '5', '2019-03-09 20:07:40', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7c940bfcb4d34a21b7614391a8e38a4f', '10000000001347412343', '4', '5', '2019-03-09 18:05:53', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7c9676ac6c924b35b34d5279bf425513', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:46:35', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('7ca33fde06464e2aa07fd9a697c97a4e', '10000000001347412343', '4', '5', '2019-03-09 20:04:01', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7d0b0647c8d244769dda3d02054f71c0', '10000000001347412343', '4', '5', '2019-03-09 20:03:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7d772b70931f43688c4b54beb716a1bd', '10000000001347412343', '4', '5', '2019-03-09 20:03:55', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7d87211ce6d04a998a794a2113030a89', '10000000001347412343', '4', '5', '2019-03-09 18:07:50', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7da9d16246494cf5990a18a7f51a0993', '10000000001347412343', '4', '5', '2019-03-09 18:05:44', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7db95569e3ca47e584e72013774fff12', '10000000001347412343', '4', '5', '2019-03-09 20:04:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7dd7a63cfaa44fb6987e75a4250d4ce4', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 08:56:17', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('7e45d49e6fd94bdaa380593f8c77f6ac', '10000000001347412343', '4', '5', '2019-03-09 18:08:29', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7e684814f0c7487483dff9c2c58275b6', '10000000001347412343', '4', '5', '2019-03-09 18:07:51', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7e8583eb55b84dc4923956f9ec1c6db9', '10000000001347412343', '4', '5', '2019-03-09 18:04:38', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7e8c3db6309f48a39a45943845bb910f', '10000000001347412343', '4', '5', '2019-03-09 20:07:40', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7ea67bcbbcce4f9a99b104ca5065ac54', '10000000001347412343', '4', '5', '2019-03-09 20:03:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7eb783e3081743beb5d448dc82c9dcbe', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:59:08', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('7eca6be06d9b412990bd6fb622844d5e', '10000000001347412343', '4', '5', '2019-03-09 20:03:23', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7ed821436b954f04b074f510104252b9', '10000000001347412343', '4', '5', '2019-03-09 20:02:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7ed8c66ba49d43f287270e33e29eeb2c', '10000000001347412343', '4', '5', '2019-03-09 20:01:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7ee6e382a19e4f059bf15838d0b43bd3', '10000000001347412343', '4', '5', '2019-03-09 20:07:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7f2ce96602fe408fa6e2a6ad8f15db0e', '10000000001347412343', '4', '5', '2019-03-09 20:01:25', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7f2e7ad707a94b3b831d267d3143e7d0', '10000000001347412343', '4', '5', '2019-03-09 20:03:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7f36415965184498b67e288d6fa94b60', '10000000001347412343', '4', '5', '2019-03-09 18:04:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7f42591678ff4abcbcfb81a4429ff0b1', '10000000001347412343', '4', '5', '2019-03-09 18:06:07', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7f42d77ce6814b6f94a435e69345e0a7', '10000000001347412343', '4', '5', '2019-03-09 20:04:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7f6914768d264bf4b54a08c75d713181', '10000000001347412343', '4', '5', '2019-03-09 20:04:31', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7f82b27a187841cf95730d292d9ad59f', '10000000001347412343', '4', '5', '2019-03-09 20:03:08', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7fb23d2909a7498f9d89c29272c554e3', '10000000001347412343', '4', '5', '2019-03-09 20:08:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7fcd00dcb86649849d652e878cd044a4', '10000000001347412343', '4', '5', '2019-03-09 18:06:08', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7fcda891a6d94aa899ad66c4df7d8436', '10000000001347412343', '4', '5', '2019-03-09 20:02:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('7ffb5f031dca4c28804ddba2a9b707b6', '10000000001347412343', '4', '5', '2019-03-09 18:04:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('804b8032551e46028eaf2641cff3b7c8', '10000000001347412343', '4', '5', '2019-03-09 20:03:40', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8082be74cf714e798875e37b382554ac', '10000000001347412343', '4', '5', '2019-03-09 20:02:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8086f14d4d104e799147224a247c5ad7', '10000000001347412343', '4', '5', '2019-03-09 18:07:28', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('80a35ab8e6c041e19838da1cad6fc4bc', '10000000001347412343', '4', '5', '2019-03-09 20:07:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('80b6ebe8fcd44b1b9493ed4810ffea9c', '10000000001347412343', '4', '5', '2019-03-09 18:04:31', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('80bdc3ae78624959b93f87ace62e4f1a', '10000000001347412343', '4', '5', '2019-03-09 18:07:51', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('80ed7e0d610943eebb1ed0042482ecc1', '10000000001347412343', '4', '5', '2019-03-09 18:08:44', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('812adebbe9c340f7ae6c92b02d8bd8a4', '10000000001347412343', '4', '5', '2019-03-09 20:02:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('814c0e73d05249f3949a2c999529f148', '10000000001347412343', '4', '5', '2019-03-09 20:03:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('81545c350c0346438e2fe536b3bf2289', '10000000001347412343', '4', '5', '2019-03-09 20:04:01', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('818ec7578eb44bf1bc3e3cce4ee2af10', '10000000001347412343', '4', '5', '2019-03-09 20:07:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('81ccab788cbe4ed480f2327f09ee0d7d', '10000000001347412343', '4', '5', '2019-03-09 18:09:37', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('81cf5f712079466586c8d44c6760c819', '10000000001347412343', '4', '5', '2019-03-09 20:04:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('81f65b03dab84662a6925efcbebb5f8d', '10000000001347412343', '4', '5', '2019-03-09 20:02:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('826f2d0b67f942b1ad0eda63ca102ee8', '10000000001347412343', '4', '5', '2019-03-09 20:08:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('829bfca5cc9942f8a281abf63be42f72', '10000000001347412343', '4', '5', '2019-03-09 20:04:23', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('82e5daa6229645f8b2f23012efa89a62', '10000000001327412345', '1', '5', '2019-03-14 16:28:00', 'description', null, null, '2', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('82ef7aefba2f407db6affaa9f90569c9', '10000000001347412343', '4', '5', '2019-03-09 18:04:01', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('82f895345cae4ca686bae599691123b0', '10000000001347412343', '4', '5', '2019-03-09 20:01:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8318311fe6d34dcdaa5d70e3d55af3aa', '10000000001347412343', '4', '5', '2019-03-09 20:02:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('83ed3a836f604eef8fd2dccc9a0e6703', '10000000001347412343', '4', '5', '2019-03-09 18:04:08', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('83faa8a754c64b6dae24967f818c77f5', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:14:47', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('84095b649b7b477cb6b0c23e9900d527', '10000000001347412343', '4', '5', '2019-03-09 20:07:55', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('84737663cf044f60be62bc77997c1a37', '10000000001347412343', '4', '5', '2019-03-09 18:07:36', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('84891843b4fa4fb599a0fe18304110ca', '10000000001347412343', '4', '5', '2019-03-09 18:04:15', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('84b6688726684f678ca2e99ece51a07e', '10000000001347412343', '4', '5', '2019-03-09 20:07:40', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('84c13322861e4a029460a6c9859e4b05', '10000000001347412343', '4', '5', '2019-03-09 20:07:25', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('84c3fd2564944ffd8fdc04a26f332a07', '10000000001347412343', '4', '5', '2019-03-09 18:08:59', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('84edaaf41cac4f62aabd91bc600e668f', '10000000001347412343', '4', '5', '2019-03-09 20:07:55', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8505f76b2ffd4a429fee1e7f084de509', '10000000001347412343', '4', '5', '2019-03-09 20:08:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('85170ec311b344ad8c184866efbc1687', '10000000001347412343', '4', '5', '2019-03-09 20:04:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('857a37c8ae6d442ea890fd260fe49ad4', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:30:40', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('85b16826a49b47f2841f647d93ba3a68', '10000000001347412343', '4', '5', '2019-03-09 18:10:18', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('85bdbffaa9614ef1975c8e98fc4d62bf', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:12:08', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('865270b67c9647948fcd180444a5ee3e', '10000000001347412343', '4', '5', '2019-03-09 20:00:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('86624c8bc7c549f68d2b6fc4e8029be8', '10000000001347412343', '4', '5', '2019-03-09 18:04:23', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8674e62ef57e4212bbb30df67e8a88d7', '10000000001347412343', '4', '5', '2019-03-09 18:07:21', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('86e2df8beb844f1987e2efc22217eddd', '10000000001347412343', '4', '5', '2019-03-09 18:05:37', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8715577b93e748928d4ecd329c9941e2', '10000000001347412343', '4', '5', '2019-03-09 20:03:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('87353ceeb7314aca9416fdcb0c941a46', '10000000001347412343', '4', '5', '2019-03-09 18:04:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8742385006174e679bb1d276bb0efe9e', '10000000001347412343', '4', '5', '2019-03-09 18:08:37', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('874704abb54d4f8c89950fee25154ae3', '10000000001347412343', '4', '5', '2019-03-09 18:10:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('875218a500b041aebf041968e354fbe5', '10000000001347412343', '4', '5', '2019-03-09 18:05:52', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8758e006b5d849bd8d7ef28f28de0c30', '10000000001347412343', '4', '5', '2019-03-09 18:04:46', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('87a5d21d847e4cc1bacdebba9baffcf7', '10000000001347412343', '4', '5', '2019-03-09 18:09:15', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('87b857d411364aa3890b7b2fdf11cbae', '10000000001347412343', '4', '5', '2019-03-09 20:08:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('87c48440b2054222ac39fd431feff0f9', '10000000001347412343', '4', '5', '2019-03-09 18:08:58', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('87ee1dcf7ded432491a332167f362a79', '10000000001347412343', '4', '5', '2019-03-09 20:04:53', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('880d605226ea42c1af898cfb2a562df6', '10000000001347412343', '4', '5', '2019-03-09 20:03:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('881506cd1be24ecab3258bbf2ecfc6ca', '10000000001347412343', '4', '5', '2019-03-09 20:01:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('88365938abb647248c175008cee3b200', '10000000001347412343', '4', '5', '2019-03-09 20:04:46', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8840f335a83f468cad5130bbaa3d3360', '10000000001347412343', '4', '5', '2019-03-09 18:07:50', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('884d5c32dcbe43f4bd90339f84baf5e2', '10000000001347412343', '4', '5', '2019-03-09 20:02:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('88594bcc4a9f4eefbaf1a0ed2f360e7b', '10000000001347412343', '4', '5', '2019-03-09 20:01:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('887570b13a1941099b4bb5414691bffc', '10000000001347412343', '4', '5', '2019-03-09 20:02:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('887eddcd6dc24f5eba52d9cf7bee1b27', '10000000001347412343', '4', '5', '2019-03-09 20:07:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('88811768c0f543f3ace9137fe02cf117', '10000000001347412343', '4', '5', '2019-03-09 20:03:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('889f3cd79d0e4bcebeca49ff51589ee3', '10000000001347412343', '4', '5', '2019-03-09 20:02:55', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('88a7146589f24b759899efa92642433c', '10000000001347412343', '4', '5', '2019-03-09 18:08:36', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('88b88a03d9b44fd8a6d71ea917301ed6', '10000000001327412341', '1', '5', '2019-03-09 19:40:58', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('88f9eca436514c498f53dcaf4ac9a72f', '10000000001347412343', '4', '5', '2019-03-09 20:02:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('88ffdabcb17b402cbea6129d32eb2f5a', '10000000001347412343', '4', '5', '2019-03-09 20:01:40', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8935172fef584890af68abfe02875d4e', '10000000001347412343', '4', '5', '2019-03-09 18:07:20', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('893f7d357f2440158d0863cd67e2e5c5', '10000000001347412343', '4', '5', '2019-03-09 20:04:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8986ca0a345c416cb32decfc395f3216', '10000000001347412343', '4', '5', '2019-03-09 20:04:53', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('89d145ac654a4279a9c1b8cf35baaae2', '10000000001347412343', '4', '5', '2019-03-09 18:06:23', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8a0d8fb68e5d40449ab4538e1bc85f8f', '10000000001347412343', '4', '5', '2019-03-09 18:06:15', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8a89f291d4d24b64b03de507b7043a60', '10000000001347412343', '4', '5', '2019-03-09 20:08:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8ac294e1f4c7416bbaf196a55a91ad8f', '10000000001347412343', '4', '5', '2019-03-09 20:02:25', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8ad4476e8e284a76b37b072cf8da4565', '10000000001347412343', '4', '5', '2019-03-09 18:07:51', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8af4ffcbe79f4858894491b6ba8df226', '10000000001347412343', '4', '5', '2019-03-09 18:06:43', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8af76ce0d8bd4196a8659bc9d09279c2', '10000000001347412343', '4', '5', '2019-03-09 20:07:46', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8b09902554bb421d908d58f4c9255829', '10000000001347412343', '4', '5', '2019-03-09 20:01:10', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8b158f30321a4ed5bc23d08a0bb32b03', '10000000001347412343', '4', '5', '2019-03-09 18:04:01', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8b25e6d4420545d0be8fc677412eb54a', '10000000001347412343', '4', '5', '2019-03-09 20:00:40', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8b49867541d347f380a0b7e2330948b1', '10000000001347412343', '4', '5', '2019-03-09 18:06:23', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8b6248e780014bb5ab38e100623c46ff', '10000000001347412343', '4', '5', '2019-03-09 20:02:31', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8b88cc11927244ddb51a931e457a89cb', '10000000001347412343', '4', '5', '2019-03-09 18:05:52', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8bd51d5c629346e2923817b276357d63', '10000000001347412343', '4', '5', '2019-03-09 18:08:14', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8c21f6f0e03441b598806ad4a2313cb0', '10000000001347412343', '4', '5', '2019-03-09 20:07:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8c26d9fba4fe4414a18eefc157eb6327', '10000000001347412343', '4', '5', '2019-03-09 20:02:46', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8c31e1772cf14f9295b3e8bfa0d713bf', '10000000001347412343', '4', '5', '2019-03-09 18:05:14', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8c3df3444b8a4208939ac5b16a9e0b37', '10000000001347412343', '4', '5', '2019-03-09 20:08:16', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8c470313199148878f63aefa954e5991', '10000000001347412343', '4', '5', '2019-03-09 20:04:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8c678a99e6534145914ec6205d7839bc', '10000000001347412343', '4', '5', '2019-03-09 18:09:36', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8c6fe6bb76cf40b5bb950764b76d9128', '10000000001347412343', '4', '5', '2019-03-09 18:08:59', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8c739a6fcd5a4229997a36ba1015cd2c', '10000000001347412343', '4', '5', '2019-03-09 20:01:48', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8cbba270391c4ec7a542d6ae540974eb', '10000000001347412343', '4', '5', '2019-03-09 18:08:06', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8cd172695b194677a7c7f1d9b9c38092', '10000000001347412343', '4', '5', '2019-03-09 18:06:43', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8d11015ebff648d3b7423d6dc4874e76', '10000000001327412346', '1', '5', '2019-03-14 14:46:00', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('8d2fad9df1ad4dde8e15166ab1725da9', '10000000001347412343', '4', '5', '2019-03-09 20:07:33', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8d4d5b792c574780a036666b9da60686', '10000000001347412343', '4', '5', '2019-03-09 20:00:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8d789b53519348ee9bf9a5d0f1f01a5d', '10000000001347412343', '4', '5', '2019-03-09 20:08:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8d7926a8b8de4ae6b397add5cc775d7c', '10000000001347412343', '4', '5', '2019-03-09 18:03:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8d81d95afcd74987bcc8fd3675cbab84', '10000000001347412343', '4', '5', '2019-03-09 20:00:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8d860669f2a9494cb133f9fa4c9a31ce', '10000000001347412343', '4', '5', '2019-03-09 18:05:52', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8d867741f3e340228ace42fb7c05f186', '10000000001347412343', '4', '5', '2019-03-09 20:02:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8d9456e6ebe54f36a08521919aaab0ff', '10000000001347412343', '4', '5', '2019-03-09 18:05:14', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8dab9dc7311e45a0a4d221d3fbb0ac45', '10000000001347412343', '4', '5', '2019-03-09 20:07:26', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8e4fd6aac6a14ef4afde04362dd0936e', '10000000001347412343', '4', '5', '2019-03-09 20:02:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8e5d1d772ade4d0e9b84820a6f442ecc', '10000000001347412343', '4', '5', '2019-03-09 20:03:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8e7580bb96924d509e6d8d203b857959', '10000000001347412343', '4', '5', '2019-03-09 18:04:38', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8ec2cb6a5ca14716995ee86e79cb5e24', '10000000001347412343', '4', '5', '2019-03-09 20:03:31', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8ecfc0827e174d53b3a6d521a6205025', '10000000001347412343', '4', '5', '2019-03-09 20:04:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8ef01d224ad04fa29aa563235d582f45', '10000000001347412343', '4', '5', '2019-03-09 18:06:57', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8effc13838dc4fdcbc19fbb2a1828e9f', '10000000001347412343', '4', '5', '2019-03-09 18:04:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8f0d309af7f44dd7a62c9f6ddf226b78', '10000000001347412343', '4', '5', '2019-03-09 20:02:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8f187c11f97f4bc3b99541ce7e881ee3', '10000000001347412343', '4', '5', '2019-03-09 20:03:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8f6069db6da14e0295b8c5c4c41eb6f9', '10000000001327412341', '1', '5', '2019-03-09 19:45:57', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('8f7f46d6542741efb5258f5679bad03a', '10000000001347412343', '4', '5', '2019-03-09 18:06:58', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8f944b889c2148928e46bb1b98093106', '10000000001347412343', '4', '5', '2019-03-09 18:08:07', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8fb86475d1034f4aa81b0fcf7d63e2b6', '10000000001347412343', '4', '5', '2019-03-09 20:05:01', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8fe43b4aea92419683495cf1c61bd468', '10000000001347412343', '4', '5', '2019-03-09 18:05:38', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8feacbc9249d4a9da8e6cb1f2c1169e3', '10000000001347412343', '4', '5', '2019-03-09 20:01:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8ff48c9b26af4e938ec377bb30e327a1', '10000000001347412343', '4', '5', '2019-03-09 20:05:01', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('8ff5a95a643b43069744719181845057', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:12:38', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('90115e24648248fabdf3b9cd5ff76805', '10000000001327412346', '1', '5', '2019-03-14 15:52:38', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('9012f5b838c045cca5556e86d6962636', '10000000001347412343', '4', '5', '2019-03-09 18:04:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('90299ab1b1ac44ec9f934b16cdee73de', '10000000001347412343', '4', '5', '2019-03-09 18:08:44', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('904011b60e29488a8a6c213071fe8fb6', '10000000001347412343', '4', '5', '2019-03-09 18:09:00', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('90478eaf51fd4a2296eac751a42493bb', '10000000001347412343', '4', '5', '2019-03-09 20:01:40', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('907b4152dcb24fad9dfc45d73c92f03e', '10000000001347412343', '4', '5', '2019-03-09 20:02:10', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('9081e99281724d31889909a746ef8a4a', '10000000001347412343', '4', '5', '2019-03-09 20:03:46', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('90a9d5e1bd5141518ae358fc69dc8144', '10000000001347412343', '4', '5', '2019-03-09 18:08:14', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('90b0dcf31df8462d99413b4f1d137ca3', '10000000001347412343', '4', '5', '2019-03-09 20:03:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('90c6cb2c2d34409cb06add1cde99f732', '10000000001347412343', '4', '5', '2019-03-09 20:01:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('90fd4c55184a4f35952bfdf59e1b2254', '10000000001347412343', '4', '5', '2019-03-09 20:04:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('910cfcbf03144777b5473a0708a7e3c3', '10000000001347412343', '4', '5', '2019-03-09 18:07:28', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('91697d931d024b9ba33aabf0f3112388', '10000000001347412343', '4', '5', '2019-03-09 18:06:08', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('91717166c1c54c89902ba47c88bdba97', '10000000001327412345', '1', '5', '2019-03-14 16:31:31', 'description', null, null, '2', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('919176f6fd3e4893a470c53573aea2ac', '10000000001347412343', '4', '5', '2019-03-09 20:08:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('91a3ffcc859b4ae8bf9fbe3ae3c8a549', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:47:47', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('91be67a99c0a4a30ad0acff7ac875b87', '10000000001347412343', '4', '5', '2019-03-09 18:06:14', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('91d41636d46f41108d6991e65f1f329b', '10000000001347412343', '4', '5', '2019-03-09 20:01:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('92016af5cc364edb9f25ff6f3a1504cc', '10000000001347412343', '4', '5', '2019-03-09 20:01:18', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('9203b42b37f5458eaa1dddbd25e53989', '10000000001347412343', '4', '5', '2019-03-09 18:06:23', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('920c834c27664a4d848a4f7d7ee9719c', '10000000001347412343', '4', '5', '2019-03-09 20:04:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('92267ec19705407da3070b809484aad5', '10000000001347412343', '4', '5', '2019-03-09 20:04:31', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('92621f192fc64ae59d0b8624b96c951b', '10000000001347412343', '4', '5', '2019-03-09 20:04:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('92a290c8f0594e7eb6c4938b19ba743c', '10000000001347412343', '4', '5', '2019-03-09 18:08:51', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('92b94981181a41848968c828204ee7a9', '10000000001347412343', '4', '5', '2019-03-09 18:07:50', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('9352346a0efa4caa9806aef921e818f4', '10000000001347412343', '4', '5', '2019-03-09 20:07:48', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('937de2c046ad41a4b6f34361dc880b3c', '10000000001347412343', '4', '5', '2019-03-09 20:04:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('9390020b8c0c4799b76dbdad7d0e49dc', '10000000001347412343', '4', '5', '2019-03-09 18:10:25', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('93b1da459b804c808c06711dcdd8696e', '10000000001347412343', '4', '5', '2019-03-09 18:09:14', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('93cf6b68b9714a4b876f0ebdd7016096', '10000000001347412343', '4', '5', '2019-03-09 18:09:06', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('93e6f8a4e0534ccba10b1060a9aea6ba', '10000000001327412345', '1', '5', '2019-03-14 16:20:16', 'description', null, null, '2', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('94030f3c0b7a44c99a106134c96d7b05', '10000000001347412343', '4', '5', '2019-03-09 18:10:25', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('941003b5fe834c7a83f80f93c92dcc08', '10000000001347412343', '4', '5', '2019-03-09 18:06:50', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('941ce20d1f3a4037bf199d2d6a81ec6f', '10000000001347412343', '4', '5', '2019-03-09 20:08:16', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('941ea97b9a684086a4a8c7a5f26efe7b', '10000000001347412343', '4', '5', '2019-03-09 18:09:21', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('943c789c2c6443c7b2c0098718ad3b47', '10000000001347412343', '4', '5', '2019-03-09 18:06:23', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('944cce42e25e4987bcd4208dff82d09e', '10000000001327412341', '1', '5', '2019-03-09 18:04:28', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('946b2b8c808f49469f48145563b6990a', '10000000001347412343', '4', '5', '2019-03-09 20:04:46', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('94df45cddd494edd91e6ce9cea1ce51b', '10000000001347412343', '4', '5', '2019-03-09 20:01:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('94fe96183c05497d83a045e61334888d', '10000000001327412345', '1', '5', '2019-03-14 14:41:52', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('950b22cf903f4623bd44b2c3c35bb6f4', '10000000001347412343', '4', '5', '2019-03-09 20:04:31', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('951330a9168f4f1c96e5b122682f25af', '10000000001347412343', '4', '5', '2019-03-09 20:00:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('95234bfe9cdc463b9869e2c61b030e53', '10000000001347412343', '4', '5', '2019-03-09 20:02:10', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('95236461bb8c41aea3816bbd0d91d643', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-14 16:36:47', 'description', null, null, '2', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('9547ee0db5904d93b5fdbee37897eb53', '10000000001347412343', '4', '5', '2019-03-09 18:06:15', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('9548082adf7643b2bb7c46aa66bb8337', '10000000001347412343', '4', '5', '2019-03-09 18:04:23', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('9568fcdf59f546db83374b3a8b658ef1', '10000000001347412343', '4', '5', '2019-03-09 18:06:07', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('958d686bb4344b1e919d6e68a0cbd899', '10000000001347412343', '4', '5', '2019-03-09 20:02:03', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('95b954c3107e457596424e267c18136b', '10000000001347412343', '4', '5', '2019-03-09 20:05:01', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('95c7d49ebde9403c8f4dca37c84ae287', '10000000001347412343', '4', '5', '2019-03-09 18:10:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('95d54af7ce4b44e1a2ab24b8a1f31e0f', '10000000001347412343', '4', '5', '2019-03-09 20:02:10', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('962b1645d092435f89c261a4f0dfcd43', '10000000001347412343', '4', '5', '2019-03-09 20:01:16', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('967a323273a04590babab86167521b8e', '10000000001347412343', '4', '5', '2019-03-09 18:10:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('9680df58a45d4ef1a0b8fa0fabb162c9', '10000000001327412345', '1', '5', '2019-03-14 16:32:32', 'description', null, null, '2', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('96d4cd872629489ca6113b9a38f9ec80', '10000000001347412343', '4', '5', '2019-03-09 20:01:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('9700ae96b5234077a930e90c6af9ac8d', '10000000001347412343', '4', '5', '2019-03-09 20:03:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('971d7bf29316487a9ab8bd696fea171c', '10000000001347412343', '4', '5', '2019-03-09 20:03:25', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('97278ed27b154dbfa74ab26e808ad918', '10000000001347412343', '4', '5', '2019-03-09 18:04:53', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('97465ef4b69b436f987e0f5f353e0339', '10000000001347412343', '4', '5', '2019-03-09 20:02:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('97d57ba1677542e192c7008f94827e26', '10000000001347412343', '4', '5', '2019-03-09 18:08:44', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('9841411cf1c040d6bb2bfa1a1bfd18ff', '', '1', '5', '2019-03-14 16:57:19', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('985fde1f8cd1465b95dd6cab247a43d1', '10000000001347412343', '4', '5', '2019-03-09 20:04:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('98ab84c0ff0d4163bd84b3ad8fc34ea7', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:43:09', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('98b44fbe882f48cda393c3b698041dc2', '10000000001347412343', '4', '5', '2019-03-09 20:03:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('98cfe79d84024041aa92cf652bca806c', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:19:47', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('98d6f1fb8d4341bfadd2d388a0b13879', '10000000001347412343', '4', '5', '2019-03-09 20:04:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('99073ecbeeaf4689a2b6614e63ae6394', '10000000001347412343', '4', '5', '2019-03-09 18:03:52', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('9911db1865a3472ca67dfd02f9a09061', '10000000001347412343', '4', '5', '2019-03-09 20:08:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('992f1cdbc6e4423d830ed3e0cc19cf21', '10000000001347412343', '4', '5', '2019-03-09 20:03:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('9964b4c8442e43249df7e4a4cafe16de', '10000000001347412343', '4', '5', '2019-03-09 18:04:31', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('99832e0ca1f74efc9d92fce77f6f4ffe', '10000000001347412343', '4', '5', '2019-03-09 20:02:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('99badccd15644fdbbdae2f0040e2bcf0', '10000000001347412343', '4', '5', '2019-03-09 20:04:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('99e9792acd3c4870adaa7ebc4cc4541d', '10000000001347412343', '4', '5', '2019-03-09 20:00:46', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('9a105069784a43d9be01ccfa6347cf1d', '10000000001347412343', '4', '5', '2019-03-09 20:01:46', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('9a72a17dcd5647ec877e3186ad333ca8', '10000000001347412343', '4', '5', '2019-03-09 18:04:53', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('9a77dafc63894fdda1bb52f1d1542348', '10000000001347412343', '4', '5', '2019-03-09 18:04:16', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('9a86dce5a80b4a5b8ee3bb7b4e4ebea9', '10000000001347412343', '4', '5', '2019-03-09 18:07:21', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('9aa3659a540f461ea466a44a72812fce', '10000000001347412343', '4', '5', '2019-03-09 18:08:43', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('9aa9a17526dd4c819b24835ffbbee8aa', '10000000001327412341', '1', '5', '2019-03-09 19:43:27', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('9b1229e8edae4e98b6fa2dbf826dd5fe', '10000000001347412343', '4', '5', '2019-03-09 20:00:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('9b591ef9c0b847e49a00033439fa2884', '10000000001327412346', '1', '5', '2019-03-14 14:41:20', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('9b61183f08064d0fa814cdc4d45f3804', '10000000001347412343', '4', '5', '2019-03-09 18:09:28', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('9b9e8a850b4a4415bb86abfce7214a46', '10000000001347412343', '4', '5', '2019-03-09 18:06:58', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('9b9f2b5e80354042b0ba41f4aa06997a', '10000000001347412343', '4', '5', '2019-03-09 20:02:40', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('9ba6737ee6394c8ba606db742c5b657f', '10000000001347412343', '4', '5', '2019-03-09 20:03:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('9bb3da9b1b4b4231b2cbb5e824e60b20', '10000000001347412343', '4', '5', '2019-03-09 20:03:10', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('9bdade0ab43d436b8635c828fe1b4711', '10000000001347412343', '4', '5', '2019-03-09 18:08:22', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('9bf1df650a4343e9883bdee159b3a528', '10000000001347412343', '4', '5', '2019-03-09 18:05:15', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('9bfdeadf545a40598fcf610de72d8a4e', '10000000001347412343', '4', '5', '2019-03-09 20:02:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('9c123d5fd38d4957ac570ca66c6512e3', '10000000001347412343', '4', '5', '2019-03-09 18:04:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('9c1a6b49c8ca4dc5b6fb40ad4adc8d52', '10000000001347412343', '4', '5', '2019-03-09 18:05:45', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('9c3bfb0cc7224c75948d57e661742f0a', '10000000001347412343', '4', '5', '2019-03-09 18:06:23', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('9c9e1856684e4c16b97a7504a9c7b1db', '10000000001347412343', '4', '5', '2019-03-09 20:02:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('9ca170aad7114acb8df9bc860e1eb308', '10000000001347412343', '4', '5', '2019-03-09 18:10:10', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('9ca922d4948d4f118bd340b6cea1db0f', '10000000001347412343', '4', '5', '2019-03-09 20:02:40', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('9d17201f79b541ab9c198ffdce552e44', '10000000001347412343', '4', '5', '2019-03-09 18:05:52', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('9d60e5d859824461b1dc3fef36cf8e24', '10000000001347412343', '4', '5', '2019-03-09 18:07:42', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('9d70abe9365a4ca1924db1a08dbede88', '10000000001347412343', '4', '5', '2019-03-09 18:09:06', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('9d8a28cde88242cea71acdfe7442c728', '10000000001347412343', '4', '5', '2019-03-09 20:01:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('9da6aebc1d494faab2fed63476b1f68b', '10000000001347412343', '4', '5', '2019-03-09 20:07:40', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('9ddc1399cb38454db1828a4503548617', '10000000001347412343', '4', '5', '2019-03-09 20:01:40', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('9ddedd5e407a44bd833d041e3b17c87a', '10000000001347412343', '4', '5', '2019-03-09 18:07:36', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('9e09955a5e074d7682a639f65ae61530', '10000000001347412343', '4', '5', '2019-03-09 20:04:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('9e591a7703fd456b9f22493662ed93dc', '10000000001347412343', '4', '5', '2019-03-09 18:09:29', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('9e9575017d5f4833bc823d780bcd848c', '10000000001347412343', '4', '5', '2019-03-09 18:05:22', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('9f0615ac80524a1e97f5b442f8d97e83', '10000000001347412343', '4', '5', '2019-03-09 18:10:25', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('9f1de14aa35149b7853d1d7602a78d08', '10000000001347412343', '4', '5', '2019-03-09 18:09:22', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('9f2202eba4b14588a9dd84b91b3bc88c', '10000000001347412343', '4', '5', '2019-03-09 18:07:44', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('9f221e9a52bd46f696c088209b7abd80', '10000000001347412343', '4', '5', '2019-03-09 18:04:08', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('9f2dbc49297d4e95abaefa2d4b3958ec', '10000000001347412343', '4', '5', '2019-03-09 20:03:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('9ff153fb5acd4f8493a473e5dd85f7f6', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:48:19', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('a0304d3288b54b98a989614a80890286', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:32:33', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('a037609816264efab4a6e4de3ecb4a80', '10000000001347412343', '4', '5', '2019-03-09 20:03:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a05471b9e41f46498b658d8107ebc638', '10000000001327412346', '1', '5', '2019-03-14 15:53:08', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('a05bb9a267a54f19b085dd5e1f07a4ef', '10000000001347412343', '4', '5', '2019-03-09 18:05:37', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a089f04f64e94a2eba517335b8b49ba7', '10000000001347412343', '4', '5', '2019-03-09 18:04:53', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a09614ebc83a4fc184211d335a10ef88', '10000000001347412343', '4', '5', '2019-03-09 18:08:21', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a0d981ace3b0470ba051db25742bb128', '10000000001347412343', '4', '5', '2019-03-09 20:03:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a0f82e2b3cc14e32a2480f2235e184a7', '10000000001347412343', '4', '5', '2019-03-09 20:04:46', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a106f800f97241559fe4e5a6f8d1a9f2', '10000000001347412343', '4', '5', '2019-03-09 20:02:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a10e8950fbcb45ed90189af4d65ee50d', '10000000001347412343', '4', '5', '2019-03-09 18:05:29', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a1288a18a79a41a1913d7b8f9687cefc', '10000000001347412343', '4', '5', '2019-03-09 18:05:29', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a13346b32cc542d58b73f0474907a588', '10000000001347412343', '4', '5', '2019-03-09 20:03:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a14b90fc15da4182be7844d065548d34', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:56:53', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('a152cfab9b6a418c91dd94af3d3effda', '10000000001347412343', '4', '5', '2019-03-09 18:06:23', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a15358e7ff6640d1b69e28a439131831', '10000000001347412343', '4', '5', '2019-03-09 18:05:52', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a1874383518d46e798448b519fc82775', '10000000001347412343', '4', '5', '2019-03-09 18:04:46', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a192cff4279b41a4bbacebb9710a16d5', '10000000001347412343', '4', '5', '2019-03-09 20:01:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a1cb152568044dcdb4f471c0464c4d59', '10000000001347412343', '4', '5', '2019-03-09 18:07:58', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a1dc1ce7a822437a91a472bf69c2ce0a', '10000000001347412343', '4', '5', '2019-03-09 20:00:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a2351ddaf62e4e8a984d9dbec70780ce', '10000000001347412343', '4', '5', '2019-03-09 18:07:58', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a247e1bc3b5c45d2aa5d22a11b4f920c', '10000000001347412343', '4', '5', '2019-03-09 18:04:23', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a26e04130e474c9dbf8f1054f721ec54', '10000000001347412343', '4', '5', '2019-03-09 18:06:00', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a29b08171b1440048b9d1ebf67f80cc9', '10000000001347412343', '4', '5', '2019-03-09 18:05:30', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a2b2e1c900f94609a5d0fa44fea4f2d4', '10000000001347412343', '4', '5', '2019-03-09 20:02:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a2d427b1c21543a28c4ff88e0825fb87', '10000000001347412343', '4', '5', '2019-03-09 20:03:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a2d78ec080e24ec1a2dfcb09047aa669', '10000000001347412343', '4', '5', '2019-03-09 18:09:28', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a2f139db62704369afe00eca5974efc3', '10000000001347412343', '4', '5', '2019-03-09 20:05:00', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a2fc9f2cd89b45b9933e62f8f85e18b2', '10000000001347412343', '4', '5', '2019-03-09 20:07:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a37a152d42a74910829a11d0212edd68', '10000000001347412343', '4', '5', '2019-03-09 18:09:22', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a38001593c6b4adf8532efdad424a7cb', '10000000001347412343', '4', '5', '2019-03-09 20:07:25', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a43354a8db27435286d33271e80bd0df', '10000000001347412343', '4', '5', '2019-03-09 20:04:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a46a89e9043b4589873dbde62dc0b476', '10000000001327412345', '1', '5', '2019-03-14 16:30:18', 'description', null, null, '2', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a493c45f066f4be397531a5a906d8036', '10000000001347412343', '4', '5', '2019-03-09 18:08:36', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a4f50f84a0f04a169d2818832d41ecdc', '10000000001347412343', '4', '5', '2019-03-09 20:07:40', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a4f83abbf02e4ba68e8f012e90b5118d', '10000000001347412343', '4', '5', '2019-03-09 18:08:14', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a51a905ce487480bbee9f131ae7999e6', '10000000001347412343', '4', '5', '2019-03-09 20:04:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a51ae79cd0ad476f89a1223bdb110170', '10000000001347412343', '4', '5', '2019-03-09 18:07:29', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a53764538e8248ecbdfcbf6aaf21a57a', '10000000001347412343', '4', '5', '2019-03-09 20:00:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a5960f392d2b4c0f992673d0508834d1', '10000000001347412343', '4', '5', '2019-03-09 18:03:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a5a70a4b84234b8782528f493e554410', '10000000001347412343', '4', '5', '2019-03-09 18:07:06', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a5b252fd4618473b8b491c33fabe120e', '10000000001347412343', '4', '5', '2019-03-09 18:04:45', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a5e7f35e229849dc9acf30597d573c07', '10000000001347412343', '4', '5', '2019-03-09 20:08:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a5f03b27b0ca4947a3168cc8776a93ff', '10000000001347412343', '4', '5', '2019-03-09 20:08:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a66d5013d30f451aaa6058f81a35ea4e', '10000000001347412343', '4', '5', '2019-03-09 18:07:43', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a68f1ecb37dc4f90aef3f5206101a65e', '10000000001327412346', '1', '5', '2019-03-14 15:55:37', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('a6932897525b48c6a92dafaceaa50b9c', '10000000001347412343', '4', '5', '2019-03-09 18:06:50', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a6baf62d0578404ead425db964454943', '10000000001347412343', '4', '5', '2019-03-09 18:08:51', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a6bc80f569bb47e3a3d77f82258cd18f', '10000000001347412343', '4', '5', '2019-03-09 20:03:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a6c3bfbdc629447b8f99dfc27d4fa4aa', '10000000001347412343', '4', '5', '2019-03-09 18:07:51', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a6dac4b14bfa401c9b52c3d685f50088', '10000000001347412343', '4', '5', '2019-03-09 20:03:55', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a6dbec4955c5411ab6559d22d4791f72', '10000000001347412343', '4', '5', '2019-03-09 18:07:13', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a6e2f90ea4414f38ac83607ea9446416', '10000000001347412343', '4', '5', '2019-03-09 20:02:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a6ebd8cebc2440c7859fc1f9bad2cd56', '10000000001347412343', '4', '5', '2019-03-09 20:02:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a6eed43a8f63426c859bcfcbd1cd20a8', '10000000001347412343', '4', '5', '2019-03-09 18:08:59', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a776eb8ea4c14d61934780eb6917bf87', '10000000001347412343', '4', '5', '2019-03-09 18:08:13', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a79f515244b64eb2bfebd69d64ad4c06', '10000000001347412343', '4', '5', '2019-03-09 20:01:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a7abe42d663e4aaaaeb80f42e482a49d', '10000000001347412343', '4', '5', '2019-03-09 18:04:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a7b032ef3bb74336b0c87682028b89b4', '10000000001347412343', '4', '5', '2019-03-09 18:04:38', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a7c2d1d89e88408f9398c70a6be8f1bf', '10000000001347412343', '4', '5', '2019-03-09 20:04:16', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a84759fac8b64f88b6fbae9686547518', '10000000001347412343', '4', '5', '2019-03-09 18:05:30', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a858af65893c41c0b7f0e2553ae58113', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 08:46:01', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('a85de06089544ac3a11d930d998b68de', '10000000001347412343', '4', '5', '2019-03-09 18:10:11', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a875f3f67dee44a6af4dbc72f7e403cd', '10000000001347412343', '4', '5', '2019-03-09 20:07:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a8c243ac433f46fdb0ecc157a318bc28', '10000000001347412343', '4', '5', '2019-03-09 20:04:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a8efee8ef3de46fb97901a03c0b75c65', '10000000001347412343', '4', '5', '2019-03-09 18:08:06', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a8fdb9334ef04f898c2bb371ee1a34af', '10000000001347412343', '4', '5', '2019-03-09 20:04:53', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a9062172d8dc4bd9bde3be0e1515660a', '10000000001327412341', '1', '5', '2019-03-09 19:41:36', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('a907fbd408f84811802eba9a924e484f', '10000000001347412343', '4', '5', '2019-03-09 18:04:01', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a912c26b58c743d3b10f316566d66c7f', '10000000001347412343', '4', '5', '2019-03-09 18:08:51', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a922d0f8abc549fe9fe5b251e5998942', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:09:29', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('a924fd8deba6487eaaf2e66e28a9367b', '10000000001347412343', '4', '5', '2019-03-09 20:07:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a937d2ee00174e05a12af882b0ae70ed', '10000000001347412343', '4', '5', '2019-03-09 20:01:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a9c533370fac48df85e34977d4795021', '10000000001347412343', '4', '5', '2019-03-09 20:01:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('a9e48e74c1f4436da32afb02f95136fe', '10000000001327412346', '1', '5', '2019-03-14 14:42:53', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('aa0fbef457ae40a5b9f665009e5f5d87', '10000000001347412343', '4', '5', '2019-03-09 20:03:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('aa16e2813122470e9d4c90ba9336ebec', '10000000001347412343', '4', '5', '2019-03-09 18:08:44', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('aa30381d2b9b4ceabd55660f3b10532d', '10000000001347412343', '4', '5', '2019-03-09 18:08:06', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('aa501525d2594b1ca635a2248e295809', '10000000001347412343', '4', '5', '2019-03-09 20:02:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('aa690d910ead4faf97493c7764503806', '10000000001347412343', '4', '5', '2019-03-09 20:01:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('aaa514e823cf416ab2b32cd0d8b15017', '10000000001327412345', '1', '5', '2019-03-14 16:32:18', 'description', null, null, '2', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('aac00c780a744870af43b67b117882f9', '10000000001347412343', '4', '5', '2019-03-09 18:07:20', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('aac56b6268d24af985c4b05f8ed937f9', '10000000001347412343', '4', '5', '2019-03-09 20:02:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('aadbbe3cf6164e04a4836a5814c0a961', '10000000001347412343', '4', '5', '2019-03-09 20:04:53', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('aaec9713907a410da5036f1addc5718b', '10000000001347412343', '4', '5', '2019-03-09 20:07:55', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ab3a8f419a3d4b9294fb013d91203726', '10000000001347412343', '4', '5', '2019-03-09 18:08:36', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ab93eab5853840f4b68868523c584c0a', '10000000001327412345', '1', '5', '2019-03-14 16:16:55', 'description', null, null, '2', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('aba540e928bc411aac16fb5bc98b6580', '10000000001347412343', '4', '5', '2019-03-09 20:03:53', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ac1c67a248c9410891a397294ea76271', '10000000001347412343', '4', '5', '2019-03-09 20:03:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ac213c516d394bf2b2eb6a35665d1518', '10000000001347412343', '4', '5', '2019-03-09 18:07:43', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ac548127bee9493aa991f4f8001f2b7e', '10000000001347412343', '4', '5', '2019-03-09 20:08:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ac6585f0d4c14cf89e478dee36a1d38c', '10000000001347412343', '4', '5', '2019-03-09 20:01:10', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ac8d6b0814b0443dbc87bf387f857612', '10000000001347412343', '4', '5', '2019-03-09 18:07:28', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ac93aa6a0f4448349f5a4379efdcb14f', '10000000001347412343', '4', '5', '2019-03-09 18:07:20', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('aca5d4639a974d8dbac9fe787230d717', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:11:05', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('acd0ae8f43b44aeebe8fbb738330ebfb', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 08:57:38', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('ace583251f8f4949afbd0a91f2dafee1', '10000000001347412343', '4', '5', '2019-03-09 20:01:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ad0f2e80a6e74f11948d9de05776e28e', '10000000001347412343', '4', '5', '2019-03-09 18:05:44', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ada0e20058b5451597f75f8e4f01ee5b', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:44:27', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('adb52a24e62f4d419d53853009f70d15', '10000000001347412343', '4', '5', '2019-03-09 18:07:13', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ae05d073c8a24fdea54efc36ced2a1d7', '10000000001347412343', '4', '5', '2019-03-09 20:07:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ae1c57b7d45b44c9a15d51bb34918d55', '10000000001347412343', '4', '5', '2019-03-09 18:08:36', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ae3c9c5804244117b902f29dd931495e', '10000000001347412343', '4', '5', '2019-03-09 18:10:10', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ae4bfbc08b394f08b66b91380ad1b12d', '10000000001347412343', '4', '5', '2019-03-09 18:07:43', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ae6e63e708b34ead90bd464dc7943105', '10000000001347412343', '4', '5', '2019-03-09 18:07:06', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ae98aa319c534b0c8af1e80c73c7e8c7', '10000000001347412343', '4', '5', '2019-03-09 18:09:22', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('aeb48e298d334796b19a993bbddeaea6', '10000000001347412343', '4', '5', '2019-03-09 20:01:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('aec7acbbd6e440eab06454321007f02e', '10000000001347412343', '4', '5', '2019-03-09 18:04:30', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('aed491c5a4e44879b33b62c2e935864c', '10000000001347412343', '4', '5', '2019-03-09 20:03:16', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('af010812e1f74ad2acf512ddc7838613', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:26:39', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('af17dd3b00354d20850629065f125a91', '10000000001327412345', '1', '5', '2019-03-14 14:47:02', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('af19956f6e6d43399c9ef33b286b530b', '10000000001347412343', '4', '5', '2019-03-09 18:10:11', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('af289ffa1dee4347965676d9ebec40e3', '10000000001327412346', '1', '5', '2019-03-14 14:43:55', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('af5d0b2c09874d5eab1bfd1052c29044', '10000000001347412343', '4', '5', '2019-03-09 20:03:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('af7d522991ad4469acfe3ea08ff4f088', '10000000001347412343', '4', '5', '2019-03-09 20:08:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('afa4849696ad49c08512146aae4010c7', '10000000001347412343', '4', '5', '2019-03-09 20:02:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('afc7de9bcacb47e7930538607aab4efb', '10000000001347412343', '4', '5', '2019-03-09 20:02:40', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('affd8eb3ffcc4ac2ad833140c109653a', '10000000001347412343', '4', '5', '2019-03-09 18:09:06', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b00dcc846a4244edbe4dd5a0f118ca6b', '10000000001347412343', '4', '5', '2019-03-09 18:04:15', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b01d67f36d184b8a893138b3f76f2fca', '10000000001347412343', '4', '5', '2019-03-09 18:09:30', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b02ff2958bb74054befe1a7760c9312f', '10000000001327412341', '1', '5', '2019-03-09 19:48:15', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('b09e273cdbd64caab98e936dc46f6e8b', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:52:08', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('b09fc99160c246e1a88c81752b57cce6', '10000000001347412343', '4', '5', '2019-03-09 20:01:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b0c33910418340c7ab2f8305e94c3359', '10000000001347412343', '4', '5', '2019-03-09 18:07:27', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b111c9248c3948608b5619959c9c98d6', '10000000001347412343', '4', '5', '2019-03-09 20:01:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b11dba26cec542ce951961b818a36bfa', '10000000001347412343', '4', '5', '2019-03-09 18:06:00', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b1636fb9ff594fb88755eb0f9c16f03b', '10000000001347412343', '4', '5', '2019-03-09 18:04:01', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b16509dae0b1462993e823d73c028833', '10000000001347412343', '4', '5', '2019-03-09 20:04:16', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b17bc0e339de4c3dacefc880af8b8740', '10000000001347412343', '4', '5', '2019-03-09 18:03:53', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b1b7b819ef5345dab2b5a224e6eef895', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 08:48:56', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('b1e49ce7f3a24275b5f3aa380208c910', '10000000001347412343', '4', '5', '2019-03-09 20:00:40', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b206a6d8cd2c4f5d87f7ab5a00d0a787', '10000000001347412343', '4', '5', '2019-03-09 20:07:25', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b21021e8a9c348ba8937918ad0f7009e', '10000000001347412343', '4', '5', '2019-03-09 20:02:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b2de3bbc51db471092c117b8da7e5b63', '10000000001347412343', '4', '5', '2019-03-09 20:01:10', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b313b2229df74fd2ac5c0d53f3911861', '10000000001347412343', '4', '5', '2019-03-09 18:08:52', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b3610ea2708e4ca99a39aa392191324b', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:37:54', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('b36571eb5bbc4fa484cad41c5d6000d8', '10000000001347412343', '4', '5', '2019-03-09 20:03:25', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b37c8b30d593403f8e22d637d09cd28e', '10000000001347412343', '4', '5', '2019-03-09 20:02:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b39aa409525644a884fe52c4b48aff21', '10000000001347412343', '4', '5', '2019-03-09 20:04:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b3c9f43a7f58432a8ffc2799b0c8fd81', '10000000001347412343', '4', '5', '2019-03-09 20:07:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b3e8652a90b746008a57949247555a20', '10000000001347412343', '4', '5', '2019-03-09 18:10:10', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b3ed32e5160244b9870f98606a0eef89', '10000000001347412343', '4', '5', '2019-03-09 20:02:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b3fbc20746f146afaf0be96b31ceeebe', '10000000001347412343', '4', '5', '2019-03-09 18:04:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b402dc4bc06546fea304da015b7bc1e1', '10000000001347412343', '4', '5', '2019-03-09 18:06:23', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b45ddf069b4a40138551986c399d6311', '10000000001347412343', '4', '5', '2019-03-09 20:07:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b47cd8592d7f4758914212e6c2b19a28', '10000000001347412343', '4', '5', '2019-03-09 20:02:55', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b486113695734f77a5d77d705c76ea3f', '10000000001347412343', '4', '5', '2019-03-09 18:09:22', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b4926e4b20b447cdbaa0d8cafc30f63a', '10000000001347412343', '4', '5', '2019-03-09 20:01:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b4beb7d1c7a5406287747d0216668f4f', '10000000001347412343', '4', '5', '2019-03-09 18:06:16', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b4e8105d2ce6438cb399a5513603135b', '10000000001347412343', '4', '5', '2019-03-09 20:03:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b51b79d1487246e483cb7972bd51d458', '10000000001347412343', '4', '5', '2019-03-09 20:04:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b53daf01baf048a3a223cf0248eef9ca', '10000000001347412343', '4', '5', '2019-03-09 20:04:01', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b5676861e69341d283846c63315b0179', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:16:51', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('b5b1dbf8591443ba8e957549d2e419b9', '10000000001347412343', '4', '5', '2019-03-09 18:07:28', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b5d9c49949aa4313b22dff970a3da6a3', '10000000001347412343', '4', '5', '2019-03-09 20:02:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b5e462a7f7ff486d818c85630e5a37f1', '10000000001347412343', '4', '5', '2019-03-09 18:04:01', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b6054cbab83b4e21820226679729b7a3', '10000000001347412343', '4', '5', '2019-03-09 20:03:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b60bf6b80f914c12bc6780c35167d7ee', '10000000001347412343', '4', '5', '2019-03-09 20:02:03', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b60d0f8e04cc4696aa2131c6574321fd', '10000000001347412343', '4', '5', '2019-03-09 18:05:37', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b61bb45797144399ba672dfa55107362', '10000000001347412343', '4', '5', '2019-03-09 20:07:25', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b648b56550cb413786f36381a3f463ab', '10000000001347412343', '4', '5', '2019-03-09 18:06:15', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b6949f140a9345aa92e9e6d1e43f0f0c', '10000000001347412343', '4', '5', '2019-03-09 18:08:29', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b6a3cd8cb68a4eedb386603c08de41de', '10000000001347412343', '4', '5', '2019-03-09 18:05:29', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b71ebc01971b4be689b351a6636a452a', '10000000001347412343', '4', '5', '2019-03-09 20:03:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b739548325374d238e09299f043b1f2e', '10000000001347412343', '4', '5', '2019-03-09 20:08:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b74ed61abd0c4f61940433c3648c360c', '10000000001347412343', '4', '5', '2019-03-09 18:05:30', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b76d4613399f430989150f775e0f8d1d', '10000000001347412343', '4', '5', '2019-03-09 20:04:10', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b77fc2c6b12c42e3b2096fbab1a2cf90', '10000000001347412343', '4', '5', '2019-03-09 18:07:51', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b79adbdfa1194f22aacb34ac64b8145d', '10000000001347412343', '4', '5', '2019-03-09 18:08:44', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b7b1179e47624248b0a6100472e92138', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:00:14', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('b7c0099907754c419e764650a13ea101', '10000000001347412343', '4', '5', '2019-03-09 18:06:57', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b8102c8ada2c4815afd9004cb4a45952', '10000000001347412343', '4', '5', '2019-03-09 20:01:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b82d1b9a54c34d16b8285032d9bd5b55', '10000000001347412343', '4', '5', '2019-03-09 20:02:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b86c92ef16c54504852c15d814fcdfc8', '10000000001347412343', '4', '5', '2019-03-09 20:03:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b8ae320120f042f7a5e81cc8f4ac94a4', '10000000001347412343', '4', '5', '2019-03-09 18:08:29', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b8b92173e1bf412da52ce0039ee81db8', '10000000001347412343', '4', '5', '2019-03-09 20:02:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b8e7d3754d6944beb5e8f77cd91f5e67', '10000000001347412343', '4', '5', '2019-03-09 20:01:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b8e8f97e5a42442ea8d9996b90f0891d', '10000000001347412343', '4', '5', '2019-03-09 20:07:55', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b93cfbc3e3884ad6bbe1494683863c10', '10000000001347412343', '4', '5', '2019-03-09 20:02:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b9573d19f02c4221859ce25e89c52770', '10000000001327412346', '1', '5', '2019-03-14 14:46:30', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('b95df6bc916d40c2a03a00739f4a80bd', '10000000001347412343', '4', '5', '2019-03-09 20:02:16', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b96f9d231c774979b03e21be2ed71773', '10000000001347412343', '4', '5', '2019-03-09 20:01:25', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b984f610e6784c02a0ea1d5e73e95485', '10000000001347412343', '4', '5', '2019-03-09 18:05:53', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b98ce0594c3f4ea6b22e304606ca3a10', '10000000001347412343', '4', '5', '2019-03-09 20:04:38', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b9a2782ad58a4ce5aee3593afdc3e380', '10000000001347412343', '4', '5', '2019-03-09 20:04:46', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b9b4d84973bd480f8f5fd43740a4443d', '10000000001347412343', '4', '5', '2019-03-09 18:04:16', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b9b912459bef4f08b74f5837df28a392', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:45:09', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('b9bfc4cba8d7402a926fb90b367ed8b5', '10000000001347412343', '4', '5', '2019-03-09 20:01:46', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b9f58e1817b94073953b62893e5a6fef', '10000000001347412343', '4', '5', '2019-03-09 20:02:10', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('b9f892d8efc04ab89b9214c744e05a88', '10000000001347412343', '4', '5', '2019-03-09 20:08:10', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ba0195538ba9418281dd49c14dc7e486', '10000000001347412343', '4', '5', '2019-03-09 20:04:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('bac80b68735443a28ed4814620d69968', '10000000001347412343', '4', '5', '2019-03-09 18:04:23', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('bad0a0038f4c46bb82454a538c6a0f0a', '10000000001347412343', '4', '5', '2019-03-09 18:04:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('bae7a2f6ac144f17a5ccc4099bf35d2f', '10000000001347412343', '4', '5', '2019-03-09 18:07:14', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('bae926546d1949618f5eaa62d7e95eb0', '10000000001347412343', '4', '5', '2019-03-09 18:07:05', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('baf05cb330474bf3aae4e7d11d36b899', '10000000001347412343', '4', '5', '2019-03-09 20:00:48', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('baf749d721bd4bceb19d75c1cbcf3518', '10000000001347412343', '4', '5', '2019-03-09 18:04:16', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('bb125ebb207e4846a76025681306d4ca', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:43:40', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('bb2906a08f1b42a2b48fbd4582b173a8', '10000000001347412343', '4', '5', '2019-03-09 20:07:55', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('bb702d14a9dc4311b860fd0c8944e954', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 08:54:44', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('bbbae1e436a643f8a33ad234b444440c', '10000000001347412343', '4', '5', '2019-03-09 18:04:46', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('bbccaf63e4bf4e92b7d78b8a517b9ecc', '10000000001327412346', '1', '5', '2019-03-14 14:42:23', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('bbd113d59fee438288f56195226ecbab', '10000000001347412343', '4', '5', '2019-03-09 20:07:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('bc0001f40ba74086bec5d6e0cb2f0e55', '10000000001347412343', '4', '5', '2019-03-09 18:05:38', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('bc5a841d44ac4ffa8bfd1cf656813553', '10000000001347412343', '4', '5', '2019-03-09 18:04:08', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('bc63fd06ff2a4235a04f2d8f26d74a43', '10000000001347412343', '4', '5', '2019-03-09 18:08:20', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('bc64faa0824f43c2a0981731470c41d9', '10000000001347412343', '4', '5', '2019-03-09 18:05:37', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('bc90c5f86c3d4ff3b07298275947d9ff', '10000000001347412343', '4', '5', '2019-03-09 18:08:36', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('bc918b78211646588edf9cc518a70472', '10000000001347412343', '4', '5', '2019-03-09 18:09:07', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('bc91c4f77faf471184e5748afe69506f', '10000000001347412343', '4', '5', '2019-03-09 18:09:29', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('bca66ea81e2447b5be78865dc8a3dbfe', '10000000001347412343', '4', '5', '2019-03-09 18:08:28', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('bcb29fe8c72340099975f4d51680bc52', '10000000001347412343', '4', '5', '2019-03-09 18:08:28', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('bcc93d227b1b4d1e9bd5a463e276b4da', '10000000001347412343', '4', '5', '2019-03-09 18:04:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('bccde0d1b4804c32ab45543869ddecbd', '10000000001327412345', '1', '5', '2019-03-14 16:18:31', 'description', null, null, '2', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('bcd7cea526f648498d646f890333d5f5', '10000000001347412343', '4', '5', '2019-03-09 18:07:43', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('bce1a6dc87db4c759d989c45704a6873', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:45:41', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('bcf4d8d793e14e76b6ad8b5c77726b56', '10000000001347412343', '4', '5', '2019-03-09 18:04:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('bd124220634e421993ff9cb9afd8db10', '10000000001347412343', '4', '5', '2019-03-09 20:04:31', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('bd35a09ec33949bbb64c753d48b1ee1c', '10000000001347412343', '4', '5', '2019-03-09 20:02:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('bd4b81715871435289ea38de904e7f06', '10000000001347412343', '4', '5', '2019-03-09 20:04:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('bd4ea8338577477ab62851e5432d8868', '10000000001347412343', '4', '5', '2019-03-09 18:08:37', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('bd555a7fe3a54a97901c31c2f318637f', '10000000001347412343', '4', '5', '2019-03-09 18:04:46', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('bd7c37497b2a47f087954cc785f2d162', '10000000001347412343', '4', '5', '2019-03-09 18:04:01', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('bd869a46d56a4525bf2bab3ec8ac22c4', '10000000001347412343', '4', '5', '2019-03-09 20:02:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('bd91dab6e65246a29f9a705d39052bbc', '10000000001347412343', '4', '5', '2019-03-09 18:07:12', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('bd9c7549bf5e4e50a89807e278595788', '10000000001347412343', '4', '5', '2019-03-09 18:08:28', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('bda7c9b87c2443268f9436582d7b3c25', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 10:03:01', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('be0bf7a39d7d4711a3a107aec6b724ee', '10000000001347412343', '4', '5', '2019-03-09 18:07:21', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('be187b282bc84fe2945214a092752a33', '10000000001347412343', '4', '5', '2019-03-09 20:04:31', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('be1be31d58c34b4fbc227d97818fe337', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 08:46:53', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('be22c30d297e47f485cd1667bfbbb78e', '10000000001347412343', '4', '5', '2019-03-09 20:00:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('be233f0f76a1409e9addb3369832668f', '10000000001347412343', '4', '5', '2019-03-09 18:06:58', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('be4753c328054efb9774f7667ccad35b', '10000000001347412343', '4', '5', '2019-03-09 20:07:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('be76b1cba9e448cab465fec8761d828d', '10000000001347412343', '4', '5', '2019-03-09 18:04:38', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('be8001c8e8224657bdce5309907f42a3', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 08:50:17', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('be88aefa3f994c46914181102690c035', '10000000001347412343', '4', '5', '2019-03-09 20:08:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('bec41649fb364e068cd0391b45ae5952', '10000000001347412343', '4', '5', '2019-03-09 18:04:01', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('bf1da4dab5bd459da65727db96bce8ce', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:01:57', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('bf44f19e26ea4f73a37cca60af5b669f', '10000000001347412343', '4', '5', '2019-03-09 18:10:10', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('bf5ef164e4c8445e8c0fb34aad99115c', '10000000001347412343', '4', '5', '2019-03-09 18:10:25', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('bf9fa4b4b29c412181f89725727f7e14', '10000000001347412343', '4', '5', '2019-03-09 18:09:29', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('bfb2daa46a534d9bb94e7dc1ec5f171f', '10000000001347412343', '4', '5', '2019-03-09 20:07:25', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c004f1de2e354e9c916dbc8a2796d409', '10000000001347412343', '4', '5', '2019-03-09 18:10:26', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c02b2c7beb8f4f5ca1c722049d28d91c', '10000000001347412343', '4', '5', '2019-03-09 18:07:13', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c030fb76706d49f28c9e67cb79328f6c', '10000000001347412343', '4', '5', '2019-03-09 20:00:40', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c0450b8f3f274dc7a35b32500379c2ea', '10000000001347412343', '4', '5', '2019-03-09 18:04:00', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c06a8b5379344e0096e066df908651b8', '10000000001327412341', '1', '5', '2019-03-09 19:44:32', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('c070a05b92da46d184d6f8ae710120f4', '10000000001347412343', '4', '5', '2019-03-09 18:10:33', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c0a60f255547490a9db2998db607ca96', '10000000001347412343', '4', '5', '2019-03-09 18:07:43', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c0e19f0bc12e4ff4a77714a3ca1ba066', '10000000001347412343', '4', '5', '2019-03-09 18:04:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c0ef50e7bf7741b0b52e969bf63aa428', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:00:54', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('c0f2cc985f95430da4f69753262c64ba', '10000000001347412343', '4', '5', '2019-03-09 20:01:31', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c124563d978a4022ad8f614830ff596e', '10000000001347412343', '4', '5', '2019-03-09 18:05:30', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c1255c5981244b6aa7d2cb17d567ebe1', '10000000001347412343', '4', '5', '2019-03-09 20:02:40', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c133334ae29b427687744cf860bc3388', '10000000001347412343', '4', '5', '2019-03-09 18:06:43', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c1994435d33343c5a5a020a620700a02', '10000000001347412343', '4', '5', '2019-03-09 20:02:01', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c1b20969ab6341d98532529cc2c63a59', '10000000001347412343', '4', '5', '2019-03-09 18:10:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c1b47f79d94e495fb3c8c27d505a1dca', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 08:58:40', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('c1bfb78615864933be01343711d19417', '10000000001347412343', '4', '5', '2019-03-09 20:03:46', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c1eda472d75844bb8d9e2446e1e93e79', '10000000001347412343', '4', '5', '2019-03-09 18:04:08', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c2a1945fa8d541e3a8180d35b4bc9ff6', '10000000001327412346', '1', '5', '2019-03-14 14:39:48', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('c2d7c9a790a64ed7a143857beea6883f', '10000000001347412343', '4', '5', '2019-03-09 18:07:43', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c3487519b6824d819ef3d804f68d2718', '10000000001347412343', '4', '5', '2019-03-09 18:09:22', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c37965b280ab43dabeaee31bd2d8c2ff', '10000000001347412343', '4', '5', '2019-03-09 18:05:59', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c39400f176ba467f83ab35b6358a1573', '10000000001347412343', '4', '5', '2019-03-09 20:03:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c3a4fd3c77ea4b79a1277f1399c82ea5', '10000000001347412343', '4', '5', '2019-03-09 20:03:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c3d4386d33874c25891ef99db42f7341', '10000000001347412343', '4', '5', '2019-03-09 18:06:58', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c3e1f2f8a6374cc8b6d24ebcfa9ae7ac', '10000000001347412343', '4', '5', '2019-03-09 20:03:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c40b64b021b7485ab5756447fc7d6a5d', '10000000001327412345', '1', '5', '2019-03-14 14:39:17', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('c422996c68164955b511e1acdd3fd279', '10000000001347412343', '4', '5', '2019-03-09 20:02:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c4390e4914c14ed5ba319754b45d1665', '10000000001347412343', '4', '5', '2019-03-09 20:03:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c471ddfdf62a4ebc981fbda16df4e08f', '10000000001347412343', '4', '5', '2019-03-09 20:01:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c49539dd1529482aa5e0d08229ad31c1', '10000000001347412343', '4', '5', '2019-03-09 20:05:01', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c4a673ff864249909f933d36edcf6f21', '10000000001347412343', '4', '5', '2019-03-09 20:08:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c4ae1d8128cb4a32ba4f77fe91eaddab', '10000000001347412343', '4', '5', '2019-03-09 20:03:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c4c0cd3a990e40e08eef1dea865f6915', '10000000001347412343', '4', '5', '2019-03-09 20:00:40', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c4c1f1ad045b4c158a9716433b2e9fca', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 08:47:23', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('c4fdf661059a4dc39b9bf508e8875ad0', '10000000001347412343', '4', '5', '2019-03-09 20:07:33', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c5ad2711e42d421b86305e6ab4afdaa6', '10000000001347412343', '4', '5', '2019-03-09 20:04:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c5bdf2ba7f954da7b429c39caced7858', '10000000001347412343', '4', '5', '2019-03-09 18:06:15', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c60b96b687d94a16b0fbc4bee08b7d67', '10000000001347412343', '4', '5', '2019-03-09 20:01:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c61c9926bec64b3c9bc6a0474292bdd9', '10000000001347412343', '4', '5', '2019-03-09 20:07:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c6236469660a4808b0bf0fe59fd2e3b7', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 08:59:42', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('c639b7252997472aa785811beb03d3a9', '10000000001347412343', '4', '5', '2019-03-09 20:07:18', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c63ff619f40344ff9b344bbab196f29e', '10000000001347412343', '4', '5', '2019-03-09 18:10:33', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c65de02e3ea7452a8599be5d672d4712', '10000000001347412343', '4', '5', '2019-03-09 20:01:31', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c6703fee63824acdbf95c144ed10c996', '10000000001347412343', '4', '5', '2019-03-09 20:04:16', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c6a0a755bf3546eca19c49340c4b5490', '10000000001347412343', '4', '5', '2019-03-09 18:06:58', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c6d3b517655f41c38c9f13cfc10bcc09', '10000000001347412343', '4', '5', '2019-03-09 20:03:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c7485c13652f49ff80882281d77f6118', '10000000001347412343', '4', '5', '2019-03-09 18:06:57', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c7567e83c8a540fe9185def4c2e9bd85', '10000000001347412343', '4', '5', '2019-03-09 18:04:46', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c76a776a0dd542c5a0badb6c3fd7c2df', '10000000001347412343', '4', '5', '2019-03-09 18:09:21', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c798273567bb41d7b6dde62db47042ca', '10000000001327412345', '1', '5', '2019-03-14 16:26:13', 'description', null, null, '2', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c7a4272618ca4ff4a5b218b630f689d6', '10000000001327412346', '1', '5', '2019-03-14 15:56:22', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('c7bd530d5322413190384728d4fe0159', '10000000001347412343', '4', '5', '2019-03-09 20:01:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c7c138c2fa4c41ae9468d016c9021e04', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:04:01', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('c7efd9d2b3b84e7fb9d5892bcb1a4a94', '10000000001347412343', '4', '5', '2019-03-09 20:04:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c8074ff2fd4f4d758798b04b09284890', '10000000001347412343', '4', '5', '2019-03-09 20:03:16', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c816a8b54662464fbc5cbfca3b3a3376', '10000000001347412343', '4', '5', '2019-03-09 20:03:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c81e3bc3f71e4a5b82dec1e1de3b8b0b', '10000000001347412343', '4', '5', '2019-03-09 18:08:59', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c822cc687843455b9dcdcd832c2819cf', '10000000001347412343', '4', '5', '2019-03-09 18:09:21', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c82ebc6c86154c2f922bdca0caa981ee', '10000000001347412343', '4', '5', '2019-03-09 18:08:14', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c84f9bc14ade45558f097432d47d4bcb', '10000000001347412343', '4', '5', '2019-03-09 20:02:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c87b3ac795894a16939498bf8eb5e07d', '10000000001347412343', '4', '5', '2019-03-09 20:03:01', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c89b3a52c5ef463ea075f34d51868ea2', '10000000001347412343', '4', '5', '2019-03-09 20:07:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c8a35cc13bb34e7dbef2b84a298fddf9', '10000000001347412343', '4', '5', '2019-03-09 18:05:45', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c8cc3cb3901043bea42d04c05d48676c', '10000000001347412343', '4', '5', '2019-03-09 18:08:59', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c8db22e22836424e9d0a3d0c57131d65', '10000000001347412343', '4', '5', '2019-03-09 18:08:59', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c98d16da629d4717a1737727e6cd50e6', '10000000001347412343', '4', '5', '2019-03-09 18:06:07', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c9a5e49f8ea34a84b257058344c534a7', '10000000001347412343', '4', '5', '2019-03-09 20:07:18', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c9d6724e658a4d5caed21715565420ec', '10000000001347412343', '4', '5', '2019-03-09 18:09:07', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('c9fd41c41ff04ba9be6e12bb574c8e7e', '10000000001347412343', '4', '5', '2019-03-09 18:06:00', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ca04971314e743edb89fcc66675169d9', '10000000001347412343', '4', '5', '2019-03-09 20:07:40', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ca12696d0d5744d0b75abf10531023ac', '10000000001347412343', '4', '5', '2019-03-09 18:04:46', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ca211b62ba354aab9517029f5a134e1a', '10000000001347412343', '4', '5', '2019-03-09 18:08:44', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ca2b48d1c9b841648cdf7c3b21718d85', '10000000001347412343', '4', '5', '2019-03-09 18:05:14', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ca4a86d46aa04d608d311f70d48cc5a8', '10000000001347412343', '4', '5', '2019-03-09 20:01:10', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('cace910b1b604cd5a1cea76530cd17c4', '10000000001347412343', '4', '5', '2019-03-09 18:04:53', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('caef98390d124f049f93addb01e90060', '10000000001347412343', '4', '5', '2019-03-09 20:04:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('cb0696ea35ec4e20b5a05b6e35d688b0', '10000000001347412343', '4', '5', '2019-03-09 18:10:10', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('cb1dd40fe4e94beebd8df40aec8284fb', '10000000001347412343', '4', '5', '2019-03-09 20:03:10', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('cb1fc78413fb439db6d7d71116f1e1e4', '10000000001347412343', '4', '5', '2019-03-09 20:01:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('cb28474a8974432e9f9dbca3242321fe', '10000000001347412343', '4', '5', '2019-03-09 18:09:14', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('cb4cd72294ed4ec0b262ad6a33b7c3fd', '10000000001347412343', '4', '5', '2019-03-09 20:02:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('cb730db048cc49a796d8dac5dcdafb40', '10000000001347412343', '4', '5', '2019-03-09 20:07:40', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('cb7ea303dd9740f1b531e2010060f25d', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:25:17', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('cb907c6a326642e896fa91bc8a2e65df', '10000000001347412343', '4', '5', '2019-03-09 18:08:44', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('cb98f5139ea745b38fd5fc63f6ea819b', '10000000001347412343', '4', '5', '2019-03-09 20:02:55', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('cbd59d40f8d2455c969f9246b740f062', '10000000001347412343', '4', '5', '2019-03-09 18:08:29', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('cbfeecfc491741f094089e49a8f1f597', '10000000001347412343', '4', '5', '2019-03-09 20:07:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('cc473963938747548ad29955995e99e4', '10000000001347412343', '4', '5', '2019-03-09 18:07:44', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('cc4ec679457844128ee03c0ee6a7d738', '10000000001347412343', '4', '5', '2019-03-09 20:02:46', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('cc77722e9082471d94aba96cd212e8a8', '10000000001347412343', '4', '5', '2019-03-09 20:01:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('cc7de905142041f185991e26cab1f62f', '10000000001347412343', '4', '5', '2019-03-09 20:08:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('cc7eda91ed1e4dbf98980c1faeafde2f', '10000000001347412343', '4', '5', '2019-03-09 18:05:45', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('cca91828e8e044db9100144c800ce3ce', '10000000001347412343', '4', '5', '2019-03-09 20:02:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ccbe10bd717d4fefb0f04292018d3505', '10000000001347412343', '4', '5', '2019-03-09 18:08:21', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('cd3b427d4f5744f98dfe2e8034809a98', '10000000001347412343', '4', '5', '2019-03-09 20:04:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('cd78a67e52ea49f3a6e969907f68f96d', '10000000001327412345', '1', '5', '2019-03-14 16:14:26', 'description', null, null, '2', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('cd882194899a4d26915820eb180415b5', '10000000001347412343', '4', '5', '2019-03-09 18:07:13', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('cdffb974c03644cdb6033ae80287e2b7', '10000000001347412343', '4', '5', '2019-03-09 20:08:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ce076a3b855a44ef8afaa2340f438f2c', '10000000001347412343', '4', '5', '2019-03-09 20:00:40', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ce16b92b98d249468e05f8c0b5f824d8', '10000000001347412343', '4', '5', '2019-03-09 18:08:59', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ce6f90eb5fc44941b36636310ae1e144', '10000000001347412343', '4', '5', '2019-03-09 18:06:15', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ce8e43bad8c74def898e27e9145b8f06', '10000000001347412343', '4', '5', '2019-03-09 20:04:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ce98e762ea2049229fb7296b70758c3b', '10000000001347412343', '4', '5', '2019-03-09 18:09:29', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ceb09c4a18064a879507e79cd21c7566', '10000000001347412343', '4', '5', '2019-03-09 18:10:33', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ceb3f2b6f9654748a5493daaa09b1c7b', '10000000001347412343', '4', '5', '2019-03-09 18:04:31', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('cee43695a7cc4c9faae24a45674d169c', '10000000001347412343', '4', '5', '2019-03-09 20:01:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('cf1a2013fa8d437a929de17a35ece688', '10000000001347412343', '4', '5', '2019-03-09 18:05:52', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('cf219de2910747a48c27ede56d2f599e', '10000000001347412343', '4', '5', '2019-03-09 18:04:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('cf2cf4f7904d48b988d90694035bd957', '10000000001347412343', '4', '5', '2019-03-09 18:05:22', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('cf34786167ec4ba3962a90cf8fbe4889', '10000000001327412346', '1', '5', '2019-03-14 15:58:26', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('cf4aba18dab049f4b55e02043576a47c', '10000000001347412343', '4', '5', '2019-03-09 20:01:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('cf8adb18c49a43b5940a96dc1f4ed56f', '10000000001347412343', '4', '5', '2019-03-09 18:07:28', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('cf8c49eb420b47eab7a9b45cd330d5f8', '10000000001347412343', '4', '5', '2019-03-09 18:09:14', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('cfc09c4fdb864bada8589c3abc0abd4f', '10000000001347412343', '4', '5', '2019-03-09 18:05:22', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('cfce111fe13d4fca85cf21dc6648a066', '10000000001347412343', '4', '5', '2019-03-09 20:02:40', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('cfd309f5b1df496a9d7cbab3b294f0bd', '10000000001347412343', '4', '5', '2019-03-09 20:04:16', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d01270a50b3646bc8dfa069b44c9ac63', '10000000001347412343', '4', '5', '2019-03-09 20:02:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d01ce281d7df4222b3e61e10659d21e2', '10000000001347412343', '4', '5', '2019-03-09 20:07:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d0204245b6944d769d8641e0ee80fc60', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-14 16:35:21', 'description', null, null, '2', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d08a512707244eee92841c342f2deea4', '10000000001347412343', '4', '5', '2019-03-09 18:08:44', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d0c662755e6846a9b406c582ffa02d51', '10000000001347412343', '4', '5', '2019-03-09 18:05:22', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d0f4c62c13424d5fbf6a1392f5923c6f', '10000000001347412343', '4', '5', '2019-03-09 20:02:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d1068882aa094de58c224c29c3a66ac9', '10000000001347412343', '4', '5', '2019-03-09 20:02:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d11639c8a4e54089a4f8af8e14d149e5', '10000000001347412343', '4', '5', '2019-03-09 18:08:05', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d1240ae921c747c2a642e9395c24d9f4', '10000000001347412343', '4', '5', '2019-03-09 18:08:36', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d146872b97b648a1b04d94ea200197cd', '10000000001347412343', '4', '5', '2019-03-09 18:10:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d173d6ecb9624720af8d5c1a8cf2d320', '10000000001347412343', '4', '5', '2019-03-09 20:07:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d179f600559443fdb5e624fa17b330c8', '10000000001347412343', '4', '5', '2019-03-09 18:09:36', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d17cdbb1fdc04723949463dfb61d814a', '10000000001347412343', '4', '5', '2019-03-09 20:01:55', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d19578d718ed4736b587ff054511f0f7', '10000000001347412343', '4', '5', '2019-03-09 18:08:52', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d1982afb27024fa6ad3622377364da18', '10000000001347412343', '4', '5', '2019-03-09 18:04:38', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d1d6962693954df388c376a9016754d4', '10000000001347412343', '4', '5', '2019-03-09 18:06:07', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d1dd4e62b89e4ebf8bc871b9adfa8271', '10000000001347412343', '4', '5', '2019-03-09 20:01:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d2034c9e90ab46f2a3d4853c05228ab0', '10000000001347412343', '4', '5', '2019-03-09 20:01:55', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d20793d416464bdc8ab4c041d34523ca', '10000000001347412343', '4', '5', '2019-03-09 18:07:35', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d240ad7fae134139a1ee6370bf248d53', '10000000001347412343', '4', '5', '2019-03-09 20:01:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d265fda9ed584aa7bba389839db0a4f6', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-14 16:34:35', 'description', null, null, '2', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d2a38fba2e94470895e924485d8d899c', '10000000001347412343', '4', '5', '2019-03-09 18:04:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d2b06877825d4af7905a70f76310a3a3', '10000000001347412343', '4', '5', '2019-03-09 18:06:16', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d2c8a78f1fc54c05be224861338f7e2b', '10000000001347412343', '4', '5', '2019-03-09 20:01:18', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d2e05a68b2974670b5d5b016c05a479e', '10000000001327412345', '1', '5', '2019-03-14 16:33:06', 'description', null, null, '2', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d2e5cac17fca47c2b9c9b838287bbd49', '10000000001347412343', '4', '5', '2019-03-09 18:08:58', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d3277226fa4f47baa218cdc1dd590c7d', '10000000001347412343', '4', '5', '2019-03-09 18:10:10', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d3365d12ca784058a02a228d855a4f6a', '10000000001347412343', '4', '5', '2019-03-09 18:06:07', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d34ecc524e7a44a7827a2190f935ff82', '10000000001347412343', '4', '5', '2019-03-09 20:03:25', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d35807bbc53d44909c3ff798986bff6c', '10000000001347412343', '4', '5', '2019-03-09 18:09:14', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d395e7e8da3d41c3b6b8615e56d83364', '10000000001347412343', '4', '5', '2019-03-09 18:08:51', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d396221f1c75451d9cc378152ec34073', '10000000001347412343', '4', '5', '2019-03-09 20:03:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d3c42ac96b2a457887da8acc5d45b4d0', '10000000001347412343', '4', '5', '2019-03-09 20:04:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d3ec01b14a4a442c97e295848d11a901', '10000000001347412343', '4', '5', '2019-03-09 18:04:38', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d42a4e66514445c594f74e7d4bc7077f', '10000000001327412346', '1', '5', '2019-03-14 14:43:25', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('d46f6a71dff0481685b0103ba49b53c8', '10000000001347412343', '4', '5', '2019-03-09 18:05:38', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d46fb9aa6045496d9ffb60e1094b42cd', '10000000001347412343', '4', '5', '2019-03-09 18:05:23', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d47438a24b624a6eabe2fa25b9cccd51', '10000000001347412343', '4', '5', '2019-03-09 18:04:46', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d4ba69c971164829b5e6d9c46a2ca259', '10000000001347412343', '4', '5', '2019-03-09 18:04:00', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d4bd99b15bbd47aca84f22ade67c0c3d', '10000000001347412343', '4', '5', '2019-03-09 20:05:01', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d4c523deb6c44789ada8b25faa0e917e', '10000000001347412343', '4', '5', '2019-03-09 20:03:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d4d8293f1fff47899e64c90b9047c736', '10000000001347412343', '4', '5', '2019-03-09 20:04:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d4d85a24fcad4df4a03b9c8048125de5', '10000000001347412343', '4', '5', '2019-03-09 18:09:29', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d4d940b1d9524de7acb31f8dc9900a45', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 08:52:26', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('d4e0cb3892114504bae7f524ec49b589', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:16:20', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('d5147166ad7f4a95b6b1dcdd537593bf', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:06:21', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('d51740a64191424882ba40f1880bfd9c', '10000000001347412343', '4', '5', '2019-03-09 20:03:46', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d5247e27ece949e498fea1482cb36671', '10000000001347412343', '4', '5', '2019-03-09 18:06:23', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d53afc205bda4c629ddc34587f38b53e', '10000000001347412343', '4', '5', '2019-03-09 18:04:16', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d557d8c31fe84c478a4ed1527e2bb800', '10000000001347412343', '4', '5', '2019-03-09 18:07:58', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d5829de89c624ed592f85259f2d8254b', '10000000001347412343', '4', '5', '2019-03-09 20:04:46', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d5b55157bfc140ebae056f062557738f', '10000000001347412343', '4', '5', '2019-03-09 18:07:44', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d64db790fd5b4dc2b2a38b204c6d1269', '10000000001347412343', '4', '5', '2019-03-09 18:05:22', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d661bf3f58a8483fb5125719b17144b2', '10000000001347412343', '4', '5', '2019-03-09 20:04:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d678241df1434c58a07a78e75cd417f2', '10000000001347412343', '4', '5', '2019-03-09 18:07:43', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d6a5914aad28421db470c9d7fa4b1548', '10000000001347412343', '4', '5', '2019-03-09 18:07:50', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d6d40b935bb244e2b2fed48cfddb2b2b', '10000000001347412343', '4', '5', '2019-03-09 18:04:00', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d71ce766f3a54e18be3ae9aea3694f08', '10000000001347412343', '4', '5', '2019-03-09 20:03:16', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d721282a8349454496225bdb7200476e', '10000000001347412343', '4', '5', '2019-03-09 20:02:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d745809bd3b84759a1dda4c0ff7d4509', '10000000001347412343', '4', '5', '2019-03-09 18:07:21', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d74ad1f8a0614141a4e48d0019990f47', '10000000001347412343', '4', '5', '2019-03-09 18:04:08', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d7778b08db5b4dbb841a54ae26071d25', '10000000001327412346', '1', '5', '2019-03-14 16:06:55', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('d7cdd8acb2b544e590e08a921fda6bd7', '10000000001347412343', '4', '5', '2019-03-09 20:01:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d7fdfdf7a33949848735a5b965088fc4', '10000000001347412343', '4', '5', '2019-03-09 20:02:25', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d862f2ba21e7460b853bf5f455a1413a', '10000000001347412343', '4', '5', '2019-03-09 20:07:40', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d8894faafa6e41c6b0ba7a120dfffb08', '10000000001347412343', '4', '5', '2019-03-09 20:03:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d8a44def028841db8d16bb3a8c319822', '10000000001347412343', '4', '5', '2019-03-09 20:00:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d8d25f12d210465bac6f9bdeb55cbfdb', '10000000001347412343', '4', '5', '2019-03-09 20:03:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d8d9f74942684dd298c4094eb4de6223', '10000000001347412343', '4', '5', '2019-03-09 18:06:50', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d909cefa60e54991a325af3764b2dea0', '10000000001347412343', '4', '5', '2019-03-09 18:07:06', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d90f399c49e04286b788cdbb1072c303', '10000000001347412343', '4', '5', '2019-03-09 18:05:44', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d91ed22b1fd141efa0da269b8090ceaa', '10000000001347412343', '4', '5', '2019-03-09 20:08:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d93abf98c9c049da872a70d6d1f9bf98', '10000000001327412341', '1', '5', '2019-03-09 18:03:58', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('d94f56a827574a5fb082f8f669f97e0b', '10000000001347412343', '4', '5', '2019-03-09 18:08:06', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d95306d04512448b9e0ba83bcbd37542', '10000000001347412343', '4', '5', '2019-03-09 20:01:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d97f1afc68494813bf0d47aa62f0552a', '10000000001347412343', '4', '5', '2019-03-09 20:03:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d98f24bc8fd245d58fed7ce3f1971dad', '10000000001347412343', '4', '5', '2019-03-09 20:04:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('d9c76f808aef462b8f6092cc27937017', '10000000001347412343', '4', '5', '2019-03-09 20:01:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('da5e763708fd4ed18936cfbf29e161d2', '10000000001347412343', '4', '5', '2019-03-09 20:01:55', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('daab964541bc47998faa53ffb32061af', '10000000001347412343', '4', '5', '2019-03-09 18:06:22', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('daacd9ee1a224e00b91d709bcaa9b78f', '10000000001347412343', '4', '5', '2019-03-09 18:08:58', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('dad65171ee5c4009ae5deb589cf73616', '10000000001347412343', '4', '5', '2019-03-09 20:02:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('daf88da2d348484faa1295fe26998d19', '10000000001347412343', '4', '5', '2019-03-09 18:09:13', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('db114d4f37454c5c9ea26dba1c8fa59e', '10000000001347412343', '4', '5', '2019-03-09 18:04:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('db47205648354c8db1d985518802458d', '10000000001347412343', '4', '5', '2019-03-09 20:01:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('db52ffbbacf04d90aa3951efee8c7e33', '10000000001347412343', '4', '5', '2019-03-09 20:00:46', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('db549760fb494b759655d1c37157239c', '10000000001347412343', '4', '5', '2019-03-09 18:07:21', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('db55305f93b94853853691e0b199cdbd', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 08:57:07', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('db91352cf98e4ef4bcc0d86b48792df9', '10000000001347412343', '4', '5', '2019-03-09 20:03:40', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('db9281e95ad7406db048404c8ce3edb1', '10000000001347412343', '4', '5', '2019-03-09 20:01:25', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('dbe389e72108457eae5b401d6d030c13', '10000000001347412343', '4', '5', '2019-03-09 18:07:05', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('dc027398bc6e4a9999a551da644ccdb4', '10000000001347412343', '4', '5', '2019-03-09 20:03:16', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('dc9181cf03504fc2b723732324917b1f', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:50:01', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('dca99f1bfc9a4339adf5df86562ed56b', '10000000001347412343', '4', '5', '2019-03-09 18:08:43', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('dcc6329c327d4a648c1cab9cada7b838', '10000000001347412343', '4', '5', '2019-03-09 18:05:38', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('dceb8f7619354c7eb5aa75611eb71a18', '10000000001347412343', '4', '5', '2019-03-09 18:04:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('dd060298d56b45e489e9bc6bb9f73f30', '10000000001347412343', '4', '5', '2019-03-09 20:07:55', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('dd33a227e06d46df9f117d8e6745f396', '10000000001347412343', '4', '5', '2019-03-09 18:06:00', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('dd51a207dd9f45e8bda4278a496cf30a', '10000000001347412343', '4', '5', '2019-03-09 20:02:31', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('dd99deaf4a2d43f888a21044b67c9e09', '10000000001347412343', '4', '5', '2019-03-09 18:04:23', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ddb084b946c84691958e61d26e37e3e9', '10000000001347412343', '4', '5', '2019-03-09 18:09:07', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ddd80dc75fe04ceba745776a07aef7e2', '10000000001347412343', '4', '5', '2019-03-09 20:03:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('de0f4fd3b35e44ce8ea5fa1ca6850611', '10000000001347412343', '4', '5', '2019-03-09 18:04:53', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('de7884bf26014053967b58feac40865a', '10000000001347412343', '4', '5', '2019-03-09 20:03:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('de915a4a21c04f9fa493f67a52b12279', '10000000001347412343', '4', '5', '2019-03-09 18:08:14', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('deb8d4a4155c4176a791304a9a617b1b', '10000000001347412343', '4', '5', '2019-03-09 18:03:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('dee7433b26c4410bb79371a0971f1737', '10000000001347412343', '4', '5', '2019-03-09 18:10:33', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('defd4b9f0cce4722bec2c3524dbef862', '10000000001327412346', '1', '5', '2019-03-14 16:04:06', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('df02a10252ef4cb5b911a59edf72a34e', '10000000001347412343', '4', '5', '2019-03-09 18:05:14', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('df18b44fb0d44f64aa8f3cc9ba791b36', '10000000001347412343', '4', '5', '2019-03-09 18:07:13', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('df1a50b7cb344074b910363587ac75bd', '10000000001347412343', '4', '5', '2019-03-09 18:05:30', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('df20e4b529014396a3d2966c29cdab79', '10000000001347412343', '4', '5', '2019-03-09 20:00:55', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('df31068b46ea4d67bef7d6794d63c77c', '10000000001347412343', '4', '5', '2019-03-09 18:04:16', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('df781458f7f14a61a8df2b0a258f6293', '10000000001347412343', '4', '5', '2019-03-09 18:09:36', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('df84fb33f5944f21b3876bf0ecc109b7', '10000000001347412343', '4', '5', '2019-03-09 20:00:40', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('df8513249088457eac97e835b4621945', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:54:35', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('dfafc929b5ef414bb3f250dbbc42c5f6', '10000000001347412343', '4', '5', '2019-03-09 20:02:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('dfd29f06de6f42949593eb7c0edea3c1', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:17:22', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('dfe6396578944f2887d6984f0ac38a44', '10000000001347412343', '4', '5', '2019-03-09 20:02:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('dfe95453199e4003acfc19c8d5948fac', '10000000001347412343', '4', '5', '2019-03-09 20:00:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('dff0920f6f07408cbcbb2ef9c3e3dd86', '10000000001347412343', '4', '5', '2019-03-09 18:08:06', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e01035ce9b1d47c481549a8e92a5b372', '10000000001347412343', '4', '5', '2019-03-09 18:06:14', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e014bf7a312a48f1a1f7fafd02335770', '10000000001347412343', '4', '5', '2019-03-09 20:04:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e090c39be52f4ae395364ef57933d05f', '10000000001327412345', '1', '5', '2019-03-14 16:28:33', 'description', null, null, '2', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e0cfe5b0cf394ebf9eba5237230ee0f2', '10000000001327412346', '1', '5', '2019-03-14 16:08:58', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('e0d9277a74144206aef54a3aad43cd85', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:13:09', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('e0f28551953c42309ab6fb9c516927ab', '10000000001347412343', '4', '5', '2019-03-09 18:08:29', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e113647993c34c87b24038c5c586ad2a', '10000000001347412343', '4', '5', '2019-03-09 20:03:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e1397d330d4f45d09a693f83b1978861', '10000000001347412343', '4', '5', '2019-03-09 18:04:00', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e1630ee5f823491a927c51cd88cd7937', '10000000001347412343', '4', '5', '2019-03-09 20:04:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e16887a44d164168bb2dca9bc5328423', '10000000001347412343', '4', '5', '2019-03-09 20:03:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e16a20af98644adbbf9c833fd8ea8b8a', '10000000001347412343', '4', '5', '2019-03-09 18:08:51', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e17bb9b0f87849dd9f0d559f52f90903', '10000000001347412343', '4', '5', '2019-03-09 18:07:36', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e18054434b83448a8fec7a63a1c0b8f2', '10000000001347412343', '4', '5', '2019-03-09 18:06:00', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e18b8a5b6af54c4fb94e7f50df816d06', '10000000001347412343', '4', '5', '2019-03-09 18:07:59', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e1a004b59bcd4d8eadc4371142c200db', '10000000001347412343', '4', '5', '2019-03-09 18:06:50', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e1b7cfa6102d4253afbf58cf9405b122', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:20:30', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('e1e2d3057ab54757a48058c785cd4ba6', '10000000001347412343', '4', '5', '2019-03-09 20:04:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e2109ca49fba45f6b999ebaa4922a41c', '10000000001347412343', '4', '5', '2019-03-09 20:04:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e25d236e872b43f28276b0910901cbd8', '10000000001347412343', '4', '5', '2019-03-09 20:03:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e28768eb9a684459b99a06c92acbdb69', '10000000001347412343', '4', '5', '2019-03-09 20:04:38', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e28a95ca0abc466ba85e9810b697ffb4', '10000000001347412343', '4', '5', '2019-03-09 20:02:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e28d049f3ba945628a1eb02e693ee629', '10000000001347412343', '4', '5', '2019-03-09 18:10:26', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e2a4fa4325fe4b6199bddf90ff7f5940', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:08:27', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('e2b2482704fa480db277ccddfd3a03b8', '10000000001347412343', '4', '5', '2019-03-09 18:05:22', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e33cb4d333d5435a8ff10911a6635d98', '10000000001347412343', '4', '5', '2019-03-09 20:07:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e35ac8c82d86437f9db1da81428b44ab', '10000000001347412343', '4', '5', '2019-03-09 18:06:43', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e385f54bd5e7456b9a8284a1f19b05cc', '10000000001347412343', '4', '5', '2019-03-09 20:07:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e3870e469317431aa3b565a403f36e7c', '10000000001347412343', '4', '5', '2019-03-09 20:02:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e3b72518af4d4fb698ef63c18125ec72', '10000000001347412343', '4', '5', '2019-03-09 20:02:55', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e4049d29df3b47f2a442d92f678f358e', '10000000001347412343', '4', '5', '2019-03-09 20:03:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e4083b43f4eb4534a34009f2ba8a34e3', '10000000001347412343', '4', '5', '2019-03-09 18:09:15', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e41ecfda458c4a47b45fe417439da062', '10000000001347412343', '4', '5', '2019-03-09 18:10:26', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e42c0594b64946a2855f5e784b6c0a67', '10000000001347412343', '4', '5', '2019-03-09 20:04:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e43f3a553ee2479082eb89fd35943ac2', '10000000001347412343', '4', '5', '2019-03-09 18:07:20', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e443bac39dd1426c85f52b509576e877', '10000000001347412343', '4', '5', '2019-03-09 20:02:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e44f0d44f95b4b4abd44f98c74e210aa', '10000000001347412343', '4', '5', '2019-03-09 20:03:16', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e4704a92b882449ebd77ebcd6d3f7e4a', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:23:43', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('e4738ac27d0c41cab19c282c6b6758c6', '10000000001347412343', '4', '5', '2019-03-09 18:07:59', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e4924f82069b4845af38b88f1f11ac97', '10000000001347412343', '4', '5', '2019-03-09 20:00:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e4b0b1174c8642b88db83d0aa25aaa04', '10000000001347412343', '4', '5', '2019-03-09 20:01:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e4c65302524546db8d81a61f68fe1704', '10000000001347412343', '4', '5', '2019-03-09 20:08:16', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e4cc0c11700d4c85affe340e829a3dc9', '10000000001347412343', '4', '5', '2019-03-09 20:07:18', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e4cdb53ac3f546368d0945d1c272c5d1', '10000000001347412343', '4', '5', '2019-03-09 18:04:15', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e4dbbba024d14bdd9adbc343317d52ea', '10000000001347412343', '4', '5', '2019-03-09 20:04:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e507b325329b4ac29c66fbbe36054642', '10000000001347412343', '4', '5', '2019-03-09 18:09:22', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e53234175d254a5f8f40aec23da698d9', '10000000001347412343', '4', '5', '2019-03-09 18:04:38', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e569e02cc4bf462e8b137f020e098cdf', '10000000001327412346', '1', '5', '2019-03-14 16:06:23', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('e58330550fce42c8bd5873d8bfe28ac0', '10000000001347412343', '4', '5', '2019-03-09 20:04:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e5883fab7c04487e9d53cc076450fe5c', '10000000001347412343', '4', '5', '2019-03-09 18:04:38', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e59bc55995794a6f8ca616e9d7bc4d0f', '10000000001347412343', '4', '5', '2019-03-09 20:01:40', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e5b51c5cd34340a794f9c43eb0ea7a2f', '10000000001347412343', '4', '5', '2019-03-09 20:04:31', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e5c0b9dc079d45e2a2de1e02253f3cc2', '10000000001347412343', '4', '5', '2019-03-09 20:07:40', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e5cfc559f1794c6691f831d5bdf77897', '10000000001347412343', '4', '5', '2019-03-09 20:02:25', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e5fc19f6e4ca4257ba864e6c8e4afaaf', '10000000001347412343', '4', '5', '2019-03-09 20:07:18', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e60ec5ff78014c9fa6bc55bcafdfce3f', '10000000001347412343', '4', '5', '2019-03-09 20:01:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e635b826f5b44303b28ae2a25c80bb0e', '10000000001347412343', '4', '5', '2019-03-09 20:03:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e64c79b37aea4b3e8fa1c5f002cf60da', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:04:34', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('e654467a0ea746efb9907d2544a03543', '10000000001347412343', '4', '5', '2019-03-09 20:04:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e65b47e4988045d68cb9ade2467456d2', '10000000001347412343', '4', '5', '2019-03-09 18:04:01', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e661799716134fb6a640d630be244db0', '10000000001347412343', '4', '5', '2019-03-09 18:04:53', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e66d8ef73ab148958e66cdb89dc7a7ad', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 10:00:46', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('e6819a0499034f81994cb7d86060c308', '10000000001347412343', '4', '5', '2019-03-09 20:00:55', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e6ad8eba8d804cc5b52531ee8c60581f', '10000000001347412343', '4', '5', '2019-03-09 20:00:40', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e6d1d4363b7e4001b6bb908cbc0dddb8', '10000000001347412343', '4', '5', '2019-03-09 20:01:16', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e6e7c63271c245e5b0f680b9dd45757b', '10000000001347412343', '4', '5', '2019-03-09 18:07:36', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e70a7f3bdbc1463aa14305c947821f0a', '10000000001347412343', '4', '5', '2019-03-09 18:07:44', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e71c8f042d304b25abf1e0d4cdab9a71', '10000000001347412343', '4', '5', '2019-03-09 20:04:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e7282d27f5e84a71a7aa52dea8cd2a3f', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 08:52:57', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('e764339dc1fd400daa23c7c9efda814d', '10000000001347412343', '4', '5', '2019-03-09 20:01:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e7b809d075034d1ca82701a6b23c1579', '10000000001327412346', '1', '5', '2019-03-14 15:52:07', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('e7c27d4e942a4cbfb1fd408a01defc4f', '10000000001327412345', '1', '5', '2019-03-14 16:29:22', 'description', null, null, '2', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e7c2b09e7797412a897a36af1795a157', '10000000001347412343', '4', '5', '2019-03-09 20:01:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e831a016ede94423a174c820b5dad179', '10000000001347412343', '4', '5', '2019-03-09 18:08:21', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e88bbd395911422fb035257ee6ca5c12', '10000000001347412343', '4', '5', '2019-03-09 18:04:23', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e8e6c90a07c940cf9cf6c70f335799a4', '10000000001347412343', '4', '5', '2019-03-09 18:08:51', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e91ac66e9d2d4ab7acff41539f76a5e4', '10000000001347412343', '4', '5', '2019-03-09 18:06:08', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e977b7f511044bec8f51c3e5dd3596f5', '10000000001347412343', '4', '5', '2019-03-09 20:03:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e988cf7dfc6848629c52392aba939371', '10000000001347412343', '4', '5', '2019-03-09 18:07:13', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e9d870a3e5244ff9be32a8950597bfd0', '10000000001347412343', '4', '5', '2019-03-09 20:02:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e9f201f27dfd426397d13f2bbab77ccf', '10000000001347412343', '4', '5', '2019-03-09 18:04:53', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('e9fc03f6c1204a3fb29973e7d146bf16', '10000000001347412343', '4', '5', '2019-03-09 18:10:33', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ea011e565614478bb292f59fe7a7bc4f', '10000000001347412343', '4', '5', '2019-03-09 18:09:07', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ea06e3832dcf4ca78cf55ac88f73693b', '10000000001347412343', '4', '5', '2019-03-09 18:09:22', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ea87f4c121e945b9a2fc05c6b08ef112', '10000000001347412343', '4', '5', '2019-03-09 18:04:16', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ea8f836310ae40c6a9e3c8439229e266', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:40:25', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('eaa1bcebd1764ea0a65a5bb65aabfef9', '10000000001347412343', '4', '5', '2019-03-09 18:06:15', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('eaa993aac72243b69724f2a4169f1cc6', '10000000001347412343', '4', '5', '2019-03-09 18:08:36', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('eabb66f153a64bf19bff701e3f045809', '10000000001347412343', '4', '5', '2019-03-09 18:03:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('eac66688d23540d2afb3d2093d28416b', '10000000001347412343', '4', '5', '2019-03-09 18:08:13', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('eaf378a1f6404d3999a089c4b86d6bea', '10000000001347412343', '4', '5', '2019-03-09 18:04:16', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('eb0e2430120e44f092e6a4abd3abaf1c', '10000000001347412343', '4', '5', '2019-03-09 18:07:58', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('eb134215e8e948c8b0d7e0b093913f54', '10000000001347412343', '4', '5', '2019-03-09 18:04:53', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('eb1acd0c6577487eb900b6df5d84749c', '10000000001347412343', '4', '5', '2019-03-09 20:03:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('eb4cd3bc88de4d0aabc8e54f227d560d', '10000000001347412343', '4', '5', '2019-03-09 18:04:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('eb8bd847c1034937be77f533957f545f', '10000000001347412343', '4', '5', '2019-03-09 18:05:44', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('eba562645e2a4da58487fe2580770d63', '10000000001347412343', '4', '5', '2019-03-09 18:10:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ebca89ab81554310913b66b8e387fd52', '10000000001347412343', '4', '5', '2019-03-09 18:05:21', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ebdcd0bd091d4316b29a33b0387ad353', '10000000001327412345', '1', '5', '2019-03-14 16:29:37', 'description', null, null, '2', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ebfc524470b5435aac8931372cfc70b6', '10000000001347412343', '4', '5', '2019-03-09 18:04:46', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ec0ae668b2474120b596c8316ed9b291', '10000000001347412343', '4', '5', '2019-03-09 18:10:25', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ec110dabca9b425e83a4e515cc5c12e2', '10000000001347412343', '4', '5', '2019-03-09 20:02:16', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ec4262f4d855419293e3fef35b0e222d', '10000000001347412343', '4', '5', '2019-03-09 18:07:06', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ec522fe4e59c4e43aef9c05fb4ea4de5', '10000000001347412343', '4', '5', '2019-03-09 18:06:22', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ec87bc554aea45078631a1cca41c7ac9', '10000000001347412343', '4', '5', '2019-03-09 18:07:28', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('eca17fcc3c26425182612a6076bf445a', '10000000001347412343', '4', '5', '2019-03-09 20:02:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ecc5540abfd747798746ab13c9a67b2c', '10000000001347412343', '4', '5', '2019-03-09 18:10:18', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ecd6cc67195f4191a616dad8d28e4e65', '10000000001347412343', '4', '5', '2019-03-09 18:08:37', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ecdc83127286493d9427334b7f265b6c', '10000000001347412343', '4', '5', '2019-03-09 18:06:50', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ecffe8d6266f457b9510ddab1557aff8', '10000000001347412343', '4', '5', '2019-03-09 18:08:21', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ed103f90a0f44e41823eda7d5de22adf', '10000000001347412343', '4', '5', '2019-03-09 20:07:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ed1210c30ca5492b872a7d2d1bd8cb5b', '10000000001347412343', '4', '5', '2019-03-09 20:07:25', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ed1880d3a3f946ddbe9f418aa3bab7d2', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 08:44:48', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('ed289098a35e4d5292201e753bac1557', '10000000001347412343', '4', '5', '2019-03-09 20:02:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ed54ede490254a09963a94f1491ce3fc', '10000000001347412343', '4', '5', '2019-03-09 18:04:01', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('edcab6c1b0ce41b0bf22575abd094304', '10000000001327412346', '1', '5', '2019-03-14 14:44:58', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('edcfe6fbf10f4b3685caf6644cfda724', '10000000001347412343', '4', '5', '2019-03-09 18:09:36', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ee10dcfccbc24004baa1a5f61403b4ea', '10000000001347412343', '4', '5', '2019-03-09 18:08:21', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ee27beb4019049f8be4d431f7ccda375', '10000000001347412343', '4', '5', '2019-03-09 18:03:53', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ee722c9fffb545a3926df4e9461b3a18', '10000000001347412343', '4', '5', '2019-03-09 20:01:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('eedc915eb634451c8096bce8b39896d6', '10000000001347412343', '4', '5', '2019-03-09 20:07:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ef09e6ecbe9b4ed295b75e0991db1ce4', '10000000001347412343', '4', '5', '2019-03-09 18:06:07', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ef510ad60d9b4391b93b82b45346063f', '10000000001347412343', '4', '5', '2019-03-09 18:04:31', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ef920e960a4b42b9a028cbb4556c2a80', '10000000001347412343', '4', '5', '2019-03-09 20:02:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('efb112e95d5e4a24a4411f8dd3075ec9', '10000000001347412343', '4', '5', '2019-03-09 18:07:13', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('efb58a7089274cb7b761b82bb1437a7e', '10000000001347412343', '4', '5', '2019-03-09 18:05:23', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('efc3b67b6a2c471789276ff62ff7f732', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 08:59:12', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('efcdf1170d6c457896ff8d5e3542ba6a', '10000000001347412343', '4', '5', '2019-03-09 18:06:23', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('efe429d7d6324db8a649d534048d9581', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-14 16:35:48', 'description', null, null, '2', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f025709d8f2e4a09b7cd4038d7712e64', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:07:56', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('f0282465cce74875adb5f606133fad09', '10000000001347412343', '4', '5', '2019-03-09 18:08:22', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f08d0ab8e41b4f08923bb0470dadb4ac', '10000000001347412343', '4', '5', '2019-03-09 20:04:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f0a19ed4ae4a4ad991bd4a87371d39b1', '10000000001347412343', '4', '5', '2019-03-09 20:01:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f0ac3c67f91e441abbdce3792cc3450d', '10000000001347412343', '4', '5', '2019-03-09 18:04:31', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f0c9fa368c9d4d0782786252d75d00f1', '10000000001347412343', '4', '5', '2019-03-09 20:04:25', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f117dd24bf9b4265a5b456fed35709ca', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 10:01:48', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('f128bc79866843389977e96847d7999c', '10000000001347412343', '4', '5', '2019-03-09 20:04:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f1bdd54e26504b40adf822b2e47fb0fb', '10000000001347412343', '4', '5', '2019-03-09 18:04:08', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f1c70f7178dd42eca0dfbe2de4b09119', '10000000001347412343', '4', '5', '2019-03-09 20:00:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f2145435d5934eb98d13912e2cd0eaee', '10000000001347412343', '4', '5', '2019-03-09 20:04:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f26d2d2f584e40b18a77892c4c257ceb', '10000000001327412345', '1', '5', '2019-03-14 16:29:57', 'description', null, null, '2', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f297944e0dcb4c8d85405aecfd3ea1c5', '10000000001347412343', '4', '5', '2019-03-09 18:04:38', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f2b08f8f9ffd4ff2a860e05b3a9e72f3', '10000000001347412343', '4', '5', '2019-03-09 20:04:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f2fa4cba41264185a24fa39f1db6bf3a', '10000000001347412343', '4', '5', '2019-03-09 18:07:12', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f37cf088759841e282f789598d8e9e2e', '10000000001347412343', '4', '5', '2019-03-09 18:10:18', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f3b32989e01b48daa7a259ff319f293f', '10000000001347412343', '4', '5', '2019-03-09 18:06:00', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f3d6cea03b854446a8160cf4b91632cb', '10000000001347412343', '4', '5', '2019-03-09 18:06:00', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f43326dd461d47768173670743efa577', '10000000001347412343', '4', '5', '2019-03-09 18:06:58', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f43e5207d7db46fb938aff1ba9e08c9d', '10000000001347412343', '4', '5', '2019-03-09 20:02:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f474b408c851419d8465a137e35007c7', '10000000001347412343', '4', '5', '2019-03-09 18:04:16', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f49737b0c3ab413f968398412f20bb46', '10000000001347412343', '4', '5', '2019-03-09 18:05:45', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f49f5a16325d4ae4a54d0000fd5942a7', '10000000001347412343', '4', '5', '2019-03-09 20:01:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f4e8069a5017476a8d3033a33c7d0096', '10000000001347412343', '4', '5', '2019-03-09 18:04:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f4f9979381464fea97c707ed340b0466', '10000000001347412343', '4', '5', '2019-03-09 18:05:52', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f4fce845666e4a9c9d772da4bcc2f8ad', '10000000001347412343', '4', '5', '2019-03-09 20:05:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f51769a12d804e45b6e5422296a49580', '10000000001347412343', '4', '5', '2019-03-09 18:09:14', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f552d9a4d6d84d08842c0e310176cb78', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:01:27', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('f55e9f6f51974948bde4bcf21dd643bf', '10000000001347412343', '4', '5', '2019-03-09 18:07:57', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f57a08f48c5d428690bf81db8d3e8766', '10000000001347412343', '4', '5', '2019-03-09 18:05:15', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f58ccbeb104144fdb93a1f2751ec67a1', '10000000001347412343', '4', '5', '2019-03-09 20:07:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f5a03b7a6f52401da44d6b696fcdce64', '10000000001347412343', '4', '5', '2019-03-09 18:07:13', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f5a72fb5275e4660ba0796271c0116d8', '10000000001347412343', '4', '5', '2019-03-09 18:08:13', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f5cbe311e10a4754a7525fcb4eef5b92', '10000000001347412343', '4', '5', '2019-03-09 18:04:08', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f5d67ce1f8834427ba48e795be594577', '10000000001327412346', '1', '5', '2019-03-14 14:44:27', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('f5de77ed8b8c42eb96f858681bfc2160', '10000000001347412343', '4', '5', '2019-03-09 18:05:14', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f5edf821d1244695bc093a9d6e6c690a', '10000000001347412343', '4', '5', '2019-03-09 18:10:18', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f624dce19a4d459e85e5bbf788f5ee13', '10000000001347412343', '4', '5', '2019-03-09 18:08:51', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f634812bcdaf48e2a979b46811c47a7d', '10000000001347412343', '4', '5', '2019-03-09 20:02:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f6559dfbb18242548c912e3061a6ade3', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:15:17', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('f68ac02a03714df68ada7137ae5c6579', '10000000001347412343', '4', '5', '2019-03-09 20:02:46', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f6ad378a4d92495b976e850f9f23879a', '10000000001347412343', '4', '5', '2019-03-09 20:08:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f6cff90eadf54e8fb89567aba4eafb63', '10000000001347412343', '4', '5', '2019-03-09 20:02:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f7040e621eb04b80aafc79d7ea34e865', '10000000001347412343', '4', '5', '2019-03-09 20:07:18', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f7755ad413e24509be1a972a6f3581b9', '10000000001347412343', '4', '5', '2019-03-09 18:04:01', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f7bbbcb694f24bdb9a8de5beabae8666', '10000000001347412343', '4', '5', '2019-03-09 18:09:37', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f7bdffb152c14331bec0c0700a4e0f62', '10000000001347412343', '4', '5', '2019-03-09 20:08:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f7f8cbfc092647058a76c808d1c70776', '10000000001347412343', '4', '5', '2019-03-09 20:03:31', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f809a33e035c467ba5c4d968e1d03bb6', '10000000001347412343', '4', '5', '2019-03-09 18:04:16', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f80cec60aa674717ae8e8d2c21f74c50', '10000000001347412343', '4', '5', '2019-03-09 20:03:31', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f81f99469dc54c5c83afdd7969034ec5', '10000000001347412343', '4', '5', '2019-03-09 18:04:30', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f824c962f5e2472d937ada10c3ca6174', '10000000001347412343', '4', '5', '2019-03-09 20:00:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f831ea347bed4b19a3bd3220d7f91b8e', '10000000001347412343', '4', '5', '2019-03-09 20:00:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f847675317484c54aff9ff0b8b5e0d20', '10000000001347412343', '4', '5', '2019-03-09 20:04:16', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f87a17e100264084a5131a4ce8b881d5', '10000000001347412343', '4', '5', '2019-03-09 20:07:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f87c55ec542c4028aeffcca1408727f0', '10000000001347412343', '4', '5', '2019-03-09 18:06:50', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f910da46db794eaf8236cab93f008052', '10000000001347412343', '4', '5', '2019-03-09 20:02:16', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f9307901b8b74769ae7ed85f650fbb27', '10000000001347412343', '4', '5', '2019-03-09 18:10:25', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f95b15b8621b403b879d44f97ad5682d', '10000000001347412343', '4', '5', '2019-03-09 20:00:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f991823a9f9a4df8b8c371d2e0082fee', '10000000001347412343', '4', '5', '2019-03-09 20:04:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f9970803b73841a7a119ee02c51266d8', '10000000001347412343', '4', '5', '2019-03-09 18:10:25', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f9a4bbfb3134474293676ab3c380594c', '10000000001347412343', '4', '5', '2019-03-09 18:10:25', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f9a9fae7adaf4562824abc44fc5dc399', '10000000001347412343', '4', '5', '2019-03-09 18:10:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f9b1d272319f49ec950f6c0c638cafaa', '10000000001347412343', '4', '5', '2019-03-09 20:02:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f9bf2aeeca624b67b752c662639b6727', '10000000001327412341', '1', '5', '2019-03-09 18:05:06', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('f9c35b180d664163a4e51b9edff71006', '10000000001347412343', '4', '5', '2019-03-09 20:08:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('f9ea4be977c34c17a6c938fa64516687', '10000000001347412343', '4', '5', '2019-03-09 20:01:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('fa1f0419bc614618881ed88ec3b1f016', '10000000001347412343', '4', '5', '2019-03-09 18:10:11', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('fa252e9c12d447e8a460001b26ebfab3', '10000000001347412343', '4', '5', '2019-03-09 18:03:53', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('fa7867a968ae4c50ad55989d3d039652', '10000000001347412343', '4', '5', '2019-03-09 18:09:21', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('faaa2cbffc934a08af74b09387135ff0', '10000000001347412343', '4', '5', '2019-03-09 18:08:59', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('fab43bf2d35d49b9b66d4eb0e2782f49', '10000000001347412343', '4', '5', '2019-03-09 20:04:01', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('fac24859a3d44886a0b7ff19bae3647f', '10000000001347412343', '4', '5', '2019-03-09 18:08:20', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('fae64beb5650454482caa3845280882b', '10000000001347412343', '4', '5', '2019-03-09 20:01:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('faea61b1fd4b4645976d44c3ddabf8bc', '10000000001347412343', '4', '5', '2019-03-09 18:05:59', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('fb0184ad25d94185b69e00e6f0fa64ab', '10000000001347412343', '4', '5', '2019-03-09 20:02:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('fb04968cafce490aade411606f2a2b56', '10000000001347412343', '4', '5', '2019-03-09 18:10:25', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('fb1a8ec51e4447c79646c8bdbe882611', '10000000001347412343', '4', '5', '2019-03-09 20:02:32', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('fb621106d9c54658ab64b6894b8c62cb', '10000000001347412343', '4', '5', '2019-03-09 20:01:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('fb8381ae74164972ae495240b6651878', '10000000001347412343', '4', '5', '2019-03-09 20:03:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('fbc412e5e1c5406d9e0cd4bcf9aaa3c3', '10000000001347412343', '4', '5', '2019-03-09 18:06:51', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('fbc98be5937940fcadeaf14b4f450540', '10000000001347412343', '4', '5', '2019-03-09 18:04:24', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('fbd7e97d40a64daab139d1b12b70e25e', '10000000001347412343', '4', '5', '2019-03-09 20:01:17', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('fc1967206d004705859c59a563447e48', '10000000001347412343', '4', '5', '2019-03-09 20:01:55', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('fc4643ecfb5e4c55878db15688c8576d', '10000000001347412343', '4', '5', '2019-03-09 18:05:53', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('fc5a2741eb9e49b1b3048c6532e7b031', '10000000001347412343', '4', '5', '2019-03-09 20:07:47', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('fc76b73f752c4b469c924be66801453b', '10000000001347412343', '4', '5', '2019-03-09 20:04:09', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('fcc2895ad1e446fcab3f626e1dba7e49', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:56:23', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('fcc44d8a48184c41a82191e0c1a5ce19', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 10:02:19', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('fd6e905de22a47ef9bb2e3b29f65e335', '10000000001347412343', '4', '5', '2019-03-09 20:08:16', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('fd8077e899614c2caff3e7b157bc14f0', '10000000001347412343', '4', '5', '2019-03-09 20:05:01', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('fd8ee45b75ad410db77b40b08013542e', '10000000001347412343', '4', '5', '2019-03-09 20:03:38', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('fde94d40a08d4599be9e3948fe08f19f', '10000000001347412343', '4', '5', '2019-03-09 18:07:35', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('fdeba864d9c34fed80a5390d5f440dd9', '10000000001347412343', '4', '5', '2019-03-09 18:06:08', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('fe077282f30945f9ac39252221815a2e', '10000000001347412343', '4', '5', '2019-03-09 18:08:43', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('fe0d69ff99e04a5db94daffe5296d045', '10000000001347412343', '4', '5', '2019-03-09 20:01:55', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('fe153b2284fa44dca8e13281e3886c7e', '10000000001347412343', '4', '5', '2019-03-09 18:08:06', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('fe74a5418ea9465a9a630a8f35b3fd9e', '10000000001347412343', '4', '5', '2019-03-09 20:01:39', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('feacfd86ce38402292a64f1f90587496', '10000000001347412343', '4', '5', '2019-03-09 20:05:01', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('feb4fa9ed5064af09a622d69b3ea45f9', '10000000001347412343', '4', '5', '2019-03-09 20:01:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('feeefafab99d4548ad0b9502f6651e90', '10000000001347412343', '4', '5', '2019-03-09 18:10:25', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ff40448c314b4cb89c0128217983d676', '10000000001347412343', '4', '5', '2019-03-09 20:00:54', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ff42d899d57d4fb9be9abbec73cc0d29', '10000000001327412345,10000000001327412346', '1', '5', '2019-03-18 09:36:18', 'alarm', '0', '0', '2', '1', '1');
INSERT INTO `tbl_alarm_event` VALUES ('ff667423b8a541479a6151332906fb85', '10000000001347412343', '4', '5', '2019-03-09 18:09:00', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ffcb2f9817d3459b8041765456279080', '10000000001347412343', '4', '5', '2019-03-09 20:01:02', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('ffdd33c8593e495ca35e339d98d54104', '10000000001347412343', '4', '5', '2019-03-09 18:07:43', '', null, null, '4', null, null);
INSERT INTO `tbl_alarm_event` VALUES ('fff447929dd443a595deaa004df5da05', '10000000001347412343', '4', '5', '2019-03-09 18:06:15', '', null, null, '4', null, null);

-- ----------------------------
-- Table structure for `tbl_alarm_linkage`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_alarm_linkage`;
CREATE TABLE `tbl_alarm_linkage` (
  `Id` int(32) NOT NULL AUTO_INCREMENT,
  `Alarm_event_name` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `Deviceid` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `Input_channel` int(11) DEFAULT NULL,
  `AlarmMethod` int(11) DEFAULT NULL,
  `AlarmType` int(11) DEFAULT NULL,
  `Notified_person` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `Linkage_Method` int(11) DEFAULT NULL,
  `Linkage_Camera` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `Linkage_Info` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of tbl_alarm_linkage
-- ----------------------------
INSERT INTO `tbl_alarm_linkage` VALUES ('44', '报警测试2', '10000000001327412346', '1', '5', '2', 'admin', '1', '44', '{\"ctrlval\":\"-1\",\"duration\":\"-1\"}');

-- ----------------------------
-- Table structure for `tbl_alarm_notice`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_alarm_notice`;
CREATE TABLE `tbl_alarm_notice` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `event_id` varchar(32) DEFAULT NULL,
  `link_id` varchar(32) DEFAULT NULL,
  `notify_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `link_method` int(10) DEFAULT NULL,
  `status` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_alarm_notice
-- ----------------------------
INSERT INTO `tbl_alarm_notice` VALUES ('00049a04c0384edfad0c1cae86483ad7', '22db33eb63d442d1bdffcecb3afc29f8', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('000c227320274343b57ef1c60882bf4d', 'b8e8f97e5a42442ea8d9996b90f0891d', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0021bbe4522a47b981a4e6964b2e0728', 'f1c70f7178dd42eca0dfbe2de4b09119', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('007ddaed37e249e6a86680b57f0b685e', '18db1c7bca5445cb9c087e221ba2706d', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('009ffe50b064493e8ca92bdc1a9cdd35', '555e19564b554a9abe70211355e61808', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('00a819796f5a422b9c0f1cd3f71aa871', 'e988cf7dfc6848629c52392aba939371', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('00c8b87802264c388a4225fe9a0ae1ec', '91d41636d46f41108d6991e65f1f329b', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('01532d8387dc4d70b83b1ce67231e07b', '9012f5b838c045cca5556e86d6962636', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('015f434454434d60b6b5fde83d1e85a9', '91697d931d024b9ba33aabf0f3112388', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0161bc87a38e4127b7add66389e0272f', 'eb0e2430120e44f092e6a4abd3abaf1c', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0174a93398964e759d93ce439fe1fdf1', '3ef114846c20441b86aa4c0c27e6b080', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('02168652404a456295edd84b92c36e62', '06cd2ddbeef64db9ac2fa069bf7e6c66', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('02201af99b544cbc8917b199d7d6ac85', '65dfa92bf33b45cda5ce5b6a584ecb03', '42', '系统默认', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0234c04fdf874642902f6f2110bbfc0a', '50fa042c5ec34be184c4f1ac58d26015', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0293bb6595df4387a5f63ffce6354b48', '1b6154d04fdd41a4afda1f4712327093', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('02eb324c1703432ca93f2ed6dc47a24a', '7f2ce96602fe408fa6e2a6ad8f15db0e', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0304c750d5e047c5a77c649ae54a2edb', '0d650b62d93544138e2cdbd0a7e566e9', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('033129740a7943a98e9e66d92d9e4161', '0d276dad53084118a4ec1770f8ee406b', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('039eb6e415c843a99af3764ed4e2bc9d', '9c9e1856684e4c16b97a7504a9c7b1db', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('03b966d022d842068ee4ea861d0f6cc7', 'f37cf088759841e282f789598d8e9e2e', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('03e5f3578c844379a4784a023b8df5f2', '9b9f2b5e80354042b0ba41f4aa06997a', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0486316edbd44d2d99e268d3d4be5b11', '16a99252ad08419eb1b3e527bd88b50c', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('04b78e9638be468fb5928d44eb8a2dda', '57282f571d9e44c7af8f499f7f6d2ead', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('04c058551d974c489886f76131150b5d', '75345ac37b0a4bdeac5c7921eba8bedb', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('04cbc751be334cccab0963e470434be9', 'cf8adb18c49a43b5940a96dc1f4ed56f', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('050d7ebd87f945cfb0aabafbec9aeec2', '1386585e333e4a5da6da22f596551eae', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0513fccffa644c5790fc8fa8880507c6', 'aadbbe3cf6164e04a4836a5814c0a961', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0521dd6427f245a0bae936a216b3e202', 'b16509dae0b1462993e823d73c028833', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0523373d3a01473db092f189dd8c2ae3', 'd35807bbc53d44909c3ff798986bff6c', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0550053070bd4c10bf29102ccec6bcad', 'feacfd86ce38402292a64f1f90587496', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('055e36f799b545d2b2a0441b1bda3ba4', '0f90b2c22bb74a118ca6a4af69eab49b', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('055f458cf336490d88aef5cf5fd3e4b9', '4dd06b92796e4ff3bce2d6cb130c8d1b', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('056a3d56a4d349279fea6be1b9f27732', '3958f8d26c2646bb921066ae6de49957', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0572714f6d4346e38fe5ea5dfd498ab3', '0b76d01ef5e648009ff96ac326f8ed12', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('05a0042bfaf742348534d6acdaec7b5b', 'be76b1cba9e448cab465fec8761d828d', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('05b64426743a4d84bd1a7380892c9f33', '43591fc9406148a395bd87e57133d4c2', '43', 'admin', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('05b79eecb56d42089643b1901b3cda9d', '319e04a2e796484bbafcef8cc689a86d', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('05ca863b2a3a49b588b119b253c7f251', '5a3c0dd99bb44191889817436f347503', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('05d0ec76a91b4e0ca427571db737f889', '1931eaf1704c4d2a8927b1eaf46db83b', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('05d9972e8769432998ba72912eb14ab5', '3561474ac8ae4f0a90aebd77c1385469', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('05e7d3d4937a4da0a843d7d507a3f32f', 'c1255c5981244b6aa7d2cb17d567ebe1', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0604d349a08f42788cfcb0fcde9fb3c4', '6d4f976722a046a0902eb1695ba0a13c', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0646c2b811ec4d39aaf257f6adf50481', 'bd91dab6e65246a29f9a705d39052bbc', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('066a3c985e9a49cfbcada0d43b147e20', '1c796e8469cf49cf97a3517fa189878e', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('06aa7d735c5947c5b435ab03fabea63c', 'e6819a0499034f81994cb7d86060c308', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('06b0e003cda74103abbc3318d8485d08', 'e569e02cc4bf462e8b137f020e098cdf', '43', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('06bbdfdfc48b4496b8c5c1f119c393c2', '919176f6fd3e4893a470c53573aea2ac', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('06e03d5de865476b83389e41160a2e47', '9bfdeadf545a40598fcf610de72d8a4e', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('06e07eee87d645fc97da4b2c0c42d1e6', 'd11639c8a4e54089a4f8af8e14d149e5', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0717e5de01364d43bd5ff8227fb937b0', '1aee0e0dd9ce4db9bb327c62c0192923', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('075621ab97af452b897a8aa7b45d015e', '3addeecd286442de87c568cabd943bad', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('07613cfe32734752930125310e2b90e8', '73d2924beeb44ffaadc71147c6c5ac63', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('07b03c78de1241d0a353e3ead71ad0f1', '52e20bac3166474586cb888bb98ae26a', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('07ce61ba831549d19142bc267a2fe7f8', '05e406f5a5f8451c88af19d4f7cf83b9', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('07cee2705ae04d26a22c64c99bf31b29', 'e1e2d3057ab54757a48058c785cd4ba6', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('07ddcc7978d3417f9381b4424b40bea0', 'eca17fcc3c26425182612a6076bf445a', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('08408fe49a9f4812a4d8453613710eaa', '66c51c12cfc5401d8f891e31f0924885', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('08510930784a43ff89eb121993b3f5b0', '1669ec4963304c9fb51a58ea77738637', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0879b3cf45a840039a745b51fe583ac6', '92621f192fc64ae59d0b8624b96c951b', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('08b691e173944aa69b79558bb4727779', 'a2351ddaf62e4e8a984d9dbec70780ce', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0927c6fe68ad4ddeaaedd663a5be8c16', '1519ad5b2be9413dacb1d5ba298475e0', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('094190c2e6e24dddaf031a6374a40cfd', '7356dd69f1dc48ff84065401b3e88138', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('098e3caa91bb4fbb88f7606734156d34', 'a26e04130e474c9dbf8f1054f721ec54', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('09e02d7de3164cef81e6edc57867005e', '6f05a0731f7b42f8bef8a4a21762034c', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('09ee2cd8bbcb4547bce87470df837d0a', 'f1bdd54e26504b40adf822b2e47fb0fb', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('09f8e63c94da46a2b8addb98c7f8646d', 'bcb29fe8c72340099975f4d51680bc52', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0a19d7b3f683449cbbcf5d32f7086689', '15c414a26f0b4e7a8b0c3cf17f838c79', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0a29b2d45c15499d93625b2189f5b9d8', '3fcbfb5e810b448bb4befec4b05863e2', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0a3133a5324c4ec0a0491756a6903944', '51721a95aeac4dc2b6faad1aec541408', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0a64f579556d42d0ae1ceeade0373f0b', '4343982dd44f42b0ade318ec6f5429ab', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0aa2d5116ff0427e9eb14e6e720aace7', '20689bc999eb483dbb9587ebec1b3742', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0b0813699ada4dc1b41779955b0e400a', 'e4738ac27d0c41cab19c282c6b6758c6', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0b26efb1292d4800bb1ced9bee5f8dd1', '9568fcdf59f546db83374b3a8b658ef1', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0b3b0e41993b4ac3bfe3fda4bfb100c7', '95236461bb8c41aea3816bbd0d91d643', '43', 'admin', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0b702e9dd8bc411ab93845a10dad5676', 'a937d2ee00174e05a12af882b0ae70ed', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0b91a39769b64cee852d1718c92ec5c0', 'c39400f176ba467f83ab35b6358a1573', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0be37eccc4cb4d8f851c9a228a01d0af', '4928d770b0bc496c9554cb45a3357ccf', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0bfc8e9216d243a192ddc06eb421cf84', 'cb98f5139ea745b38fd5fc63f6ea819b', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0c13f4ab29224df29b305d5170d2d85e', '4c90b0681ec3405098645ff615242c72', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0cc108ddea8b405194874016f925b692', '1780876fc7d54f21a92a2452fbbed04d', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0ccf29494f1144c986cdb478c513ebba', '80b6ebe8fcd44b1b9493ed4810ffea9c', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0cf1ff4ab4164dc782b40a442519c28e', '23e537c181c243669d1e40a32959dd86', '43', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0cf4a1e514944d03b0e0e6885cf15baf', '5d8d82e089044163a9eeb60f553f70f4', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0d2591d26d1f4df9b7459fbe2210dbed', '460c6a7e34ff4c8f88c3f08a9c4777ec', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0d9454d2e1bf48f5bd137b84e5512b31', '04c667ed98f04d46887e2fd31e83657e', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0da3398cd85e4533bda6d6d20a1cb3c8', 'd74ad1f8a0614141a4e48d0019990f47', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0dbd8ffdcde4446fa7488542fe9eb533', '24dde8d8173c40b4aa538985e34e3133', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0de609bb0bac4a7c946aaa1bd510b8b7', '1b9c6d46e976410987cfd479924388fc', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0df1dcb033c24438992bd4c7e6a91eda', 'b1636fb9ff594fb88755eb0f9c16f03b', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0e0a073ab0b54b518f17c8d913c74fc1', '1b5deda3d38f4061b735ac3b7f6a22d8', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0e1578caf0b44409a44409e642eff3c9', '05a1065130734ce28a92e219e7aba47f', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0e3c83f7aa9a46809bebd7fd88e1cce3', 'f9c35b180d664163a4e51b9edff71006', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0e401c5a254c4c8bb71871ebcb9d009f', 'b98ce0594c3f4ea6b22e304606ca3a10', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0e7811eb695a429ba358966838780558', '0ded17ce1c0344a99258774ec0c56584', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0e8a2aba16654aff90d3d2ec42d4e091', 'b8102c8ada2c4815afd9004cb4a45952', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0eb8c3be08a54fd29f76c04593fce016', '86624c8bc7c549f68d2b6fc4e8029be8', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0ec6b52e27e9440287649a104e19c226', '93b1da459b804c808c06711dcdd8696e', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0eccebd9639049b49ae062ff1a0c52f2', '530f244855a54ed0a9291b29b414bd09', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0ed83f1aa5704b8d9cfa50b661f4f670', '3c1efac6a158457aa57ad4e9a49e98b7', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0f547dc312f54fe2af5b0b698e442b4d', 'b9b4d84973bd480f8f5fd43740a4443d', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0f5554c1126d45ad8244fe739ea2410e', 'ef09e6ecbe9b4ed295b75e0991db1ce4', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0f6e7dc160ba466c93f80467bf9ea732', 'baf05cb330474bf3aae4e7d11d36b899', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0fc69daa705249ac8842288b4f13dd5d', '5dac689320494d739ca47429fef01964', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0fe424bc1641454b9415e9deab4e5fb1', 'c9d6724e658a4d5caed21715565420ec', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('0fee3612ba1d4fd89afdbf8a7adaa049', '55f959fd5e8f478885be0f003ab19914', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1025149c71d94f1cafeca905b1a6ff22', 'a152cfab9b6a418c91dd94af3d3effda', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('105e22899f3a45f78e091d85114d8e68', '3013be2830c74629a07ae768121429ef', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('10930dd0784f4e8ab485ff625f0ab7af', 'b45ddf069b4a40138551986c399d6311', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('10aa1e15908b4bc3ad86c335422d54cd', '6caa917e060d48a096cec785154ef84e', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('10f088e52cda4d588f2c68e84831c150', 'cca91828e8e044db9100144c800ce3ce', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1115a6b318eb4dd59c8ef0e9d3953020', '937de2c046ad41a4b6f34361dc880b3c', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('112f00e061554902af30e9cf08c8d8e3', 'd862f2ba21e7460b853bf5f455a1413a', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('114eae7f52cd47f5bd993d0e381dba43', '2e783470777142879a105b800429e663', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('115d85529ee844a6acc3213606ac1ea8', '5d000622483d447c921b124122d0b474', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('117ed1320b6c4463b71bf5cfa6f7426c', '94030f3c0b7a44c99a106134c96d7b05', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1193e524c927472ca24fb0eceabc7542', '6d9d81c0936a445eb19590997982dfa5', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('11a72924b23443f5a2ccf1cc48758ef0', '1ea677668fbe44b18fbd25529c4c6ec9', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('11b25b51ed7a470c84910f5036ae639b', '00ca467b0d77440b9086ef1e7b16b3d1', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('11bb7402a0f24894ba0bade93fd43eea', '475513eae31f4ac589254e18d3865002', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('121a5af2c7f142a1a0f21740500274e7', '3ef4849704974d33b2cbefd33ccbffda', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('123b306e91944771a60632e492809795', '0a9909f61c1948688a88806de99da11a', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('12b084f9e49045aca19eb7dac6eee678', '288cae332bcf4d9da12b7d010fbe171d', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('12c912165ad846569f82bbdaf9739161', '73bbce55f5624ef4a05d1ad1bc0ffb2f', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('12cac08b7f5245c98c3844739cda1eb9', '7266b85c770a4ff68a63bfebcf85a7f7', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('12d013a04ca04a2da5a1f534584c0ce4', 'b3e8652a90b746008a57949247555a20', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('12d3f6de57a54f5682de46b624d463d6', 'b21021e8a9c348ba8937918ad0f7009e', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('12eab5def865462b847c258b4c2d4110', 'ecffe8d6266f457b9510ddab1557aff8', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('12fe867d9a134c9e94e779d40b2ce66f', 'f3b32989e01b48daa7a259ff319f293f', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('12ff21e2cc124caaa506a308459d0cd8', 'd661bf3f58a8483fb5125719b17144b2', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('133fe7754ed44f35ba7b9aad02b4b238', '193f8de01ad6487eb5b7a40b6dc15ee8', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('136799b68fd844ee9eb9f5c9798d5a0b', '2f77e7372baa490ca14d4c1dfef4c7f3', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('136821f335304fdf9992185033f9ef48', '8fe43b4aea92419683495cf1c61bd468', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('139a29c8ae4447eabd203b0762b1864e', 'e16a20af98644adbbf9c833fd8ea8b8a', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('13b1eaa061cc48dfa132f3369667a768', '6b964b08178345b3aa71d6a5960fc5b6', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('13b4e8752f2c4390be424207c330a328', '7985d5a357f8409abf9294a33b013c2b', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('13c49330a1464ec6805a35a1bd6c2447', '904011b60e29488a8a6c213071fe8fb6', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('13e4e779345245de88eaf43a51444b31', '31f19af1439448b1a70f5bf96fb8e78e', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('140246dcb63140f7893ab7a5531aef77', 'd396221f1c75451d9cc378152ec34073', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('14164aa04271412783d48fd781c18702', '80bdc3ae78624959b93f87ace62e4f1a', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('14309e671578429986e5d15ca55f256a', 'ceb3f2b6f9654748a5493daaa09b1c7b', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('14697280a4c84cf7a7cb4c5a4fb471b5', 'aaa514e823cf416ab2b32cd0d8b15017', '43', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('14c46df833524f08a6e4a0be251e85e8', '6f861129bae443b3a457746ead35695b', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('14efbebff67545d08a3d5e59aea24071', 'f9ea4be977c34c17a6c938fa64516687', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('151b23adfb93453d8011126d3b29e1a5', 'a6bc80f569bb47e3a3d77f82258cd18f', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('151c03ce3697415ea2b523d9a4751c5f', '04933f2e720442e0b70b0e89ff96d38d', '43', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1528fbe9eaa34a64aff396ef13ac20f8', '7bd193f7296b47038c2abb1e2bed462b', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1573880f54cc4a82b3fafb66fd449207', '9d60e5d859824461b1dc3fef36cf8e24', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('15a37907380b4bdbb536c4ddcc00de46', 'ce076a3b855a44ef8afaa2340f438f2c', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('15a4575e9ffe47a0b93d8916068a3e0c', '0780afc6905a4bbbb0c5122ec8c725af', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('15a62db7535140edbf375224c3afebc0', '18b0077392774fc48227a2140e11f5c8', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1620c2025ce94e2ea2874209f7f3d155', 'bd4b81715871435289ea38de904e7f06', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1651cc4975164939b0d9fa11087a54b3', '562c383ea5a94775accec58c791cf6c0', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('16555de322034e08ad1de747e4a35573', 'f2fa4cba41264185a24fa39f1db6bf3a', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('168cfd14705c4e9ea59aecc82357e9c9', 'd64db790fd5b4dc2b2a38b204c6d1269', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('16e404bfd92c4ea9a1de3410d9b6250d', 'c004f1de2e354e9c916dbc8a2796d409', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1723c0bf68ae44e9aae17ae8e2703904', '19ad95e5c56648b28a04100c3b100ae1', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('172a64325bc6434ca7bfc9134e5c02df', '8f187c11f97f4bc3b99541ce7e881ee3', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('175fde665b0e435abc8481a261b46103', 'd46f6a71dff0481685b0103ba49b53c8', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('17c491ed852e4220aeea5ee6ee7f9f4a', '2b5542f77a13496389be502bf20f6a43', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('17cc3f559659418787e1c45d7f56b7fd', 'a875f3f67dee44a6af4dbc72f7e403cd', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('17f41f7e6df647689a38c0ef25150608', 'bcd7cea526f648498d646f890333d5f5', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1829ddae57234591a5aabe601a418613', '15ee0068a71540df98b3cec5d0efdffc', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('182a450349c8423a99a27523e952e4e2', '24fc4f134b534d0fbde60ade2e6e3626', '44', '系统默认', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('18426e484d9d4d53aa9b1121dcf7c8ac', '5145708fc76849dfa082bdc0530f096a', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('185b633d119e47d7beb5922da5f48edf', '2f9786648bed43a9aa1f627dc74c74b4', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('188f634292b043948ecb8381a89165ec', 'ca04971314e743edb89fcc66675169d9', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('18a92002fb6b477bbd2aa6b69808b49f', 'a2b2e1c900f94609a5d0fa44fea4f2d4', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('19081e9a7d0f401a9351b372edcbba10', 'd7cdd8acb2b544e590e08a921fda6bd7', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1912da4ecce24f058a2de72cf29f1953', '1695c8d492de424c9a5094e9d7fd751e', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('196cca997e1d404199f3b029231828bd', '4ab8657ed9404b3f8dc44b14790c5739', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1987cb972a2746bd8c85f46c5f55fd07', 'b9a2782ad58a4ce5aee3593afdc3e380', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('19b94990b75b43e0ac9d836db185fd46', '951330a9168f4f1c96e5b122682f25af', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('19ee896d477640afb4169e45fb3555a0', 'e9f201f27dfd426397d13f2bbab77ccf', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('19f7619987e14fe7a8f9a870b3c61087', '7e45d49e6fd94bdaa380593f8c77f6ac', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1a0187b636ae40079b27404de1026134', '4822b6e81da64985be2bfa51af0bae0d', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1a0eb8809ae54c90ad5722eca0abc1b3', '0b6469ae810344f79191713f28d33dea', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1a1d0c48fb7049669afba537d06305d8', '248d7625dd0c485391a915a59db6b2ca', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1a2106dc3bfa416e8c2d6fe545799626', '74c17b48cf7e4e11a8c1ba728713ea57', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1a3216bc0a0b4fbdbd74ac65c6e731ee', '3b4e6616f9d84578a629ab32e9b085af', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1a3bea05276b4cfc87e0205e002048c0', '41ebaf563e6247c1ac1d948c57bf2a10', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1a6462b8da8f4d1687927391c33393eb', '1a82f1a1fee7475ba9fc29e8623ac2ef', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1b0f71227866462eba9889b33ca59a3b', 'e6ad8eba8d804cc5b52531ee8c60581f', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1b448afce5ac48a8b87bd7490a845783', '112abef520464f28af039227c4bd3d52', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1b4b39a0c7f1474cb73011eeb8831957', '90b0dcf31df8462d99413b4f1d137ca3', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1b5921faca8c435eb0aba00aac2d7c2a', 'dff0920f6f07408cbcbb2ef9c3e3dd86', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1b5eedf2431a479b9b23302b3d131cec', 'd0c662755e6846a9b406c582ffa02d51', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1b7cea2bd0c8404d93688b7192e58434', '7c7fdab84386474ea58567f0178f0568', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1baa4a494a344ca0b6f4927e2d0603b1', 'a089f04f64e94a2eba517335b8b49ba7', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1bb1908a8a684405b64fe17dd4539182', 'e9d870a3e5244ff9be32a8950597bfd0', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1bd01d1b684d4d4f817d88372ba3d582', 'b6a3cd8cb68a4eedb386603c08de41de', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1c113296c05b4adca2568396ef6a2a4f', '1e4f980b00f141bab281c1b4ef42b12c', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1c4c4ff5810c41dbabae4034fd1fca8e', 'e443bac39dd1426c85f52b509576e877', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1c662a6a4b6847bba2a1126b3182c20f', 'c84f9bc14ade45558f097432d47d4bcb', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1c76c7507b7e45449a4d4410e39c86fb', '99832e0ca1f74efc9d92fce77f6f4ffe', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1ccfa2ce342b4c429b22267e4e6e24c5', '04933f2e720442e0b70b0e89ff96d38d', '44', '系统默认', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1ce87c1c5ca4461d92d6906564b34a83', 'defd4b9f0cce4722bec2c3524dbef862', '44', '系统默认', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1d486c30a67c418f927d6d1f69b857eb', '14b56fedfbf64d7a9b63dc7b8252252e', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1d78cb1d9e60473f9c249862e651e0e1', '8318311fe6d34dcdaa5d70e3d55af3aa', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1d873e83af314199ad98e6258fdf0233', '543aa5e37d9b4b0d85a8da44824e93bf', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1d8b8101b7e142d484d0137332a2e6eb', 'cf219de2910747a48c27ede56d2f599e', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1db703be79ef40bb9f6b7f06f5b3e097', '73deae2860f344d0ba0c71cb39f30f41', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1e10b1398b6a44ad887fc8dc0877e0d9', 'e4083b43f4eb4534a34009f2ba8a34e3', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1e245e534d814592b349f848ac88627b', '63873c7617ab44ac8ebe423e5d027adc', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1e2738441e4047278b34da94e018e404', '732891af0d864a7db56893cb43c7541d', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1e5feb1f2f6c4a11a714f6d285f11772', '4dcde7002c7743a29e696138f937b093', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1e956b90db084d478733c7e33a3e163b', 'e43f3a553ee2479082eb89fd35943ac2', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1ee66f8d6826408ebf5aa3a94c3972a6', '32dd6312adc0476ab48d145ac3c8f477', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1ef669b74e1040ceaf4d94ce842dd4da', '6278259133a943448444ea6a1a01f783', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1f1a18f9b6a946b5832d9492913732e2', '3174b14514254ab9af86d1dbf3e4ae58', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1f4675768d84473e8ecd4ab687ec98de', '370bbd689292440a9e8585c5fbcd17b9', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1f5d6ec24086417eb3079560378d7d6d', '7c940bfcb4d34a21b7614391a8e38a4f', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1f8bac52a4134275bc1cd65275b7b23d', '9bb3da9b1b4b4231b2cbb5e824e60b20', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1fce4538f5194669933b846d9f34528a', '1b3b5e5acb534b0398693a437acb62e3', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1fd8c062dd3f456eb89d41e4953b95d8', '3148c2dc9a704f919c7b6ac95cce327a', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1fdab5a4996d4b529094284584f3b640', '502b702e3d484d939d00101f134ba8e2', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1fe59cc0439b47e0ae2f2473a3a51fed', '069178dc584b4b11a31194ff7d274f6a', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('1ffaca39cea644f6a320d2f8ddad33fc', 'd47438a24b624a6eabe2fa25b9cccd51', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2008902bde0f42fca4903a4312553a7a', 'c5ad2711e42d421b86305e6ab4afdaa6', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('20313efd56544b15a415a7c980b97c9b', '64a5d6f1e29c411196242c425f81180c', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('20d4c4ab66e24834a6afb20736dc470c', '253f9d8a35e4409c8c3d880926b59c3a', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('21219c1f7dfb4ad7810e10dbf9ea7663', 'a38001593c6b4adf8532efdad424a7cb', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2129526b54334039bbcaed179a4baa0a', 'f634812bcdaf48e2a979b46811c47a7d', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2135908867774323b2e8de636ddae493', '03748481193d4c60aa8fa5bca1500205', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('213d28ad076a4e41bfd24d624aa6d288', '02d6802e17114cb6bc663659d6ba7f53', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2160bd7aa2d249189086af3cb185c4d9', '5bab35deefb4413fb666f0bcfd6d7019', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('22015dcf7e864703b84e1ddbe7e02785', 'cee43695a7cc4c9faae24a45674d169c', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2230f71a1c2444a7a0fa4387cd9792f9', '3f7e4286a9354670abf21c6733c59a53', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('22a06c770b2d4ff3afd0de3c1feaa5e2', 'c40b64b021b7485ab5756447fc7d6a5d', '41', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('23299b8e84cb4c3dbf79fd844dd3fc7d', 'e0cfe5b0cf394ebf9eba5237230ee0f2', '44', '系统默认', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2335c35dd86c4fe49a0b13ca916ccdba', '88811768c0f543f3ace9137fe02cf117', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2391baec1e544da7a1d125298f317caf', '31df05d9c44749fa9d536f21d741c4f0', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('239aca9e10fa4377bc4eb2b4c6996ecc', 'b51b79d1487246e483cb7972bd51d458', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('239f361fdc5d479f8bb16abd576368fd', '116122f2b79c44f4b8c39b0d82af5dae', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('23a7cd7c3f97456880e41bb8911c42da', '1c13b7d8fce74e6c9eeb9ec07c25db9f', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('23d299b6d183415e889af772e82cc9f4', 'f7f8cbfc092647058a76c808d1c70776', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2413d49761ce49b89df2af7592c2f282', 'c82ebc6c86154c2f922bdca0caa981ee', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2414219360e64349b3ce68e30fc7dbba', 'ebdcd0bd091d4316b29a33b0387ad353', '43', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2416a14b5458485ea870beea51438f8a', '461ff3063c5f4f96b25e61b1130c1846', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2430251f2786483bb1e7e0ca31a6f1ca', 'a2fc9f2cd89b45b9933e62f8f85e18b2', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('24536eeb68eb4b858a6d8539b308b995', 'ae3c9c5804244117b902f29dd931495e', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2465a2126a03474783484ca37c96cfc2', '42018f50aad849a4b3a5d76ba38fb584', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('249caaadcdb14ac3a8e51771cdff3b1c', 'a8c243ac433f46fdb0ecc157a318bc28', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('24e5d6031eda40e490d8507a32cf495f', '542bed44ffe8418897c5fbb0484f5602', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('24f0dfbf7f5e4f79a71ad6a504cc5c5d', '1624e1ebba9c414cbdb5d785a9345c62', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('25059545741749e08bdb5428e1b6b05f', '9aa9a17526dd4c819b24835ffbbee8aa', '33', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('253b1c144e42489bbb62e25bb8b78411', '7856f4c85bdc4ca89a5eb5c801107ae4', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('254b27cbef104f208cf4e0d0a968e734', '4936722aeccb424ab2919b9f54c9c508', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2571bc43e37440b6918fcacb19d04b9e', 'f9970803b73841a7a119ee02c51266d8', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('25dd9d2a93804b8faa00e60e753bb07d', '39862dbd5641433a999a847f4f9f7034', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('260b9c7d17714d6b8f4df180efbd385c', 'cf2cf4f7904d48b988d90694035bd957', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2655367cf18d459b95bfac5df8eaeddc', 'c8db22e22836424e9d0a3d0c57131d65', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2685623f478e429ea427f46148fb3b72', 'd8d9f74942684dd298c4094eb4de6223', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('270d77a03dc947e3b55b5973d2ebd313', '729d16565d1243ae90c7235d06e0639c', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2723be7ac19c4a42b294797bf3df0154', '738ac1e992a744f3ab2b43da3b2a2907', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2731fd181e8149818fb7205424af71d2', '7be26d8d06f74c469a6145b1365ddc28', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2794a962c27242d1bcf1cfa9879adf8e', '6448528a81fc4cb6943364a3f395d2a4', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('27c09cd2a3c84533a0f3ddae12c7c007', '8f6069db6da14e0295b8c5c4c41eb6f9', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('27d004e752a543db99a312413f31bc14', '2c70e1c20e144fefbd916af28927f625', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('280992844d4b440784de80389d4c9d6f', '7c929d20d1824f7db7470437492909cd', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2828569087424eceb478bb7cffbd8635', '211e328f0e44476c838459fa8b249113', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2845a1bb228c4ce6a0669402973bd212', 'a29b08171b1440048b9d1ebf67f80cc9', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('293dc0475ed942128895c6f5127d2385', 'cb28474a8974432e9f9dbca3242321fe', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('29689895bd9e4bb9b418fa908f57622c', '8d789b53519348ee9bf9a5d0f1f01a5d', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('29cafe632bf44551bdac18fb5fd31cae', 'e16887a44d164168bb2dca9bc5328423', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2a1429860b474ccebc21ef84db967915', 'a09614ebc83a4fc184211d335a10ef88', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2a432f5d13c4462c835c2bcd6e9a57dc', 'f87c55ec542c4028aeffcca1408727f0', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2a49b49e8e414b2a9c7b1657559f3cb8', 'f0ac3c67f91e441abbdce3792cc3450d', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2aa27e749e7d4aea82a96a3dfb21324f', 'bd7c37497b2a47f087954cc785f2d162', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2af57fa9f343430fa44c4ced5f09e79a', '76254bbd71b44ec79d524bdf2329ffba', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2b0562ca6e7c4cb69a4d4ab527540789', 'f0c9fa368c9d4d0782786252d75d00f1', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2b4de340dcc04aacbf12fe368c8ca8ce', 'cb0696ea35ec4e20b5a05b6e35d688b0', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2b4e6d525f5c40fe85dfeb52bf74b2f7', '0cd39b01531b4e0896d92681580aac87', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2b94328e85094b749015b57234bc924a', '7ad11d538cea4a249b82cba178ebb214', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2c1aa1c2892c47c2b273a0f5f5d6da10', 'afa4849696ad49c08512146aae4010c7', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2c27222fe3734484974e2d837e8caec2', '46da7770392c43ad9b8d398b9c70bdab', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2c4577033f8947e79ed1ed5329528e8e', '32cbb029ea8a479f8d35012cc8f5aadf', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2c4cafdfce164dbb99fd1719fffa6749', 'ac213c516d394bf2b2eb6a35665d1518', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2cada0c3d3584b828aa8c97c37479bbd', '1a54f357c745453dab6d6d9ce21c86e9', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2ceae7d93f394d92b01ed46475b00ba6', '026cb5afc16847fab32012e1dd183387', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2cfbb0630608400e9167ddd88001091b', 'd721282a8349454496225bdb7200476e', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2d08088f4de842268108c6d9e2ac5064', '887570b13a1941099b4bb5414691bffc', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2d111315120a406f8a69a4a9ea53ec92', 'aa16e2813122470e9d4c90ba9336ebec', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2d38e240ad924248a54e14d55d0e252a', '2f966a7d99314cb1ab19b2f8d6e9ffa7', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2d491150b94242238843084471c42c4d', '92b94981181a41848968c828204ee7a9', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2d5986c355f64c29afafe7d4445c371f', '2ae0240fa138489bba1cbbbcb85b42dc', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2d5b0c9e9ecf4275be9617972a31a4f0', '54b7ffe98e594f519e408f63ff68c9c1', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2d8c1e48a06e44dcbb92a559f7d940c4', '667c19bba331499bbf5ddc0d6936a0e3', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2db64172328d4ac699d5381a7b59b8b1', '1a622bbf4111459781cd21af847033f8', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2ddaa13deffb46338c8172bf44029071', 'd3365d12ca784058a02a228d855a4f6a', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2e0bc3b868d94f88a705c713957adf1e', '0e9555a9ff32456b8eff9531527643fb', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2e1ab708cbfd433290f818f5ae4b6282', 'b402dc4bc06546fea304da015b7bc1e1', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2e36da2c089f40d79f9459041a784f2c', 'ae1c57b7d45b44c9a15d51bb34918d55', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2e3ee64712c24a3aa78f6a16f44e869f', 'eabb66f153a64bf19bff701e3f045809', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2e3fe50229554d859a593832925f300b', 'bf44f19e26ea4f73a37cca60af5b669f', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2e77e468b9c044e1b546ce240ef95c33', '659367e53c0c48f9a4703564c3b1cd0b', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2e7efcbce8204db6a16573de8d80ee57', 'a2d427b1c21543a28c4ff88e0825fb87', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2eeb071adfa146428e200fa46923007c', 'fe74a5418ea9465a9a630a8f35b3fd9e', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2f0dee767a634c2ca8d89b904050c0c8', '9f2202eba4b14588a9dd84b91b3bc88c', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2f1e43e14f7d4af883293f0815cabbb2', '466f9347080d45d8aa4abcb0bcb4ee48', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2f1fd010d1ac466c997464f4894b1610', '080229096de54c82a40382381cca68a6', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2f314ab88028445cb1e3e5c6cf9a5008', '7d87211ce6d04a998a794a2113030a89', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2f4e439f82fd48d1a094c0346dbcf4ea', '9547ee0db5904d93b5fdbee37897eb53', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2f57dc3c8ee348618ab7490bb400a9d4', 'd1240ae921c747c2a642e9395c24d9f4', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2f69d4cf75c040f78f1e8c7552864b9e', 'a7b032ef3bb74336b0c87682028b89b4', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2f700225281c482482f06005978298b8', 'c422996c68164955b511e1acdd3fd279', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2f92fc5b82dd450e83e556212d27dc33', '129e10ba228c46dca48f5bda91cdbb40', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2f9cac38b0af432cb4c8db1851fc2e56', 'd179f600559443fdb5e624fa17b330c8', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('2ff43f89ab96436c95ff90a9da76b5b0', 'aed491c5a4e44879b33b62c2e935864c', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('30430e2b3920492482a474357e07003d', 'd9c76f808aef462b8f6092cc27937017', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('30566fccd15b469e844970568ddc52e7', '8d2fad9df1ad4dde8e15166ab1725da9', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('307aacae7c284777836f8094e93e3243', 'f474b408c851419d8465a137e35007c7', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('313f7e06b5a849bf866738d22a633a14', '31f0ba21b51a421ca93df75c64f19223', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('314add816aa14c6f9f87a8c07e257048', 'a9062172d8dc4bd9bde3be0e1515660a', '33', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('31a3a5f7cc2f4192993f2db083b65cc8', '115dab913fb944958a1d90631b0b8ce1', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('31a769400c734ddba9b8becb8c1912fe', '5be05c3a7c9b4e9aa75a5a2f86f1ea17', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('31ae5fe5c9f14ddaa1360673ef2ec434', 'fde94d40a08d4599be9e3948fe08f19f', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('31cfd4676ac14eb594f31a412f245cc8', '6030ccfceb18484d9a26ef5e3a24448b', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('3204da9bdac34eb2a70bc7d223153856', '9f0615ac80524a1e97f5b442f8d97e83', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('32165cab7c7842378f5c925f315f0a0d', '7283fd399d794cfa928e859f0d2b18f4', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('3232bd38f6934c1abb7d51f26ac27016', 'e5c0b9dc079d45e2a2de1e02253f3cc2', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('3255f2be3c2f428bb73c435ffce8c818', '001d4421e338405f866a9a69f0bfbc4a', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('327a8d29ab004dcd95f00841ae3e00da', 'a53764538e8248ecbdfcbf6aaf21a57a', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('3287484e90ee4d18b351a58c213f3a4d', '6b494ab8542a4123914c3cfbc0058476', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('32bdcf095bca4482be666435a96685e3', '3bcb9c82fa8d4f39ad35df424e9b5c53', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('32f6d5b69e1046fcb0e38a7886521574', 'fc4643ecfb5e4c55878db15688c8576d', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('3310d789c1b843a889e4a41ad21b8bb2', '81cf5f712079466586c8d44c6760c819', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('331847ffab0b4c4289058503afa3f6d9', '0ba16df0ac47435aabaa023ee5b35aad', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('33246576da0547df93b05b2ab0792ed1', '81545c350c0346438e2fe536b3bf2289', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('334ff025217949e2a385ae3baa91066e', '62855c8fd7054459ba2676ed513852d5', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('338518fc84e2418fa1ccc7817bba9211', 'b6054cbab83b4e21820226679729b7a3', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('339ec89be744488dabd8b83a1e4cd0bb', '17e72d9f9ee04f3ba1f7b436d9562534', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('33e5859fc65b46918702ade180511ca5', 'b00dcc846a4244edbe4dd5a0f118ca6b', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('33fcc739a1f34f90b332f21ce2691f42', '7539e06983ce4da68f03bb0934de43c8', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('341481af8a804110bd02a05c66e33f20', 'e2b2482704fa480db277ccddfd3a03b8', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('34219f6ae57447aca52663c49e8ddba1', '457eb36b489e48c281c4670e9c8c1898', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('3434adb1a7c249cc97221257105a337b', '7b53b0f038a043cd8dd79dca42bdb522', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('3439e13507de4ff2a7d0f856a6657250', '8f944b889c2148928e46bb1b98093106', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('344472927e514e78b0c9129fe87ada52', '3775ce92ca0f43a99ae44913b23243ec', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('34852f0b2c754d168da41c76d6bd6bd2', '5150ad88bf0b4beba554f8025465ccb0', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('348b9fbb39004cba8acb1b23dda52291', '3c0b0640c13e4cc1bca50cb818a5661b', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('34df0d9bebdf4555b2b356bf474df205', 'f58ccbeb104144fdb93a1f2751ec67a1', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('34f194ed5f064be7aaad14dd4160721d', 'd97f1afc68494813bf0d47aa62f0552a', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('34fccfef6f3944808c94dfe288b1acd7', 'bbd113d59fee438288f56195226ecbab', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('3512e94b2a0a4848849bc56fe74300f0', '0e1a0073479a40188b386fbc61269015', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('352c3e279209495f9283701d115d7e4b', '69563f86683348e99ab1f5cffb5284c9', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('355611aae7304b7a9128bc9839930a33', '3d17aead3bb542d6baaeae6f387a01ab', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('35ad5acbf7114e1b913602c18f54be18', 'fb0184ad25d94185b69e00e6f0fa64ab', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('35e8ffbdad0345a7b4200798d7d3683f', 'd3c42ac96b2a457887da8acc5d45b4d0', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('366a960dbc69490faec405d1f98aae48', '7460dee85f4c48a4802c282247e6e24c', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('367427b148e349378deaa8d040cd68db', '59fb996b7d6949708315258fba2d0c7d', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('3687413c433c40918ecbbf780dddf209', 'fdeba864d9c34fed80a5390d5f440dd9', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('369a18f4de5a4b699da37dfeeea52c97', '643a55eea58c4608a918003238dfefad', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('36fd19a5a8aa4d3a82b91f958d3ecc25', 'cb1fc78413fb439db6d7d71116f1e1e4', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('370812c83a214629aa8fcdef5bd33b25', '92267ec19705407da3070b809484aad5', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('3712b0151e584b29a842c3791ff1fc69', '0f13756a09c648e996b9c10aae603e90', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('374683589d054f68a463c6a993c58ca6', 'd17cdbb1fdc04723949463dfb61d814a', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('377d969d65b7481596263adf06da389a', '4f68108db8c14ab89a149243c3cb9f9e', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('3794eb7ca73d4847953406098988ea51', '249b6e3923274f9ab66331d5474b94e6', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('379679f2ee6b4a66bb3974e8d3f454cb', '3539fcbd7de948bda6969059f427c6a4', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('37da715742bf415499d8bf81a9b8adb1', '4d683836f8ba49bfa56ad282d7c6c9d4', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('37e202b114ec48a2bdf52bf197445430', 'bbccaf63e4bf4e92b7d78b8a517b9ecc', '41', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('38220886dd2446e6b70161994ac50a67', 'aec7acbbd6e440eab06454321007f02e', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('3848e0f7f4604d138b13477bec7df199', '60822db3b36a4d23be689ec5fd65b5c2', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('38669bf406f9474d97a8551154418461', 'a79f515244b64eb2bfebd69d64ad4c06', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('386a23bcd8b5438bbab07abbecb6fd07', '90a9d5e1bd5141518ae358fc69dc8144', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('388429a5ffa0405ea1e3db7be90c8313', '739d0991544f467bbef8fffa392253a1', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('3896b962c62a4aada9a5801bd015027b', 'cd882194899a4d26915820eb180415b5', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('389a2b539213417e9c5c5747441bee3f', 'f5de77ed8b8c42eb96f858681bfc2160', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('389c798c37e44bc5a8187e00af14fba0', 'db114d4f37454c5c9ea26dba1c8fa59e', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('38a3d05cfdb24a9984a1c96d87f27716', '0e200e2ac5ee481685b99b234ec1058b', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('38cadc082d22419494f80fabc0e1f2a9', 'e2109ca49fba45f6b999ebaa4922a41c', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('3938532098f247f8bc0fd48e21766084', 'b39aa409525644a884fe52c4b48aff21', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('393a14a776414d57a6232bc6566446ca', '958d686bb4344b1e919d6e68a0cbd899', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('396198d9679546c8bd566b012934bf9f', 'df1a50b7cb344074b910363587ac75bd', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('39ad1565aff9490d85bf157a7e344499', '08ab5d02aed7414bb2b8ec01bb3b7ffb', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('39d56f1a47954718aefa3dee9d514292', 'd678241df1434c58a07a78e75cd417f2', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('3a17619f677b4fd582831d4189e4f40c', '719fa2aa98da4b409bd7a685edd1e081', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('3a1c89dcabf4476084886020a2b6b3c9', 'cfd309f5b1df496a9d7cbab3b294f0bd', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('3a3e9517767d4efb851fa5a9eb309d37', 'ea06e3832dcf4ca78cf55ac88f73693b', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('3a9ce7c420464db18db2e979d8ecb0f8', 'a4f83abbf02e4ba68e8f012e90b5118d', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('3aaf168c467f4de784a8020b4ef3778f', '4bd27f709bb6410d8bdb548c8e1be80f', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('3ac8737d0c2f498eb826a37acca363f8', 'feb4fa9ed5064af09a622d69b3ea45f9', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('3ad072438dd74eaea620ec905f97480b', '1ebf75029b4e43b595bfa014c002942a', '43', 'admin', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('3ad38da6d4c3402e847b6b41fa9b5ca0', 'd98f24bc8fd245d58fed7ce3f1971dad', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('3ae786cbf25444958c5303a6e079b2d4', '944cce42e25e4987bcd4208dff82d09e', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('3b01fd9dc5e749c0ab4f1b60f2f616f7', '95234bfe9cdc463b9869e2c61b030e53', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('3b35a30b6c0c4ef5bd7378df8074d0fc', '8fb86475d1034f4aa81b0fcf7d63e2b6', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('3b7a708b1ce141039778026c2b73e634', 'd745809bd3b84759a1dda4c0ff7d4509', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('3b88a0be4ea04a608bfe20dae3724c0e', 'aba540e928bc411aac16fb5bc98b6580', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('3bb55b0d23d94ee3a4aa7999e24fd231', '503c8a9f8f3e4868bd7a6ba4fbdde8b8', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('3bc4579c6c0d4013a2738723881e19bb', '0a694a8a40104e03a2ca8afae0d5dcf2', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('3bc5225e5e5449b2931f5b417718952f', 'bcc93d227b1b4d1e9bd5a463e276b4da', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('3bcefa50c9744ec895797be002cdbb3e', '3dc96895689c4efb93bf009ba2f0d38f', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('3c32360229054032bcec672b3bbc3777', 'fb8381ae74164972ae495240b6651878', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('3c68a1ff36674bfa9f1336c8cd2fd83c', '7778bede63974b36ace050838d52da55', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('3cafeb2deb2440f89342db08f11565c8', '9ca922d4948d4f118bd340b6cea1db0f', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('3cb9438322d34cec9a7d78e2e6ea695b', '8715577b93e748928d4ecd329c9941e2', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('3cd219534bf5476ea2029cb48952664f', '6a7c82ac36a7445983b6e5e2271f41ee', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('3ce01b6e6cb54e3cae77d1128377670c', '8e5d1d772ade4d0e9b84820a6f442ecc', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('3cfab6d557de4873883c63652c8d2208', 'f809a33e035c467ba5c4d968e1d03bb6', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('3d079de83fb84ba2a4b790ebbe9b5016', '9d8a28cde88242cea71acdfe7442c728', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('3d449d7249e54c428691a3b108bbb6b6', '8ef01d224ad04fa29aa563235d582f45', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('3d569161aa4c4c4882b60b906a12271a', '86e2df8beb844f1987e2efc22217eddd', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('3d9551f7683b40babd5361141706c8b9', 'ca2b48d1c9b841648cdf7c3b21718d85', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('3d9ee0d74f454737884cdc30f7a8464a', 'bd555a7fe3a54a97901c31c2f318637f', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('3dbe2cb7b4af4ad591fa1f94073b79ab', '7016c0a8542341a6b6e253baea1078c4', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('3dd58ce36ec84dfa8c35e43ac3ee6150', '4505883d60e24119aaaa9221b74bd9bc', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('3dde3e516ef14ef9bdfaab4c2237a097', '086432e0d3304fa8a207b8493f1c4303', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('3ef521800a5d4b30a37f9879e8eb8ccc', 'ce8e43bad8c74def898e27e9145b8f06', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('3f390a995e7b46c7ad18fff1d02a9024', 'dd060298d56b45e489e9bc6bb9f73f30', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('3f4a8790ce364fc2be2c3dbc875707b0', '49abae2262ae42bba86a098c7ee747f9', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('3f7ffa8f65354eb5ad584a75ea755144', '5ca9499f84464f498e8ff8a33471f84a', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('3ff11035638842b7847dac0ac1d8a23b', '722a78e97ba64cc190cfd04471f70805', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4019a6d3306c42469d97e79f641054cf', '98d6f1fb8d4341bfadd2d388a0b13879', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('403030e9fd9748a887927d4bddd1a5f0', 'd5b55157bfc140ebae056f062557738f', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('405f90aaed6a4ac4900e2e7b0f7c7a1d', '061b53ffde964f70bc4e273b4c1a2583', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4077776dacb0408e937e590cd742fbd5', '9a105069784a43d9be01ccfa6347cf1d', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('409adad160ae47229478213fa2e226ec', 'ee722c9fffb545a3926df4e9461b3a18', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('40dbeebdb6bf4302a4e33fed64dfb9d4', '87c48440b2054222ac39fd431feff0f9', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('40f77194e188429bae56afea08d3486d', 'b02ff2958bb74054befe1a7760c9312f', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('410e9f7be041475b800d7ae2b60a0f6c', '5787992e631e4f03bf7e82c9b907cfde', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('413b025a2c4d4efe8a6c56d23305db43', '67a2942c7e9d4567b0f2d0dd8ee6e53f', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('415bb54758a14214a7419782ea3532b5', '7a82026449cc45d488ecf3199962cc9e', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('415cfea3aeba4d94a07519fee3a0de9e', 'ef510ad60d9b4391b93b82b45346063f', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4168c38ffcca48edb5e0ddb9315b70f8', '6a89c856af4e41bf9a7fb4af6c2a4beb', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4169299c7b72468984dfebcb1ddd060e', '84095b649b7b477cb6b0c23e9900d527', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('417c97e1ed2b48e2bc8fecdaf62df702', '1b70170fc581412086b90ca3fd510bfc', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('41ac63480a754ed2b30885fde717292b', 'a84759fac8b64f88b6fbae9686547518', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('41b6cf3dfe1845339dfc2377cf469094', '8feacbc9249d4a9da8e6cb1f2c1169e3', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('42226764267e4946a0e904083a7b40e3', '6720c97f69094ecd8989ade90a9cc289', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('422f494ac3784ac5b4ff48827754e235', 'bfb2daa46a534d9bb94e7dc1ec5f171f', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4237d7a22a134bb7995f9aa54f76270c', '2023c2e826d84eefba01240136c2e677', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4254335542444f91bd542f344e046dab', '1262b514f8ea483f86f58e24661e898d', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('425ef386807649c99820f28f7fa625a5', 'f624dce19a4d459e85e5bbf788f5ee13', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('427963a64d994f7f90a34c9b9ea48320', 'e01035ce9b1d47c481549a8e92a5b372', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('427ec976c40b439db24b1b47916fcff1', '393afea3f89e4d68a4b425e1b97fbeab', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4312d1942eed4abf8f4b3816a56206d2', '07da19a61ccd473eb9df24af873b4d60', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('437ff0caff114111a5330491ebc0b0d8', 'df31068b46ea4d67bef7d6794d63c77c', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('43892fbdc65f4a43b9dcbbef16707450', '962b1645d092435f89c261a4f0dfcd43', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('43d84f460a53436ea05144d649355b0d', 'e014bf7a312a48f1a1f7fafd02335770', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('43fa135f20964c05a61a2a6d70a87f2c', 'e28768eb9a684459b99a06c92acbdb69', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4413193871644935ae0750839f8502fb', 'b8e7d3754d6944beb5e8f77cd91f5e67', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('442d34ebd391432c9900fcfbeba3b28b', '39ad983d96df44c4a8496b92fa27915d', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4440af0a36bc444486bbe8d2cbf2190e', '1d9bc9eb2bbe4caf8838cbbc64eaaca6', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('444b83515f6a44fda9d5328159eb4323', '985fde1f8cd1465b95dd6cab247a43d1', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('445740248c264b52aa0f3fecd8cd9375', 'd173d6ecb9624720af8d5c1a8cf2d320', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('445b69f74c934e0cb07d4172ab199e38', '43d6e803b9144098b82859440bf5644b', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('445e47613bc249a99c7730902af4c503', '3ccbe0307585474598c3d22ebe0d6c24', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('44722d3954fe4b7f91bb16171c52c1ea', '8505f76b2ffd4a429fee1e7f084de509', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('447e3e012fb34861b85ca0f33cc4b745', '8ec2cb6a5ca14716995ee86e79cb5e24', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4499ae15845841a2a16a103d631568e6', 'e661799716134fb6a640d630be244db0', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('44dc484c95ea4188af5ae4c9f9d10c10', '5cc6430761114c9aa6589b71a9987e42', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('45110c4e2a7349f1942b1dabf3a5120d', '4101fc8f2aac47368c346d02009fef40', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('45222d668a704dc0b3bcbb3d3801a8cc', '7ca33fde06464e2aa07fd9a697c97a4e', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('45267cae28294102b4022ae3c2c6f435', 'c070a05b92da46d184d6f8ae710120f4', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('45a1c44936d342beb782a845f5eabcdc', 'a7c2d1d89e88408f9398c70a6be8f1bf', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('45a990a717344d93a93706cc2eecf2d2', 'a1cb152568044dcdb4f471c0464c4d59', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('45b4eb2c0e6b4e189281a183777e900b', '7971daee5fcb4f91a66a193c409ed6bc', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('45f6ebc9b265451aa558ef05fe4c0c9a', '25f69a076b6148dcab54c41b4840a785', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('460b818f5c5f4bdc818bca2e33151527', '2e1faf2d97b74151bfce0aa75852454f', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('46635b80a1734422b54ee728462e2af2', 'be0bf7a39d7d4711a3a107aec6b724ee', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('46761617dc264452835fbd83a7765b16', '7f2e7ad707a94b3b831d267d3143e7d0', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('46ff28dacb884e809ab87b8e6625927b', '1ad5c8563ff64870a15fd91e31428d74', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4711a7ddb37a4cdca13b6336be52e0c4', '2072c962434843248dab8c8203e74326', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4721130ac31145bd8b5dfe3845cd9b34', 'a1dc1ce7a822437a91a472bf69c2ce0a', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4727fa7a107d45fd943e0ce46553d1dc', '9548082adf7643b2bb7c46aa66bb8337', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('472f32b8cf7d4ab0aba2c29fe0bddc86', '8a0d8fb68e5d40449ab4538e1bc85f8f', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('475a716f4ac9436daee8f9cdad93b3a5', '077383773d6b479688c0e9c4a385bac7', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('47e007aa82944914b13d7bfd994e3561', '30cd16299a9f4b8f9612a78c900fd546', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('47f579bcb31a47d494009a3afd1bb32b', '42bf3a1b19af46d59922f4dd395cbbc2', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('47fe26e090fe4acabad51079c79266ad', '85b16826a49b47f2841f647d93ba3a68', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('480e09b206fd494d9289609d3c615aa7', '341ad384bf5b4ecb97db4ca4da0cb852', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('483a5310021040b092a19b545f8efb1e', 'e385f54bd5e7456b9a8284a1f19b05cc', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('485072e143cd40c6a60b6e6f865e19ee', 'a2f139db62704369afe00eca5974efc3', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4875c646fc824759abf1f4dd68afbd54', 'f43326dd461d47768173670743efa577', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('488c1cf52b10453b8e5dd114d64428c4', '3e513d1507c7406b95978f89160907b1', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('489cbd09ff8e4c4495e80eec6b677318', '88f9eca436514c498f53dcaf4ac9a72f', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('48a40a05f16544c79e0d550c85296b7e', '6fdda1e082bd4924bb77eaeaa47da8af', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('48a98ac51b884284bf63a6bfdfaeb408', '1ac5db2339ea4d35a62647c16f352e9d', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('48d2fd1380cc4a23bd84c0b67c38054b', 'b4beb7d1c7a5406287747d0216668f4f', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('48f333fb51a54cb4b0c8d37b2693039b', '6c795af20e804cb1b1933d8a4b2b76bb', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('495b0cb5c2ed42fe84f8e3835fa50d48', '77a51a67c75d4055a909cff41ffb5aa1', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4966969e87f64f85be0c3d8ecee7d791', 'fd6e905de22a47ef9bb2e3b29f65e335', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('499431296a374513a9c1255bf3a938c2', 'd90f399c49e04286b788cdbb1072c303', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('49944978d08f4fcaa038e7b656235053', '910cfcbf03144777b5473a0708a7e3c3', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('49dd07ed13dd436ba61d18df6f37ac3a', '3793acf18f054e40ba5ed77500a74d33', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('49e3f2464ba7461dae2840b7230b6223', 'c98d16da629d4717a1737727e6cd50e6', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('49e70fa09ca3413494fb23180ca8656d', 'b3ed32e5160244b9870f98606a0eef89', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('49ecc47b06fb46f6883a2bcca9a0a4f5', '569dfcf8920f4415aeec2ca2c2a9e0b8', '43', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('49f2ed21142e447283fad120c7f26bec', '527f30be202c4bc888ef2e90768bd7be', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('49fdd5ec53b64dab9af42337c00986dc', '37d7acf3c8ee43dd8524edc2fc602809', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4a1c3f0160ae442caefc0425666c9255', '57d9faba2e6b4265acbe145f230e3ee0', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4a628677c8a146e1a282a092861ed710', 'e507b325329b4ac29c66fbbe36054642', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4a77e9d0c9a04f95be5e48e2b44cae6f', '1475782417554a689c4ba0238ed224c7', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4ab032efda9044408297f11c8c4e3901', '4d8b03769e57472eae4ac5fc04925db2', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4acd3cda3cbe49bbbee724bc3dfd07f9', 'cb1dd40fe4e94beebd8df40aec8284fb', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4af3ce9921784021a1ea6280131e058a', '9841411cf1c040d6bb2bfa1a1bfd18ff', '44', 'admin', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4b0229c9a35f41fc8824818fe2f7faa2', 'ef920e960a4b42b9a028cbb4556c2a80', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4b1215b874244906a214da014ee1f3ba', 'a51a905ce487480bbee9f131ae7999e6', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4b3ea9f8bca34071b3b0faa1bbcfd0df', '95c7d49ebde9403c8f4dca37c84ae287', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4b410459609d4c1fa8f6495d29aad9f2', '82ef7aefba2f407db6affaa9f90569c9', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4b47a1010e8c48378773b3a73c8dcbfd', 'e6e7c63271c245e5b0f680b9dd45757b', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4b866f3aaa89418abc6cf555010a79d5', '16b5e9fba3de4d53a3b1df88e326e0a8', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4c0fa6d8b604408ebc7f15a9d535b832', 'bae926546d1949618f5eaa62d7e95eb0', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4c123c8ebc234bbbaa8292e29d221e77', 'c76a776a0dd542c5a0badb6c3fd7c2df', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4c2d07ffbb7840a5b03bf9dbc028487e', 'b86c92ef16c54504852c15d814fcdfc8', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4c3a4e89b10c4347b2b1a50db6a5a6e6', 'd4ba69c971164829b5e6d9c46a2ca259', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4c3cc706d3ca4ff5b257838c02dbe88e', '4f7e6d138e3f48d9b040339b6daeae09', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4c50161f606949719d98b2e1081435ab', '4ab087cff4ea42508c289e3ddaf608c6', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4c5c1ae06ede49b7a8dd9d3ab64b49b7', '33c684c71aca4b878ea74d6f5fbbfca1', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4c9f69159ace4de78c376f04998a7948', 'b9bfc4cba8d7402a926fb90b367ed8b5', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4ca5b6d40a66442184caa5bd7d3c6c2f', '38c947473b914866a344e7c076488dc9', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4ccd2cf3fc0f40f2a263fbe47f9fb88f', 'dfe6396578944f2887d6984f0ac38a44', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4cd374e4c05744e5a00c6213b24f64cd', 'e5fc19f6e4ca4257ba864e6c8e4afaaf', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4cda7637abf547108eed0ba747045f2c', 'd1dd4e62b89e4ebf8bc871b9adfa8271', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4cec2c96b73f4bf2abb65649db9e9529', '9081e99281724d31889909a746ef8a4a', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4d14bc0d5683454abdb54100d10dffd0', '06df89751e114a868a7cdaeb1bc09fc5', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4d24b6100b3f4410b1374057568a71ad', '7f36415965184498b67e288d6fa94b60', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4d2f1f0ec4e14eca9d7e91d133e68d0e', '616e36f3653047029511923c4b8f35ef', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4d520c0f12b8451398e0b6e8a8ab3e47', 'eba562645e2a4da58487fe2580770d63', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4d77ec4fb3a54331bbf1c39ef6140ae8', 'e4049d29df3b47f2a442d92f678f358e', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4d925397ed62479f810695ab0c7f25df', '84c13322861e4a029460a6c9859e4b05', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4e1088655c0a4ab8a269dc1433a9a27c', '06358fa1559248d0b70559325c2f6710', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4e4611f2ec6d40069d4a6485ef7a4884', 'b1e49ce7f3a24275b5f3aa380208c910', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4e4c523f0fcd45c9b46a6bd1505471c7', 'db47205648354c8db1d985518802458d', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4e97560064834c088c9b000f53a9a7dd', '7ed8c66ba49d43f287270e33e29eeb2c', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4ea73d7b143548f08231476ed8136017', '6cb2cc705297422385af75278a8ac70b', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4eb29b31d222400b8569bd20eb42861e', 'c822cc687843455b9dcdcd832c2819cf', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4eb9f9ab08f14685a40117adf10eb8db', '7aa5a28c560a48219b5f0e69a1cd64fa', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4ec2e2b27ab04f9982b7586cc992cb26', '10c39d6b265c4dd1af2305ae48932efb', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4ed422c543a4487b9899af7e4a86a1c6', 'f95b15b8621b403b879d44f97ad5682d', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4f8929c0f9d04e7a95efa105c2c8c083', '1323e351b06441c581e3b6af3763d1bf', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('4fd26cd03b5d4b898cdb6ff5de7d355c', '3c47e51678c541ba925368b91e7b514f', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('5009263399c0408b9ba313e70c52ee13', '70252a855b1d42b59ae2854e524b7e1d', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('504ff25b525a494aa541c87be26f6b9e', '090d366e1d63408f8b83d04f1e6ac609', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('509b7fd7f9bb4fbda42fb59f741c7421', '1b90e19a92774a59b31e4d9e968931d4', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('50c2032f679c4731b73f7c2ec03552ec', 'ed54ede490254a09963a94f1491ce3fc', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('50c40f54fb9c4feeb3d19e4d64b8fed4', '35c4fbe311db416594819c2be28c5a2d', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('50d3d0f29d0344cfb55a08a6f068a2c4', '4bd6950a363a478ca5b982c5ac158184', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('50fcfbd159a74b56a0fe845e7fd8068d', 'd8d25f12d210465bac6f9bdeb55cbfdb', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('514a5f2da4fa49e0af332552271d1169', 'efb112e95d5e4a24a4411f8dd3075ec9', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('517dba00b2c94b9fb620fc797c249ea8', 'f5a03b7a6f52401da44d6b696fcdce64', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('518c8ec4dc0044d2838e8169cf55d159', '076588f70cd948aabe8d948ad75f3e67', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('5194d9b19af947409e793809e219727c', '1efed637d9f8419a919cd5b657867c6e', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('5199200dae2a4829a6e75b99db72a300', '5b664a275857465eb6e05829e4675c9c', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('519d8fa341244e91ae94e7e88ddf09a4', '88b88a03d9b44fd8a6d71ea917301ed6', '33', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('51b1b2e529cf4702b3072b807bee1a5a', '61e5728783234c25b996a0fa018f93f4', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('51ef87b481bc4e929d48e5c63e45d194', '96d4cd872629489ca6113b9a38f9ec80', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('525219da2b5e43b69cbc22133ef02b7e', '30559c96970744be86c2acec79f54f32', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('533a17b8aed54ccaa91b56c82b74e7a8', 'db549760fb494b759655d1c37157239c', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('53447bd63b66430c876c90fc33446528', 'a6ebd8cebc2440c7859fc1f9bad2cd56', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('53b3478da61b4d74856553d5a99c6602', '36dc667df6d24d14815a8596a49a5518', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('54565704e2604cf28f309097bb9b8cb6', 'dfe95453199e4003acfc19c8d5948fac', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('54611a64143e4135becb4822a3842186', 'e4c65302524546db8d81a61f68fe1704', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('547e3010e26f46778cc77e39e4850145', '45cc136b805444d49bba0d836a3158b8', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('5480123acd0d4961a970d4fcf2e5414f', 'f3d6cea03b854446a8160cf4b91632cb', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('5489ab67eb93466285a299e0432a9e2a', '7fcda891a6d94aa899ad66c4df7d8436', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('549747095f2b4ecd89560822e40d70d7', 'bc91c4f77faf471184e5748afe69506f', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('54a62eb4c77b4f60a3a7df902607954c', '34e0e7f8aaa64b0089bd1ff69eb05dd3', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('54e129a83d4742748e178f2d60b5c48a', '339c38fb0a1e41c496aaaabd48a28fe9', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('54e9812231c94a368f8148d315909923', '1d8ed06b2ab0454193cb68defaab4352', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('552c20bf45fd4dbfa89c498ea04e2bc0', 'a5e7f35e229849dc9acf30597d573c07', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('553f252d80e7469a9555ab578e7b344c', '5f99b53da91b4849b8d2e5f018051e53', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('555618dd02854265b783c8dd60133daa', 'ed289098a35e4d5292201e753bac1557', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('559912ce13db4902b6c75e5d1a9d651f', 'a9062172d8dc4bd9bde3be0e1515660a', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('559a53a6e54949518ef5c374c886650b', '9e9575017d5f4833bc823d780bcd848c', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('55d0c9ff2fd44a3dbf58d771406e4c8f', 'a6dac4b14bfa401c9b52c3d685f50088', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('55d521f83d264ce1b10ff40f1da953fd', '17807597db4944bfa3d4d2c71d75d559', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('55e07ae3e2894a57b685a7b4d7bde126', 'c3487519b6824d819ef3d804f68d2718', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('55f205bd051c4579bba09e8847575d02', '509e6b95cbe54bbb873115f633d6b648', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('5608a20325c24419afff7be610a0f09f', 'cc4ec679457844128ee03c0ee6a7d738', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('5665281392e7426e9456dc1a6492aad8', 'c1eda472d75844bb8d9e2446e1e93e79', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('5674cd8b16bf408fbbf72d7eb113fa9f', 'e1a004b59bcd4d8eadc4371142c200db', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('568de6005e374dbab8f10ca28da210c6', '37c20dd8a72046cfa3c5904f47b2ece6', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('56ba0707afef4b3bae6b765840f924cb', '24fc4f134b534d0fbde60ade2e6e3626', '43', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('56db7b5863834f2fbd076defee71017c', '4bc928e5e2e54c24bf2624d960fdefa1', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('56e4fed32ecb4af6819df5c970ea629b', '4f0539014655459aa4af89545de7a5f8', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('56f8444b29e243e9adaf19f5257dc335', '943c789c2c6443c7b2c0098718ad3b47', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('570e67b7c3ca4ec4a759e6d1f72f3a05', '9c3bfb0cc7224c75948d57e661742f0a', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('571783b45ff047748cac8c61e4db7492', '72425032ce964add883a791f67ead83d', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('571d41cb19094a26a8a01cf31a95f85f', '7e8c3db6309f48a39a45943845bb910f', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('572542626da146a597bbda9119a66288', 'b7c0099907754c419e764650a13ea101', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('574cff9fc7f94060bbbcde64cf4d541f', 'bf5ef164e4c8445e8c0fb34aad99115c', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('577c3cfe3dff4cd08250733e2b54ad72', '28168eb4c0dc4c1aa79c0e7ea59e677a', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('57d3d14657444111b47c27d43ade9afe', '893f7d357f2440158d0863cd67e2e5c5', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('57e502613aa34de8989fa54f11c55910', 'cc473963938747548ad29955995e99e4', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('57ea63ec14e142aa9a203cec6b4efe48', '5e6bd8177af0430dbe7eb30dd3fcdc6a', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('5808852d82694ef4993db270006a94aa', '668a18e5ef394468a3510fa3ff7bf1be', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('5826e6054d4147e7a7e2c95caf6d639b', '85170ec311b344ad8c184866efbc1687', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('5836ac09e49a4cf5beb58bce54d2dd0a', '88a7146589f24b759899efa92642433c', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('5889660e4c41404e9faa69096b9894f5', '4c4c3bc5f88a4eeda0edb657b7330fe2', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('589d25ffd4e44c78814ebbfdeb56d373', 'ba0195538ba9418281dd49c14dc7e486', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('58de82ed482947b188c5fa7ae9307487', '6bbcb6e17fcf408fabc90d1777e0f168', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('58f7e239c3434525a3078e7ea813fe56', '2198c16542554b49946108dcefe9dd7a', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('59415d79af584b38a681b44fe9f6543d', 'a493c45f066f4be397531a5a906d8036', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('59473b8e416342fb8edae72507efbae7', 'e090c39be52f4ae395364ef57933d05f', '43', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('599830e89ad447bcbaa34743cee3d98e', '317df0cb2fe241ffb25eee4be0cb97be', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('59e54b93bf6b46c0864e3afdafc49479', '6a7c82ac36a7445983b6e5e2271f41ee', '33', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('59e75cbb2a094e4c9db7bbc06814da9b', 'c798273567bb41d7b6dde62db47042ca', '44', '系统默认', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('59f645836e3c4433ae9facc896dc21a4', 'e53234175d254a5f8f40aec23da698d9', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('5a238903743b40e5bcc6bda26d24d601', '5b664a275857465eb6e05829e4675c9c', '33', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('5a5e62edbd6543a881729f061ff6c36a', 'e4924f82069b4845af38b88f1f11ac97', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('5a7f02157a154a21bd0ae6c3d0dfca90', '607d1b01b86c4fdf8ac73a25681b4a2c', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('5a91e0487be24bd5875cd0f9dd60cead', 'c124563d978a4022ad8f614830ff596e', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('5ac3eb8749fa4812a1f060057531c67e', '29c1e107d27442eb9c702741309131be', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('5ad9525cfe9d41ffb43328a05ae5c963', '0d801fda209d4280bfeb9d18448023a5', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('5aed89d6b8f64574956fb6b8a1fbf245', '9f1de14aa35149b7853d1d7602a78d08', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('5b79eaec8ac64fdabb750435ff82fa02', '829bfca5cc9942f8a281abf63be42f72', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('5b9dbf5accce47aaad24466f93dd293a', '63e53b33aa604c898ebcdee9058313cf', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('5ba612abd50e4176b45cedaf818d3af8', '5d5358e2110f43e69961baca5ea7a108', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('5bbef3dcb2544071879da0143466a84d', '3a841f6799d743e89eda6e5ea74c7f22', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('5c01a8c54e9b415f87c58df7abc2b401', '65277c80d4d14005b58efbd5d5972de4', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('5c134f0cad984a6e8eea3d5d52bed296', '195294b745824d32bf4fd72a170d9ea9', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('5c4245e560044e908addcb81d390b080', 'daacd9ee1a224e00b91d709bcaa9b78f', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('5c4b79c82c5f45dd9abf1ad5c8c09c78', 'd3ec01b14a4a442c97e295848d11a901', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('5cb04da8658246c783b8d291e176cdcc', '082a6b879172478dba9da899e642802f', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('5cb08cca57f84ce59d77edc6f12f55e5', '6fc5c950ed574d98bdd20c3031a58888', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('5cc6c904dd3f429aa48707cff1ad7ad0', '4cd9492394f84b6ba82e565c7a174e4f', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('5cd43ae9a1cb48ebb4732a4e8b9194fb', '9b9e8a850b4a4415bb86abfce7214a46', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('5cdef1156f584eebb0a4c53baa7d4520', '9c1a6b49c8ca4dc5b6fb40ad4adc8d52', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('5d0fc55b19c14682a38928bb333366b7', 'f43e5207d7db46fb938aff1ba9e08c9d', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('5d12981d482b44c6ae9c43b8508e278f', '9ba6737ee6394c8ba606db742c5b657f', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('5d450313a9c34b75ac5cde79f6a60046', '950b22cf903f4623bd44b2c3c35bb6f4', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('5d508294c076433d9ce7c280cc528b35', '9a72a17dcd5647ec877e3186ad333ca8', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('5d61d3d50c2a473e82d9bdd8c0000368', '1b65bf0a9f39474faf3bcc34f05a539a', '44', '系统默认', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('5dd1f81fe4cb42c6ab9db2eeb1db3a41', 'c7bd530d5322413190384728d4fe0159', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('5e1f03ecc20340519bb4345127ff889b', '9aa3659a540f461ea466a44a72812fce', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('5e2b0628465843739268b1f64dcd0d60', '39c7c5d99e5b460eb70443ba134a11fc', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('5e7c1328dad54dafa08ee6bfc0c2b505', '03219ee3766f4da7972dcb46adcd2dd3', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('5e7d49fcbaaf4f93b363e8e4006c2a5f', 'd8a44def028841db8d16bb3a8c319822', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('5ea39edf1f6f473fa2757a072a0310dc', '4d32bc9ff03e430cb8dd9c744aeded2c', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('5ece069e2af0499ea31d76b8ca80057a', 'c5bdf2ba7f954da7b429c39caced7858', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('5f068d9e8e9944baa5fd318418495eed', '3d60350375974878955dd28f4c2f9c01', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('5f4b1e70950c4c9183afda7391b84a84', 'b111c9248c3948608b5619959c9c98d6', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('5f92d06ba7fc44aeb1b7090a42d129c1', '5705b00be16041789d093db5242881d4', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('5fa696a640e54bc2a990bf2e10e37d4c', '6be780a7ee124a00be344c3f051a77b3', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('5fbf30965fa84caf9151e142d40b50fd', '52908dadbc024cfbbd04acddeffac366', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('5fc986079dac4e61b224946362fc60da', '91be67a99c0a4a30ad0acff7ac875b87', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('5fcd4161da6b4216a0303c61cab6bf85', '5b8091a440c1459abb401a47feefc939', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('5ffb4347ea32453299e1211733e5d3e8', 'ee10dcfccbc24004baa1a5f61403b4ea', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('5ffc025a1c10476e8b8b3e763314c812', 'fa1f0419bc614618881ed88ec3b1f016', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('60069987366a403c882ef8bef5b1b7cf', '699685e80eb9427eb4d2ae1027cf297b', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('600847dd00774afb9bde68e44f0f4972', '0f94a06fcc2b4044beedaf5833c72703', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6052e02078fb440589e7528aeb0281e1', '3fd05a62ca9b42ba85eeabb2bd083196', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('608393689f8a402bb1187a9046092f0b', 'a9c533370fac48df85e34977d4795021', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6097da3e574f4d34bca68d5aa6bef659', 'c7567e83c8a540fe9185def4c2e9bd85', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('60a69ba7c49c4880a137df72d63c39ae', 'ae05d073c8a24fdea54efc36ced2a1d7', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('60b0ff7240ff407bbf1a55df4cde1c9f', '00bfbb7cdace483c817f949f44aa0661', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('60bfac030734453987b13085384ecf1f', 'd2b06877825d4af7905a70f76310a3a3', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('60c2a1afc4c94a92bc46e09e927f35a8', '372c5bbebfdf4ee0b28dd23414b9e99e', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('60ed2b6e186f41cea22ac17193ee0aa3', '84b6688726684f678ca2e99ece51a07e', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('610da1ef0aee4414b970502a12167d69', 'bc0001f40ba74086bec5d6e0cb2f0e55', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6115fba3ac2847a091bc34ae4b17bee3', '2c674c9e893e44daa49beb0931f9d6dd', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('611d273a3f134651aa1c5b0411887445', 'b96f9d231c774979b03e21be2ed71773', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('615256299dd34db785c9bfff4446baca', 'd20793d416464bdc8ab4c041d34523ca', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6169975898a64a5faf1c44ff0eaf32c2', '765369a22a654f9185223433c95b8dd0', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('618bb543e33b4fcd8461bff581868438', 'ec0ae668b2474120b596c8316ed9b291', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('61a448c6df0349d38ec60a42b0298c48', '93e6f8a4e0534ccba10b1060a9aea6ba', '43', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('61b62a7a444646528cac96f04a42c909', '74bcd48c4b4f4cf8a56b1ce064085249', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('61dbbd9a65d24123b092295a8d1b4ab0', '70e4aba62012442e9d0da974a3ece93c', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('627d0b7debc645a08c8e33608e6fc44a', '88b88a03d9b44fd8a6d71ea917301ed6', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('62cd8aae38bb43dd8ca8d359943c442f', 'd1982afb27024fa6ad3622377364da18', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('62ed3ac1e8cb43558a01f30b596deba9', 'feeefafab99d4548ad0b9502f6651e90', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6395e513081a42d58514ab9dc91c4126', 'f9307901b8b74769ae7ed85f650fbb27', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('63a3c65df360499c894339b96f94f493', '763fad1846b64d489fd8b8ef7c489920', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('63bcdb4cc84c400aa4ad1745b15df303', '432c5881db5b4b478ae1380948483f5b', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('63bf9116ef51436f8e5c93d9611ffaa9', 'ace583251f8f4949afbd0a91f2dafee1', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('63d113ed14594db993111f0788e47c4b', 'd2e5cac17fca47c2b9c9b838287bbd49', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('63f0e200641a458287651233098ebe98', 'b53daf01baf048a3a223cf0248eef9ca', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('641e5ee461ea460b9b11321e03609067', '4080bdae1dca4113972df3a6198843eb', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('643e5bae36dd431eaa88fd046597b3c7', 'eaa1bcebd1764ea0a65a5bb65aabfef9', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('643ebd13e2ae461289195ad0fac70c2d', 'ecc5540abfd747798746ab13c9a67b2c', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('64503bc376d04a14bbdecb7be8ccb475', '36d1f62281f642748bc77e7c037a890d', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('646f85ee801244a59bfb087baecee604', '1c6690c173a84a2ab4983c771f41f22e', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6497aba06d49479394e9599be7bd2e66', 'ed1210c30ca5492b872a7d2d1bd8cb5b', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('64bf2c1f36e547deaf937aa83eddac99', 'ce16b92b98d249468e05f8c0b5f824d8', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('64cd2a9902de4e118d1d3f44699d1c85', 'df18b44fb0d44f64aa8f3cc9ba791b36', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('64ce29a163a0400f9a39eb8087a8baec', '5385d211ff7240ba8b4bf173f1b249d4', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('64e4e8ab96f44383840e42912c0f2848', 'e569e02cc4bf462e8b137f020e098cdf', '44', '系统默认', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('64fe9a0974024b089df062f0ee2e8e53', 'a0f82e2b3cc14e32a2480f2235e184a7', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('650fb60b082f41848a53dc9a5085b8d2', 'd71ce766f3a54e18be3ae9aea3694f08', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6520283211404158a4e518e9e5c498ba', 'eb4cd3bc88de4d0aabc8e54f227d560d', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('653984d5035e4b6080ee7b190fa9b3fb', '1b65bf0a9f39474faf3bcc34f05a539a', '43', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('654a99ef03084675b1a680d9724624d6', 'c816a8b54662464fbc5cbfca3b3a3376', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('654adac374464f878cea5f1023c21041', 'e3b72518af4d4fb698ef63c18125ec72', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6573410845f44d8c8216ddebf4a12155', 'c06a8b5379344e0096e066df908651b8', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6593412d6ecd4b5cabd5c71384040a8f', 'c9a5e49f8ea34a84b257058344c534a7', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('659de617cd5547c9931ce15b1cad8cef', 'fc76b73f752c4b469c924be66801453b', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('65a84bb4b31744f9a057b60312f3f902', '03f0cac5ff744e9795d39453358447bf', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('65daaa989a6648788e6453764d58b65e', 'a6932897525b48c6a92dafaceaa50b9c', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('663e451e69b74141b23f31efc94113fd', '0d59d47918024c739a413f45e622a04f', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6657c5b344444b438f50ff8f34dc1735', 'c02b2c7beb8f4f5ca1c722049d28d91c', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('66861f8a0a814887b5f401afec8bea0e', 'b739548325374d238e09299f043b1f2e', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('66af4b83b74f4f32830abffe3c5dc754', 'e635b826f5b44303b28ae2a25c80bb0e', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('66c95939c1fe48258347a085395fa61b', 'a1874383518d46e798448b519fc82775', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('66f382c709764b72aac0ddbef6d58360', '205062b5c3c74e18b567a7141b52de14', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('66fc4bc589c547678e7c2576146dc95e', '9a77dafc63894fdda1bb52f1d1542348', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('671855d63d13431aab6d6c55b75ecef7', '65c3f6fb4b614c8183b49bc31f50aaa7', '44', '系统默认', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6739844788f84e718189d90c3af2bba4', '5a46bedde2b345ae815f2f39ea2e4f98', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('673b9995b4724c6686fb5c8249a54c03', '0d63f7092d0b49cfabb23210e9b5e7e9', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('677eb65954be43c09e1dc770f00c75d5', '5e74c57519014bc99dd412a2401ae47c', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('677f6786869f40d3b59b8ca9cac1f767', '6f1ea8a0724c4fca86f555d1c8a29e7d', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6798954acf534511a4c94f0e5c0b94f5', '4dfeafdeb349409daa326dc6f1a1611e', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('679df213d85e4a7b91a538362199c342', '3bf3e81291454ad684d47dc377ce708a', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('67aef116eda04db1bf82598b3e59d0c5', 'ccbe10bd717d4fefb0f04292018d3505', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('67eb4d35bafb48f7b7088e001675527d', '52c0cffe7c864b9ebce7f300f37754ef', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('680bb5a4f9bb43938be39b351783de04', '6a380236ebcb4d6c855c643cf2392a36', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('683c17a9e3a249af8f86ddc87a2a39c9', 'fd8077e899614c2caff3e7b157bc14f0', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6841a7f972144e5cbd1de6a8651e9caa', 'c6a0a755bf3546eca19c49340c4b5490', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6876eeb0a5884b868cbd2662bc5fa230', '94fe96183c05497d83a045e61334888d', '41', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6897d1f75aca4b5f8d7435cbcf82ff3b', '6842bde3c02a42c8bbc78d177bccf55a', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('68b409f9fb934a70aa6c840bc34b1eed', 'a907fbd408f84811802eba9a924e484f', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('68df70f1a38d484ab6aca25470b6663a', '35009ef6abcf47fb95c68aeffc044b4e', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('69116909eec24c5ba87ed3d33e89870c', '45a1e8672d32446cad11ad5c2fa9e6d8', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6922a56e883241b3809421254a6615f7', '9bf1df650a4343e9883bdee159b3a528', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('692b8d2600ef49019cce9a6d27c7c7c1', 'f128bc79866843389977e96847d7999c', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('69a0984512fd435daeeea62295c25624', '3103b6c88680443bb6f5758ec06d9306', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('69c2f94281c04ead9277375f4a6fa65e', '3abe2290639a42af82e001a017ce0ea7', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('69cd606a18bb4f059a2ed49375a1fe15', '0c36591bd1fc4beda80825633803b62c', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('69e6ddc2c5804817a24a9e0f20c30e93', '2a58543fb9c04bb2a09b07458102eebb', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('69fd71dd3a414f0592a131f260c95d99', '766479f2e9794ba693fa3ec14ef190a7', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6a2c82b4a959427da43dd0c525ab3170', 'af7d522991ad4469acfe3ea08ff4f088', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6a56286cf167444e9f653413f40a5406', 'e4b0b1174c8642b88db83d0aa25aaa04', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6a5cdc23cce74d489d0d1c0db78622f5', 'c0f2cc985f95430da4f69753262c64ba', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6a6ffc8e92684e43bab3af1052468763', 'd4d8293f1fff47899e64c90b9047c736', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6a7aa384cfb845ed8ff37dbe59d5a4a7', '7369766c8a004d2f811f25faeddfee02', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6b38fe0f59d64f9ca800c550a672e713', 'ac548127bee9493aa991f4f8001f2b7e', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6b3e3069461f4b178fbfdc7f45893d95', '3774699b76de4a6d9eaf1aa871a13039', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6b98c60c2487474ab216c3192596193f', '7db95569e3ca47e584e72013774fff12', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6ba6a8ea95f44e91819353f27025a1d0', 'ab93eab5853840f4b68868523c584c0a', '43', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6bd84f58807144de8c90626ab83dc6bf', 'ebfc524470b5435aac8931372cfc70b6', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6beef73073504748958b83a6fa497f29', '7ee6e382a19e4f059bf15838d0b43bd3', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6c1a8b79dd5e4fcdbd9f670046d631b6', '01ab01879fd34b7b9e3b8917f77ac256', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6c308b94d45046fa992737b1f3bfe75a', '6ddeb4b3ec5e4006828061e7b89a4060', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6c40f4dd79d64cbd9bdcddf8a7d9f491', 'e5b51c5cd34340a794f9c43eb0ea7a2f', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6c7305baa99c4b98aca2993a29aca17c', '967a323273a04590babab86167521b8e', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6c9a3714b73545919b306dd04180d0c8', '3285e5fd268e404098abc7b23e245a33', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6cac9a547cb84c43a87314b113440cc9', '94df45cddd494edd91e6ce9cea1ce51b', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6cb3f858bcc94f51b03be4b7424b2ad1', '2b1aaeabac8f4f4284208718ea1a1c1c', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6ce92ff5bccf4496952e129e45b2cb6b', 'ac1c67a248c9410891a397294ea76271', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6d141505a3f840a696949a452fe591f1', '889f3cd79d0e4bcebeca49ff51589ee3', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6d2ae44dee8d4a1894441a5a3b89c846', '1f7038c2366a42438f5be48d4c36f1c8', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6d7b0ae97aa4491aa201b59444fc3ac1', '18c49b1bc73e4377baaf306808138ee4', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6d8f3bc28ff441838015b95f78f3d5aa', 'bbbae1e436a643f8a33ad234b444440c', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6d8fa52a12554225b5a0f66bfba1f301', 'b37c8b30d593403f8e22d637d09cd28e', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6d93ade1ed794e49a748941d9838af53', 'dee7433b26c4410bb79371a0971f1737', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6daec83e164a4d91ab9b154522afbaaa', '65c3f6fb4b614c8183b49bc31f50aaa7', '43', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6dc1761107024c36891f5b4d98412ea7', 'b11dba26cec542ce951961b818a36bfa', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6dd3dc22772c49ce8ccb8decd941c113', '4c0aaa10f4f3434e8f17955acb731fc8', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6e3614bd3c38494a9d9688b473200294', 'b486113695734f77a5d77d705c76ea3f', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6e8c3ad57d5347ecb961bb038a23dfe2', '7a7a17972da14319b2e5b3410c31fb50', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6e9eaf1061ee43e2b6c4a9a1625f5f00', 'dfafc929b5ef414bb3f250dbbc42c5f6', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6ecf8d578adc4e29914916c2a996999d', '5f92111c4fe742f69e70cbfe8df26053', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6f41ce49bc3a43959c61bd12e200c972', '8c21f6f0e03441b598806ad4a2313cb0', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6f42ce32bc9949ceb5816da4f725ff4a', 'c1b20969ab6341d98532529cc2c63a59', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6f57f1c0d800488fa9442a7968f3ef2a', '2cdbceae66dd47f28f04f7e9dedd5d99', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6f58ee9e6e7c4945935fbf5b63556a5a', 'e4cc0c11700d4c85affe340e829a3dc9', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6f923f42db3b45de89c2d1aab4457d9c', 'ec87bc554aea45078631a1cca41c7ac9', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6fc8eb06c47e44208f1776a29a67e58a', '722700102d924327aab7cd4a1115fed3', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6fcfebbf49e6405f85447055ba2567db', 'e59bc55995794a6f8ca616e9d7bc4d0f', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('6fe5be0a208a4c3fa257a8c60d47b440', '5d4df7b66a6844aeb7d471c36c663f3f', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7026c55a332f4ca6835361c41a1ae98d', '72c18bf2bca74fd08787a1201064d3b7', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('702ea8c2586541ceac467c75d1dc5b4c', '8986ca0a345c416cb32decfc395f3216', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('703ee9a396054984bd8f369abf728594', '3fab7058aa9b4427832da125ec104724', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('705c5469193b45db970e7d68dda44572', '89d145ac654a4279a9c1b8cf35baaae2', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('706505b3874448cb91863ed4aafbbb1b', '697e90672aac4778b1f04f7dab9296bf', '43', 'admin', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7069773b59e34c5c935208f004b61611', '7bcee7fb919a4e0d97a00d702a6c1d08', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('70aaabc072404e01b515b94e606c544b', 'd395e7e8da3d41c3b6b8615e56d83364', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('70ce20963e404cebb1daece55d616c76', '11eb470546404690b8e940ef27256bde', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('70d6a6b271f241f1ac3fbdc7b97d8d58', '20bbd2f79c1a4330873dcf7c060205c9', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('70d847cc9f9c477caad31feeb9cd74c7', '0e039487ac2a450380b07796261810f3', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('70f2cce34d7845f6bcfe03b055851ba4', 'c1bfb78615864933be01343711d19417', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('70f6d4bab8694d45b2d2f61c7e75d8aa', '11fd342d5b654997b55561f737ddcc5c', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('70f7279c92f54560802272067f486c0e', '92a290c8f0594e7eb6c4938b19ba743c', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('71294fc0378845b3856533e015d66e0f', '05c637d8f2a14646938974c9c862a4df', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('719a46d088b844b6b9b1835030534560', '6e728b9112a04e1a9ea9dd6edbfc8570', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('72024ef6fa794104aec892a79cfd4a1f', '44441355658e40d5854b40d873d12703', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('72a5f03020f448c0885592f32d72989d', 'ca211b62ba354aab9517029f5a134e1a', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('72b37883d397437180161faf87eb7d6a', '1e060c6882314cb79c65499c1aabd528', '42', '系统默认', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('72c2f4b7b3b4478889f419d8129db5d1', 'c49539dd1529482aa5e0d08229ad31c1', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('72ef3c7d0e7345f58c1c8993fc8e8401', 'cd3b427d4f5744f98dfe2e8034809a98', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('72fb4233ba8b47b489df20f46678ad61', 'fb04968cafce490aade411606f2a2b56', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7357a8807ac049ae894efe72369f069d', '63321b29308945588b6bd0d6471b0633', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('73811f45b2a84fd9a6c1a803a5e91091', '52bc9ec8be9d4cf9893520091389742b', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('73bc7678362b409dbccb4ad36fb0d57d', 'f9bf2aeeca624b67b752c662639b6727', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('73e7f8bfe673460aaa1f7c98e4856555', '5ac7fe3b5fbb4056a9ab2d2430c5e82a', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('73f12c9349a84ec189b5c2d1e88e0b47', '54668a277f5449648714761da427056e', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('743b72ca66a749e6a656f480bf8b14b5', 'ae4bfbc08b394f08b66b91380ad1b12d', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('74805031184e49b4a7d9cd419f2bdec1', '73cf5a026cd94166b0165af45b3fe029', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7484e9b335264843921117724bd10ad6', 'a0d981ace3b0470ba051db25742bb128', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('74f9cc8012fe4372b9efe3781372cb0a', 'eac66688d23540d2afb3d2093d28416b', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('751ec99dd9834a8ba15d8b04e5a7cb8d', '716c3246fa6f4f9fbeb31b4556f88b2a', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7527ac07d97944888a0690b1fe612ccc', '6f7402f143fd4a0aa962defe20be8e38', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('75430fc991014159b17554eab3eb9d8e', '907b4152dcb24fad9dfc45d73c92f03e', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('754b4b3eb98e4a7bafe4aeaee0fd318a', '7fb23d2909a7498f9d89c29272c554e3', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('757062f755894d8da266be6bca88f57a', '1fec460b606f4413b4cd5f675b2c6bbc', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('75796d1ca0a64873a698e4f025df7599', '1a7d868b541e4f5789a4f18ff82183e6', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('758ca552154841d6a22d74c8093d776f', '3f18704e1bde4a93a1abe2c139f543b9', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('75c4d0fc3110458bb6060c76791b60cf', 'a6c3bfbdc629447b8f99dfc27d4fa4aa', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('76256cf269a642249e2efe25ca4d1840', 'baf749d721bd4bceb19d75c1cbcf3518', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('764202c893414b758d881879644a1143', 'bc64faa0824f43c2a0981731470c41d9', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('768cfc0711f144b8b363ba2d91501000', 'e42c0594b64946a2855f5e784b6c0a67', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('76b9f9c832834bf893d04ac1e60bcb6c', 'd2a38fba2e94470895e924485d8d899c', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7736667e8efe4d6aa83e3eb097b0017a', '2d61dddeb7de45cc86ef625a38cef462', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7738c47a7d3b472db27f113ec49bfcf9', 'f80cec60aa674717ae8e8d2c21f74c50', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('77714679c05d40b6a87854ee5a1e4a1d', '0ae80e15be764d7385dee44519de0338', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('779f4c07cf2c474081106d6765017cb1', '95d54af7ce4b44e1a2ab24b8a1f31e0f', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('77bf7827502c48a38ad634cff6a8b77c', '2b3352862c724f439baab7b71fbdfe28', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('77cbadf64cc04d5dbd7d29670bf839ad', '07347c543dd54ddfb921871a697f21f1', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('77e9316b3fd547dc9c7217361e48b780', 'c639b7252997472aa785811beb03d3a9', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('78264584da5d4d468b7dad57d11f7b97', '767fcac9caa148f0b9760a29a209b9f4', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('782e91af77914f27b98509a758b79a14', 'eb1acd0c6577487eb900b6df5d84749c', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7841cd47e2d04a6280b3323cecc85f8f', '6531113c78a547c5a7bb769d7aa9fd1d', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('78a6e3619aea48e1befdb4a98bc63148', 'f7040e621eb04b80aafc79d7ea34e865', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('78d03c8b54964c4f84987d235ce19bdc', '93cf6b68b9714a4b876f0ebdd7016096', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7910f9d5e3bc41e587209228dbfdd3a1', 'e28d049f3ba945628a1eb02e693ee629', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7942e479657046e4bf9f2c24dbb3cf64', '41f9c8afa46c4a50a0161c1fb3ba47d8', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7953456134db4294b5e2e3db10a158f3', '1f67c4de7cb54b7c90d5d2a979ecdb0f', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('797efd5660bf400c9386ab70f6591e7b', '83ed3a836f604eef8fd2dccc9a0e6703', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7981e5d49e0140e4bb227cef688e4aca', '8cbba270391c4ec7a542d6ae540974eb', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7996e860259549cba45dc65cee1c5855', 'fa252e9c12d447e8a460001b26ebfab3', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('79d13de1e0e64c2b9a1669c61dead8af', 'ed103f90a0f44e41823eda7d5de22adf', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('79dbe14138b44566830177f679cf99b0', '4b5ab9816a564a33a2f59ba78c9a1362', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('79ddbb4f8615413d904a3739d706f1f0', 'fbd7e97d40a64daab139d1b12b70e25e', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('79f7d447c0fd4136a45ab6d474de4062', '9352346a0efa4caa9806aef921e818f4', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('79fbf5bb3c0a4fe6bebe9ae242264d8f', 'e3870e469317431aa3b565a403f36e7c', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7a4fb2f8bb6d4cdc9df57fe5b0271ce5', '13ed19a668e044ea945d8fe3a6b65934', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7a575f8f969b48a9ac731d502ef48c9e', '184bacc50d8d4199a3272854ab64cbfe', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7a59633647dc4cc2b939930e633e0856', 'cf8c49eb420b47eab7a9b45cd330d5f8', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7a77c944380a4fb0adc995d0f679486d', '79c0106058fc4fb9a7543bfbb9157eac', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7a77fe33c6fc4e5f8fdd3f614f95cc05', '7452493df9d14174accf25e770493e42', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7b1e00e2eb9246d09078d01e5306be85', 'a66d5013d30f451aaa6058f81a35ea4e', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7bc8b419a5604ba8ad4e1303d5446089', 'e88bbd395911422fb035257ee6ca5c12', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7be5a618419f40de89b980a15e8f2d6c', 'ffcb2f9817d3459b8041765456279080', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7bf0c725361d4d7fa5cc00a9e8c84740', 'd909cefa60e54991a325af3764b2dea0', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7c0c2c17844741e4b45529c3609cb703', 'df781458f7f14a61a8df2b0a258f6293', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7c1b02ed6ca647f8a7ec1302a0b20bc9', '84c3fd2564944ffd8fdc04a26f332a07', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7c23301d3fcd461299b3f723433ccabd', '5a0b64acea2c496b9c4d9e6fffedc45a', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7c46db362ee8484fb419baca5d29fec2', '7b45c199e4e340f3958c3aa76f43cc93', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7c64e5edd3f34295a76eeccd48ed4b71', '631a5af1738f4dcdbaa43035240ca40f', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7c955d08ff3844e4aaadd6c7efb2339f', '3a28d31d412d4e6d835cfde0512cca10', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7d22ad01a3074383b0b07998488ae174', 'd46fb9aa6045496d9ffb60e1094b42cd', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7d484b76c1994d9cb5d55bd605744269', '4b6120598cbd4be1b9692cda1a329afc', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7d5e401070a649a085d5306c392bf6a2', 'e35ac8c82d86437f9db1da81428b44ab', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7d62eedc1f1e4266af3236dab004b94c', '71986583250b47d2a35976c5cf4902b0', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7d730d0fa83f4c859e0199a829386af3', '658acd988077454ea7eccf20bba1c20e', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7d78f1acc1584a118174399696497d4a', '51031161e0b24d4ea7b9cf39e947e9a0', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7d8d647764f646c19695a8da1a6625a8', '23b537b89b604e608eb5ebf633388715', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7d9ce4d4dec34abb978d80d7a9a8fd48', 'e9fc03f6c1204a3fb29973e7d146bf16', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7da888fc21cb4311a83c71400e59832f', '19dadadda5bd44e6b18630df74e640ce', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7dc6f5cf80f54f2a94d69a7307cc9629', '84891843b4fa4fb599a0fe18304110ca', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7e118685388d4723ad4536322d67887a', 'b4e8105d2ce6438cb399a5513603135b', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7e319883dd9d437ab6006ca419a49143', 'f81f99469dc54c5c83afdd7969034ec5', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7e32cad1ef12424c80772b12a010a47e', '6bdac4e698f7457688182d3a69244814', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7e33230eb44e4e019a64249e1299ba08', '8d81d95afcd74987bcc8fd3675cbab84', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7e4a1d1bba904ed3abe046f50acc27d3', 'aac56b6268d24af985c4b05f8ed937f9', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7e5ea0d5e84c484386b6fb61b4368467', '1bc55bea670844ffa7663d8e5b1248d7', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7e70ea9f3a724c68a8f6e20f81006f05', '33e9ed7c3dee42298c95373cdbecb93e', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7e80602a249f409dbbe0ad4ab1deabd1', '5d06957dc0b94a818277df9680f650c4', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7e911bfddd9d47baa8d8be2dc117ab5a', 'eaf378a1f6404d3999a089c4b86d6bea', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7eb1daec79374d5b82b487608560560b', 'a5960f392d2b4c0f992673d0508834d1', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7ebad8bb4b85486098b933ca9e34d232', '381b0222a0674e4c8919ef20fb43db10', '44', '系统默认', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7ec3c619670144d6bba4169e114a856f', '06cc9a5a25bb4c0486eb8d6434f20af3', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7ecf187a6d5a4d7db00f4e16ba8da369', '39a193e080ac4331b28680276a33fbdb', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7f1152f88cb443e5a5151006d43edfe8', 'b648b56550cb413786f36381a3f463ab', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7f3cbd5739b64e1d965b79139df463a5', '49bf1252d1fb43eb9a9f197b30e9978c', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7f6dd978567b4fa3832f7f14263db5dc', 'f6ad378a4d92495b976e850f9f23879a', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7f8c24d1ee344cffad39e9104f198715', 'f26d2d2f584e40b18a77892c4c257ceb', '43', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7fa90e74f89c4e238af705d62f798424', '9911db1865a3472ca67dfd02f9a09061', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7fbcb9aa13414b9c956846ef6d114c65', 'cfce111fe13d4fca85cf21dc6648a066', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('7ff00abce18042c6ad0a36e29ee56c69', '29026fcdc123433b94d1c36ebdae4130', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('803365503c96429da9f67c5a255e81d6', '5d1f76b505ea4512820ad182c0a2613f', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('806b7460784e411eb2f30d053066488f', '60acacddbb764795b6e50c0e5a5deda9', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('80746b8d7b954f50836c3761f52018a1', 'b5b1dbf8591443ba8e957549d2e419b9', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('8079c83721124f2982219f0ef98d2c81', '77ae21843c3243c0a155599c3b08522b', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('8080c072ccfd473481eccb0de1f12729', '7b1827d6930c45fdaf345837883679e8', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('81457e09d74b4799b13f1cdcf7727202', '158654d604c7400d8557b38b8ca41cea', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('819c13e6a61e4f759156a2d88978d0cf', '3b526c6fa42941ba8b04e8ed8221a9f9', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('81cf703e30e14706be7114e0d5fcddb8', 'eedc915eb634451c8096bce8b39896d6', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('81d7652421e242bdb761062042497779', '6a35e73acc5f4bd09d04b341a000ab15', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('81f4b3828c1c420fbed5a1a396d29230', '377c1d7e77d64c10b3cee5825f46dc02', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('8222e551406945fbbe4139b2ff00589b', 'd2034c9e90ab46f2a3d4853c05228ab0', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('826046de66e7469db3a916e508f38cbf', 'b3c9f43a7f58432a8ffc2799b0c8fd81', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('82731c7da6d240349ba0a449d0b864b5', 'cb730db048cc49a796d8dac5dcdafb40', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('82d3a9ac8eb742e5b576129b657c4fed', 'c8074ff2fd4f4d758798b04b09284890', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('82ff7a558693477ba6257b4db3e289d6', '8a89f291d4d24b64b03de507b7043a60', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('830479f177e249ba95fa26cd783e1ce1', 'bd4ea8338577477ab62851e5432d8868', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('830d63bc749c4cc8acebbf3ca8296374', '4a8fb3c413914e1c9036f48e5d11713d', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('83278d558e2c48c0ad9782267a24af79', '2478412be5b6408a922d35198bce59a6', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('8328a818f72040c0914acae0462b9e7c', '43df70a2722a41d0b70c44b03a26cf4d', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('83657c2102cd43e8afb3900dff763731', 'c030fb76706d49f28c9e67cb79328f6c', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('836b909ddd904d9da461cbf141652e50', '1ec06e3af76f43339657036dda184b60', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('837dd12f932e4687a9e3201e3b7d82df', 'f2b08f8f9ffd4ff2a860e05b3a9e72f3', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('839f7f5af4b24e58a2c166acf65771cc', '0b3fd904ad894ed0bad021c8a723a539', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('83cd24915cd844ba938abbd395659959', '5dad187b3c444fc7837fd369285b264a', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('83d17aa273d64142819f5d78e28b60e7', '6471c7aec2014e428f6f24587f741115', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('84175183ea6c41f7aa7700cc3c1c734d', '7fcd00dcb86649849d652e878cd044a4', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('842201f896e44a839fd9c11b9d3785c8', 'b2de3bbc51db471092c117b8da7e5b63', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('8436e833932944aea1297856e7ae15e1', 'eaa993aac72243b69724f2a4169f1cc6', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('845704ac564e4575b0a2df4797fd606c', 'bec41649fb364e068cd0391b45ae5952', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('84d6f18a752a4fda99ae6bedf3325c61', 'daab964541bc47998faa53ffb32061af', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('850d2021058c40d2ae381c7e90ff6140', 'd91ed22b1fd141efa0da269b8090ceaa', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('852dc8d5b78e4b5fbc8e7d32e805184f', '9203b42b37f5458eaa1dddbd25e53989', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('8565681c753b42e28a7a3f3aae28dd68', '2c31ced1c2e1474ba44e4065528a33ff', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('8572e52d3e85488b90f50b5419064c4a', '1d339dd5e0a84ddc801940f45f64da62', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('85972471a4964b129a5ce298b1615f9b', '419891a0f4a44f20a07adbbf63c90a7e', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('85a004ed1cd543489d87116cc71f8732', '16bb72cdc7bf4520b3decb91521a44ad', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('85b5322f10dd47d99151e654354a02aa', '818ec7578eb44bf1bc3e3cce4ee2af10', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('85c8fa505aa84b9d96c1ca5d420a0ff4', 'f0282465cce74875adb5f606133fad09', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('8639a8f1c13f4726b9fb50121cce3da1', '66d0d457b0dd4a2fb35bf4447510e8b6', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('86720dca31274900a13113a99fee5f1e', 'b36571eb5bbc4fa484cad41c5d6000d8', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('86898eaaf0f2445696ae70b974e1df9c', '9e591a7703fd456b9f22493662ed93dc', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('86b1170fedce4ead9da8be35545c34c1', 'ffdd33c8593e495ca35e339d98d54104', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('86c82325e7974402932c98cdcfd980eb', 'dad65171ee5c4009ae5deb589cf73616', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('86d0361c75424e16893651be8e8bdda7', '7d0b0647c8d244769dda3d02054f71c0', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('86e36362242e4f35bbca20c3535c8d96', 'f68ac02a03714df68ada7137ae5c6579', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('86fd4a2f4b6b4903bcb13ff349061989', '029896c555e84659b685f73a622b16ba', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('871bb27d721d47daaf05e26169d78d35', 'c8cc3cb3901043bea42d04c05d48676c', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('8772c776653343cd846f6c6b40e6fb4a', 'e4dbbba024d14bdd9adbc343317d52ea', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('8792dbd7b14d4c299a95778375e07dfd', 'a46a89e9043b4589873dbde62dc0b476', '43', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('87b2ee3752694a06b1ca9f583de1e9b0', '530405dd7c4343f3a3c3f413e92a530a', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('87da0650a4b145ab9d8a40e2fd847289', '9b591ef9c0b847e49a00033439fa2884', '41', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('87e7eed2b3b84a11814831b854d5fad6', '2138e5d22a944df4b1957b08b7bcf80e', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('88011e845ca5422aae157739f8c81652', '8840f335a83f468cad5130bbaa3d3360', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('8881c1165fb749f69ae99921c7fc6666', '5f3fcf5e15f34ceb91b61c5f3d406479', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('88dc9b6237224302aa264b9aba2a3861', '2db75cd50aba430398dd92746bfce4a3', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('88dee36dac7e4b44bc0d2ded5f6ede59', '696f1733cc1445da9a552837bc1a39e1', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('88e71d4fbc4242bbbf3c17204503459b', '3aa77a24e9504c898fbc666981b5cb4c', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('891267387f1c4726a2115b58cac76f86', '6be597e7326b46bb89550341d9e2bb05', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('8971851da54f4c00a1792670b14fc549', 'da5e763708fd4ed18936cfbf29e161d2', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('897d9ceaf3bc4269a2bcfdb5435fc35a', '88594bcc4a9f4eefbaf1a0ed2f360e7b', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('897e004dc91044b099247bfabeae43d2', 'a8fdb9334ef04f898c2bb371ee1a34af', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('897ef1f53fb84e0bb6c68a40d69eea19', '39a0ac773afb4506a97044e71d51d591', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('898fd73d2ed140a2a16535b766d345fa', '2f3c1032d0e14ec3a72f27f964cbcbb3', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('89940d0c3f2949108f8e1d513ac8408f', 'a5a70a4b84234b8782528f493e554410', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('899608a9db214917ba2cd961ee3e5314', 'ddd80dc75fe04ceba745776a07aef7e2', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('89b45ef774844a3dad7b96499a53aed3', '1d0db4162b3345feb8612eec4607509c', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('89e05d5718f14291a0fa880adba91d09', 'ce98e762ea2049229fb7296b70758c3b', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('89eb9de8bd54433ba095055981c0f068', '64ece2b2b8f54bdf92658b5c4b43ca0e', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('8a1f494ff9a44d60be02301cb0bc9100', '5b1d7eead2124bbe8e137a0b17db2155', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('8a4e51038b2d4b52bb1f553de59b3ea2', '6e88a08f686b48af95576348e419f284', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('8a57795b946944908119451dae55268b', '11bdd86a8f6f45a6a262396da35c78ac', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('8a6523c8b83843428fb246106e7d145e', '6702d2e6325244e4aeb9044d9091a343', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('8aa841af782e47c48147c005cca989ac', '4b2fcf96415d47f2892f0212fcce6cb8', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('8aaa7aca9d284bcbac1e055dbeaed08d', 'f55e9f6f51974948bde4bcf21dd643bf', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('8b14bbde07c0436b94b39309cd212854', '3a414471bf2f408287fcb67a7f8d89cb', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('8b909425386e4c50a58c63fc44a852af', 'faaa2cbffc934a08af74b09387135ff0', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('8b96db05c2e74a979dda79f5c1b0dbae', '4705c46ce51143b8a835190f6ea247a6', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('8bc7717e7b1f4501819ed9c6b08cc1c6', 'd01ce281d7df4222b3e61e10659d21e2', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('8c098af241644c86a96666311a8d4961', 'd1068882aa094de58c224c29c3a66ac9', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('8c316eb052f54852843704e96ae35540', '376058727e814298b8024ebfb022c992', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('8c520d9aa74e48f9a53033a38718db65', '6448528a81fc4cb6943364a3f395d2a4', '33', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('8cb9851b049e441e984ce03822f39d37', '5c5d9c6f93064b67a2cd220ed155f291', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('8cbe7c11655b4edeb446b74b837b2ecc', '8b158f30321a4ed5bc23d08a0bb32b03', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('8cfa8c39127b44a79188eab5e766f54c', '3e327696284742f6b1d1696d7552b9ac', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('8d0b12130d7a4fcd96e0e1be12251cb8', '23e537c181c243669d1e40a32959dd86', '44', '系统默认', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('8d4e502877d441b1b7631b48ed29103c', 'ac93aa6a0f4448349f5a4379efdcb14f', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('8d91433371a84cd4a9fc38305d6560a2', '6a3a9af1b2274bb1bee0a2db94eb29ec', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('8d92246e8c474735958a7b5e00c72df9', '8082be74cf714e798875e37b382554ac', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('8e6c576086384506b06f33aa94cc8eb7', '251eee30e9aa4d3cab4f7bd00d8d0101', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('8ea90b4bde9f4841829ec858abfc0bf4', '33e06f0e922c410081a243b101f4283f', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('8ea9260e70d9400ab4946b6005244612', '3417417c003f4084b45c14c7abdff98d', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('8ecf111f01c346c49b0d5a163fd0a808', '616674568ca74947ba96987c50cdd205', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('8f0db968e6734678a6f5dc7c36e66384', '600fd3620adb4df6bd775a81eb8298a1', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('8f166d3be9cd4ad2a84031aeb601c7d2', '8effc13838dc4fdcbc19fbb2a1828e9f', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('8f249332265a42c8aaefd6f3c8248f22', '00d73b50ac73422388b3e60f942c7b32', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('8f43bf159b194de695931fa2319e6211', 'f5a72fb5275e4660ba0796271c0116d8', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('8f5c13c3fe82440dac33fd3d38d05fec', 'bcf4d8d793e14e76b6ad8b5c77726b56', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('8f5dabbc0298470da60806a499e25e7c', '880d605226ea42c1af898cfb2a562df6', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('8f6ef1a6c8b741c8b44fd177e1896d17', '006c052348da46b2951b737c4c532919', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('8faf07215c024cb3ba79e320bcbf25de', '57cf47fd49944305a85e19a4a85cc4f3', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('8fb049d8e4854a6a99aede46897eb40e', '80a35ab8e6c041e19838da1cad6fc4bc', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('8fbc92c53f384fadbcf3b4f1832d3779', '70204c4f1d44498d8270a2f7d6f7e9f8', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9036400e1f7643098835351f2b2cf1bf', '0d90c4a6dbb04f26a7fca9dbad87f18d', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('90cbccbab7f14d158be7c494b5ed3549', 'c0e19f0bc12e4ff4a77714a3ca1ba066', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('90d05f45a20f4ac9a138dac4d56d95ad', '4d56918a3e29403d82179fd30c6a9dd0', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('90e62b9cc1a5422a8565a0c2703530cc', '04c6fa8cbe99473981314a3c2125c64c', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('91212cad95ce454eacfbe9770d418bdb', '6239efd4330d4b54bcf68e7e78a5d775', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9193109668a6416b93f1db731474cd9f', '37c2c9513a224d40a97614b4ad11a9bb', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('91968f5b85a44a32a326e10eee9480b5', 'aa0fbef457ae40a5b9f665009e5f5d87', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('91c355559bde4f669c43146c9935eeef', '782c212990b045d0839358786e4550ac', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('91e0742878c940ff84b786fd27be58e3', '1cd89c0b89c44153abd49af6d060889f', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9219a371e5c54b8aa2c61670aec5080d', '3db92e35aacf43a19340c1a5f1807f17', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('92204ea7ad484afb8914e1304c2bed5d', '875218a500b041aebf041968e354fbe5', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9244fbe867cd4d6789f97571772a5440', 'b61bb45797144399ba672dfa55107362', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9279d8e6cb024a349811d0b0827e6fdf', 'ebca89ab81554310913b66b8e387fd52', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('928f6e9b23cb47ec87e6100a29b86836', 'edcfe6fbf10f4b3685caf6644cfda724', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('92bc3347328a4bacbfd38a324107469d', 'bc5a841d44ac4ffa8bfd1cf656813553', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('92d6759fbcd448f4af3e5818bed1ccf4', '4628a203739a435eb984a6a3f6327d8e', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('93194e1daaef435db7604a949fc54817', 'aeb48e298d334796b19a993bbddeaea6', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9391472fdbec48feb78f139cf09cc206', 'd93abf98c9c049da872a70d6d1f9bf98', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('93993e7847944cdc93e47ed0b8e10b92', '4b67cc5053164eeaaddb0ede21730625', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('93a0ef8b2ec74fbf95f9e8277ecc4a92', '8d7926a8b8de4ae6b397add5cc775d7c', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('93b053ec4ff14d0fab464105a3ccb229', '730dcaf8912c4fb7b849b25399d61637', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('93fd1b3e183a4558a51c67a4d63f8c74', 'd34ecc524e7a44a7827a2190f935ff82', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('944faa06996c4522b54107bc791bf5fa', '302f5f3fad8c4b7d869a7459e358068e', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('946181fd24e64d05bb08fdf37c8022fc', '90c6cb2c2d34409cb06add1cde99f732', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('948c5a1495d245eb87fa9457025c5f8e', '3664984695714b5ba23b3c8298cb4955', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('949116f88fd24daba687444076f22da7', 'f49737b0c3ab413f968398412f20bb46', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9503b116783c430f8f848cf7a4605264', '0b160e50c77c4b0bbe89233dd95b85c0', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('953ea8c7f39545e6a706e32c5dd1c1b5', '9841411cf1c040d6bb2bfa1a1bfd18ff', '43', 'admin', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('95956db5a86b463cb69d29e0923c4a79', '708689d2f6a046aa8005f9b59befc267', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('959e7a0d6a20487b81bd03126d4a8641', 'e60ec5ff78014c9fa6bc55bcafdfce3f', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('95e7d3dec2744a1b954eb85ff4534714', '1f9b989e747847e68063ae9eba67627c', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('960a655c1422490499a866cb0b240dc9', 'f7755ad413e24509be1a972a6f3581b9', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('960becc15e6547299050c456119e7b18', '462bbc9deaca4cb5aac0439605938620', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('962742b61e5243e0a94ab3c3a481509e', '865270b67c9647948fcd180444a5ee3e', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('96433df73c7244a684200f9fc20c31aa', 'f5cbe311e10a4754a7525fcb4eef5b92', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('965fd4c404f6433abd09c70bbfec128e', '9aa9a17526dd4c819b24835ffbbee8aa', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9677de0a345f4349a0809a3240826571', '1384f86df66c4ddbaa4083f7d603cb36', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('96ab1fd8da1c4eaf91b91b37e87a5410', '4e6405e4e62c4a88881c340a2f40dd59', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('96d6506c11a4470c92e2c6f089bfedad', '010ad44834444c9abf6657773ba84d03', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9701c069db6d4247bf7d5199dea0c4cd', '24bc73e6d5c84657a1bfdd63d844d8c8', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9710ac45c96e446296f9d549a522d66c', '6590030ed1bc40f3a60eaac0ed81be7d', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('971c093193744d7697b05ba516eca0cd', '5a00293531684383bdbac09f7dbb42fb', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('973036693deb4affb135b5dcde1971fc', '648bb5d6d0194936b0adc24c6348b5d6', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('977bcf9e8efe45ba9924e4047d3f9f43', '303ba90b3a5a4a5f9ed68f5e183d4bc0', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('977de070ef664b729bdcbea03d7858dd', '23c846d191324c60afeeeaeecd33db9b', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('97f7892aa2524c64982a4ba3d1fcb367', 'b9f58e1817b94073953b62893e5a6fef', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('98083f67948842d58002588c09e15680', '8e7580bb96924d509e6d8d203b857959', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9834899e638440b0a4b93537d7ff6846', 'bca66ea81e2447b5be78865dc8a3dbfe', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('98407e75ebe74899b83ad25e36bc9eac', '558ba6fb725f485894253a88c2534d67', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('98444ae349a547f780e3e11df1234fed', '04d50b6a1c054826aaf74f1c462a293e', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9847367939bc47e8b70da7e5300bbbd4', '56743138decb4a06a7fdecbc9871be93', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('984d31906a8143cd9f9a44a05dbde825', '491f5b08cfa04f128329ab3d06138f4d', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('98608872c4e74dcc8d41960da7df2c96', '27e4771ff26249f79b8ccf49dd1a17ba', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9885e58a6d834ab3bf555f81bead68e4', '789f132ae3b6424295d58bc35d2c595d', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('98d421f61c8d476eab24a2f5f6f81e47', '9c123d5fd38d4957ac570ca66c6512e3', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('98de29b39e9d43f3bbf3f47fdf8bda3d', '698dd7d03fa74ac5bb87ae6d22635d9e', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('98f38013da774122a9917d23ef4365e0', 'c60b96b687d94a16b0fbc4bee08b7d67', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('99227a6846cb4f0bbfbab391986c3b69', '778ef0e4850e45589117c6b43b690990', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('992316f1ef534b989d9dba0815e071fc', '38322c8c1912441f912e3f8e5fc9fb9b', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('998aae3fb51546c59938dc4dad4825b9', '640fea8c972a4fec865144cb7225f080', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9992b7bbd29e44038409f0310d1f38d7', '75885e71096447ccb15b801276e1913b', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('99c937ee386b4e35b2c289bc36ecdcad', 'b8ae320120f042f7a5e81cc8f4ac94a4', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('99dd61befb3a4815a898abd01b4570a6', '4d58cb6f8c1649c898d3c39ecadb8dd6', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('99ff656c406f4c62b141fdc906176abd', '5c3481185e404b9497948706e939d060', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9a01b37ba3e74bcdbad0300f8769907d', 'be187b282bc84fe2945214a092752a33', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9a16903196e54f97b95ed2a5eff43eac', '9f2dbc49297d4e95abaefa2d4b3958ec', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9a36c63668b04955bd955f7127c98028', 'b79adbdfa1194f22aacb34ac64b8145d', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9a4894076d234550b513401ea16ffab9', 'd5829de89c624ed592f85259f2d8254b', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9a71ed15ea074831ae41f8e0925ba887', '2333d55bf1434cb3975e168b962b9565', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9ae3315365de4e06a065c96b68f40501', '78dea1d0aebc4e4e96c0c628e1a1b5b5', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9b122ee9e2904b4db4d8e090d7718b91', 'afc7de9bcacb47e7930538607aab4efb', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9b225e566e8a4969b9ce322680ea5b65', '6494da9f494c4deb9a02c1735689a1f1', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9b2a0f65d7f04ad8a03967212e7feafa', '2d3990b253834c0a9691a61cb9d3ea95', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9b33ecebe3f548c98349ecf76f70e0f3', '8b88cc11927244ddb51a931e457a89cb', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9b6d71c4ee6f4520b9aba00265c65999', 'a2d78ec080e24ec1a2dfcb09047aa669', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9b86156acb7d4a33a241e6a45a3690bb', 'bad0a0038f4c46bb82454a538c6a0f0a', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9ba33e3933b64bb98fdb013a557d8943', '7ba531c8e1e549d4a5dad00c64f02d3c', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9bce9b1adcff4b2cacf20c9cf05438bb', '2a3aefcd314c4140aa64e83015107183', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9bd59a5261d74324941d0f74473cf22d', '9ddedd5e407a44bd833d041e3b17c87a', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9be620e02a61427cbbbccd21d71d6131', '8bd51d5c629346e2923817b276357d63', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9c043fc7cf5b41a5ab03e94a46d6d924', 'a247e1bc3b5c45d2aa5d22a11b4f920c', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9c106d0f12354c2091dec7a7cacd1de9', '6df47aa597d34391be7c68be9e229fc9', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9c1b88b8b6fb410cbbbb0d90f3de454e', '00451bbd8197483a9efd50f09092bf7b', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9c2fe79b10b141efa93ebda99033268c', 'daf88da2d348484faa1295fe26998d19', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9c80cd47b9a641d8aec419cad9bb7b6a', '5a76ee8b69314ae6bf4493e86895e5b3', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9c88d50f27c84016a36cc87140565d6e', '6133fd78839f4512abe343239c34399c', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9c98089e4c4343fca0013431fbd72063', 'a15358e7ff6640d1b69e28a439131831', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9ca977c59c5c485ca1d7ae5b15b58d80', 'd95306d04512448b9e0ba83bcbd37542', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9ce1f5024a3949cd8ca2cd3c0227d927', 'd51740a64191424882ba40f1880bfd9c', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9d4096a76b464be5b101ba3e0c89d54f', 'c2d7c9a790a64ed7a143857beea6883f', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9d969ef4dc3c4aa6ac008906187edb1a', 'e8e6c90a07c940cf9cf6c70f335799a4', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9dad1299c1f44effa2a6bb9f713671ce', '7a89e72390004874b8fe51e95f19aa99', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9dfd15c2efbc42abbba1a0d0d6c625f8', '07c14b170288474c94b626291f0ea0a4', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9e2856b879c64419be1fcf01e05fbc6e', '3b17ebccdacf495d9d7e338f5e0b0831', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9e5e5103e20b47b28001398ccf126ccb', 'adb52a24e62f4d419d53853009f70d15', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9e618c1c318346739d24b505a12c5cfe', 'e17bb9b0f87849dd9f0d559f52f90903', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9e6a18bcae3a4566b970fc2270806c93', '70cd556b88e14a60b24f16813621e75e', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9e79122f3f014df38b0fc8eedf0e0794', '92016af5cc364edb9f25ff6f3a1504cc', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9e838f55ecf342eaba11583cdb6ce694', '42fbe9bde4404319834a381ed059e868', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9e9a70fe20f543eb9cd69b5ab9cb9d1a', '171943061e754ce3a700bc125e67be36', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9ed400d9db944e4591d3dd3ac0b52247', '2f2d02de0e964b4c8e72419403b93b9f', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9eee035447f74c06a0952e8fc479c994', '8c6fe6bb76cf40b5bb950764b76d9128', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9f0f00d350d549d8a3b7f46ba63cb1e1', '97d57ba1677542e192c7008f94827e26', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9f35fd7c13164457abe0fc1475ea69da', '3d6c7a6d068a4fe69d21b37e149a4d6e', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9f9b58de35f94e37bc75da431369ee02', '946b2b8c808f49469f48145563b6990a', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9fb3550a91734dafaf1d4025a0d23a0d', 'c133334ae29b427687744cf860bc3388', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9fbfafdb1ef64a519286fbaf0d0dfa95', '592723c1daa8402f8a38dd54b617eb80', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9fc441d651194d1d9a63040201ec940f', 'c471ddfdf62a4ebc981fbda16df4e08f', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9fcca65f4d5e4abe97098310b5e375f9', '740ef74948ce4f78901e985ac90713b7', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9fdc0f7cc09b4b3e9187ccd6dfca0b85', 'ddb084b946c84691958e61d26e37e3e9', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('9ff10366555f422da98a2b398576e43c', '4d61fc4727fb4bb68797395308b6127d', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a0085e2fc55a46eab9a10fd399281c56', '2cf179289f1840b59fa9b5c8346d17a9', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a01eb067a3724f7197a106dd61d44a95', 'b4926e4b20b447cdbaa0d8cafc30f63a', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a0448745e7084c2a81b01db044c8e687', 'b8b92173e1bf412da52ce0039ee81db8', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a05925edd83d4f69ac10520a64a68220', 'f4e8069a5017476a8d3033a33c7d0096', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a05aded747104140abea6727223c171d', 'b9f892d8efc04ab89b9214c744e05a88', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a0ca89c1f0ec462aaf5a0cc54789c777', '69664222d91340d8a9c00041dbaf75a9', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a0dd2486e6a14a50bbda3460517c2136', '7c1a707a7c6c494298ff4d3fae1cdc67', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a10c8094cec440af8d5fc3eea8240519', '5522094f69d64601b4c7136de14f6e4a', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a16552f096f44cd5b1eb025b6520baac', 'd2e05a68b2974670b5d5b016c05a479e', '43', 'admin', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a193a6c31a3742149cb44a0354619cbe', '46409eb0a52e4b09b59a5fd829c6f53e', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a1a99e0b8c664ea798062d9b38d3026a', '1758b6bd6bb94a47a3e2f1873f5544f6', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a1b3e01357734bc3a0a6e20725432f18', 'eb8bd847c1034937be77f533957f545f', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a1efc72c7bc8460eb06b8515413f1fc4', '95b954c3107e457596424e267c18136b', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a212255688ea409ea5a99cda191dc71b', 'ceb09c4a18064a879507e79cd21c7566', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a2251ecab7ad4f4ca6f871d7ac1016c1', 'b93cfbc3e3884ad6bbe1494683863c10', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a2284b9d0d51459b91f2ad464b3219b6', '697e90672aac4778b1f04f7dab9296bf', '44', 'admin', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a2562825218647fbaa5ced8b898d150e', 'c7485c13652f49ff80882281d77f6118', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a2d7b9e4b97642159d9ec458b8417709', '525eacab48a244e7a3cc0a2f6aaa7c54', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a30a695380a74caf82a29008b10fdf12', '2bdde0bcc64544568c204c35704b3933', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a3175830bdc04aa09938e8207c090058', '267ae813df6041c3834431c4e490c00c', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a369581f17734dd391076664738393a5', '42bbd85c923949bdb2bf7560be9370dd', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a3798f898e5b4760bab574cca8ddfd4e', 'bd124220634e421993ff9cb9afd8db10', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a37bb7f00f92452a8a0cbca573a891f6', '4bf62f6f6ee347379710a62427d83eb9', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a3e6f1b036fc4a1b81126d3126b2665f', '1f4a6871a52045148b049babe66ffc1b', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a45c0e51a4204654863fc4254a6dac8b', 'b60bf6b80f914c12bc6780c35167d7ee', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a48669b6463546619ac4ba53ead71294', '3e3bc989570c45798afd0d5ad2a3e4e0', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a4c2fbb3950b44758e2d239b67addccd', '7ffb5f031dca4c28804ddba2a9b707b6', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a521822efc794074ab5c6eb6a1222e81', '51e56879af234db09474d1b08faf1c1b', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a5368d80581a4c1c96cd017c13949dbd', 'b74ed61abd0c4f61940433c3648c360c', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a53cf284b4c340e3b807ca893becd0f9', '08d9dc76edef40f28d05997c28a07b87', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a5496e6f03e948139668d2d92b5b6148', 'b5e462a7f7ff486d818c85630e5a37f1', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a552e33473bd4f81b02787bdc5df6a07', 'ce6f90eb5fc44941b36636310ae1e144', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a5562d9490bd4fd0b3b0697cd9883785', 'd08a512707244eee92841c342f2deea4', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a55959163a174f91a1a1609f929d471e', '0091b16927024b8392f50be2a112d6b0', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a5d8287c4b924f4a816c88f92dc27af5', 'b313b2229df74fd2ac5c0d53f3911861', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a5e3e8f3906f4994be92bb726ddb69f8', 'e977b7f511044bec8f51c3e5dd3596f5', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a5e9884267104cfa80fb23dc458d48ac', '200960dbe8c0462fb2ecb8c7e6c668fb', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a60166bce47448158cc814a3aeab9232', '41d1147205d5475390dde2cf1e15b4d1', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a6339c5bb69c4c1daec6e1a07b9e6a93', 'd6a5914aad28421db470c9d7fa4b1548', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a64eac50f31341e48b43145d1b43f3fe', '8c470313199148878f63aefa954e5991', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a67a7dbaa2ae441cbaddcca48b64ae72', '70a44df0a9094f348a1516da0023191b', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a6922001c75f45d790e0b1b9d8dbe17c', '43877b103cbc48359a4c264d97d88921', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a6c70ea5d6b546d1b2de03a5e098726d', 'ab93eab5853840f4b68868523c584c0a', '44', '系统默认', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a7518067553045dfb1da83639aeb0204', '8dab9dc7311e45a0a4d221d3fbb0ac45', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a7575309f1d040ccb654523ce59ae816', '941ea97b9a684086a4a8c7a5f26efe7b', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a79403da999849e083c7f3c5dfa4e781', '5aede3874f3046658e9e61f51dd17f39', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a7b9227003294c34ad94ffe6afaa70fa', '8ac294e1f4c7416bbaf196a55a91ad8f', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a7c933e0fb1e4657988aac397f15e4a0', '7b5ad0d217374842b66b2d27652bf28b', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a81a021f82e34a0cbf02859615c23584', '227dcf981dd942128f7a4c5cc02ea299', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a83b623cfbb9419fbf5324e727b6d11b', '8b09902554bb421d908d58f4c9255829', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a86608f5b9ac473c98d5b93e055ae50b', '1ebf75029b4e43b595bfa014c002942a', '44', 'admin', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a86f9d48281340a2a02d1d73e2b4f796', '1901f8614d914492863e72ff2b27d9ff', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a8fe7965cb4a4bbdb27616265301ea11', '8c31e1772cf14f9295b3e8bfa0d713bf', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a91b3740877746338f82083c6fc3b021', 'b01d67f36d184b8a893138b3f76f2fca', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a98a7bd8f594440683e6642f1efc1660', '3b41d0d5c63744a89722c28eae3cbd2a', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a98e7b0cd9c6467d835c8441e2522ce4', '9ddc1399cb38454db1828a4503548617', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('a9e53d5cf04342caa5823157be611351', 'c2a1945fa8d541e3a8180d35b4bc9ff6', '42', '系统默认', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('aa0c7b5562964b39b7c306d16dfb1046', 'a5b252fd4618473b8b491c33fabe120e', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('aa63d15037054125b70a22c4956dfe3f', 'ecd6cc67195f4191a616dad8d28e4e65', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('aa68f995150846a4bb18aa04dc4f2e4e', 'f49f5a16325d4ae4a54d0000fd5942a7', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('aa9098b9417344a69513a5f4cd594f55', '1e28432d762d44d98353db21193f9840', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('aab1a374dff344de9669c0089b5f4eb1', '8b25e6d4420545d0be8fc677412eb54a', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('aab5e0a2033a4263ba0f90b2925ece4a', '3a6f12d50f744fe9932060b40abfc10e', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('aab8e28aa27448dea71f4c6db5414c5f', 'efb58a7089274cb7b761b82bb1437a7e', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('aade4c4a58b04658b4c77c175ad61caa', '7b3ed4c606e14f5d95da6b3548931366', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ab20fd974bfb4b269838355b2969c916', '469235d557394b85a53dfa5c94001ee6', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ab5d310d2a4c4dc1985d1ee7cc5a0328', '0511f5902cc246369fd473f209f313cd', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ab5e7346c0e84e95b33d78a0513e8623', '644a14f37358461b80353b61a889dd6d', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ab6e27163f3548ec830d57b796323712', '5543c219735c495bb3be8465c7483340', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ab8614dc30d845fd8fc37b537c7a9192', '7eca6be06d9b412990bd6fb622844d5e', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ab92edc0e94140d190e5f91f6249a6f1', '9ca170aad7114acb8df9bc860e1eb308', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('abb370bbe10b430b9d86d29bfe8aad1e', '90478eaf51fd4a2296eac751a42493bb', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('abeab59a784e4987afd2a65a3ccf71e3', '7227c289035a47f2b4f41653736be86d', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('abff874b3b9d4640afc134101a10785e', '50de5835d208414291a9648ab20ff771', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ac230b5e76a94a65a9631936dccbdfb3', '6c5b45b1e49f446a8280bd37c88bb03c', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ac2323cdbd4043dbafa1789de4a5eb51', 'e25d236e872b43f28276b0910901cbd8', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ac24615190d54b398ebfe78a579b8f5c', '46ec01993228470892e9d315c748408f', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ac6dabb040a148448bef24a3a52869c9', 'cb4cd72294ed4ec0b262ad6a33b7c3fd', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('acd8c0b4cd914eef9ad4886e5e113857', '0d929276ad634879a4001486975b6bb2', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ad3ac07156aa4dafb6297bf1267735f7', '696ec2770bc548ad81a3fdc660170895', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ad40c0598dc34b5ca82ccf67d50a240f', '236373ab862d4791b7364a19a1d78f31', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ad58402ab62e4296a1034c3ec04145ff', '6315bff53821422c912911034627ad66', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ad6faba6100a4a5fa287ebb4b9cdb08f', '3160e8e060144b1a909010a473c226e0', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ad789115eece4ba0bc87e28864d46e0f', 'c6703fee63824acdbf95c144ed10c996', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ad7afa97799149dd87ee36499e47a408', '35402cfa36e540a889f1e189e0d13b32', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ad8c4333eb4543b8a379b1766bda4b3a', 'f9a4bbfb3134474293676ab3c380594c', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ad8f5db07a294beaaa8adac504aba9e9', '90299ab1b1ac44ec9f934b16cdee73de', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ad934fef38e947afb2aed1b4d566ac4e', '36dfa12819d94e35aa3311ccb94867c5', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ad94c5445ca04c058462da689a1d3efd', '2dbdc93bb7ee4900b9baaf946d1a07a4', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('add38e96b0184e48b241f350bd39e126', '812adebbe9c340f7ae6c92b02d8bd8a4', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ae114ddce806496ebd3f1b8185ebf41c', '7c55831f868c4971b68fd1eeba804140', '41', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ae1ce4ac87e34b0d864b2f6401d93869', '61fd678ee0094b9eafbeadee239da515', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ae38588f21334eaf9ccba3edfdedd010', '482572c9eccf4867a08271c141623983', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ae3d3ec1aa9244eda6dff7f16e62b8bd', 'ecdc83127286493d9427334b7f265b6c', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ae647a80c0774e5c96b8909664660b8a', 'e1630ee5f823491a927c51cd88cd7937', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ae8f1cb15de0464e802805dc0da49399', '095c420b7756404aa3fd37d8b772a152', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ae9060b434974b94b4451a06ba32bed8', 'e5883fab7c04487e9d53cc076450fe5c', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('aed7e2087987484bb2e539a53db957bb', '826f2d0b67f942b1ad0eda63ca102ee8', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('aef8c6643eef474388b569c84bdd5be1', 'f831ea347bed4b19a3bd3220d7f91b8e', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('af0e6da450f042e6be2c34c0d6c79871', '4c1b16d66ed940c6afb28ed564fa70c9', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('af100e03c5fa41e9a720f112d18398ad', '6a1af9c16bf440aab39bbaed5aaa62b9', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('af5ed2f70ecf4fdd82ffbd38d4b464d6', 'f991823a9f9a4df8b8c371d2e0082fee', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('af64ac9bf6654b8d8570bacbd10ba3ee', '4aac4fa6c75046a9b9ac754c2b8cfb44', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('af903f900f414d919c223ab297a17cf0', '38f196439e224c2e89171c5a794ec4bb', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('af934bf0942847d88dd53f51ed61b8bb', 'e58330550fce42c8bd5873d8bfe28ac0', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('afc8310884ec488894c63f388fa7e628', 'db9281e95ad7406db048404c8ce3edb1', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b004c63b178443f59fc38f2a021644ea', '97465ef4b69b436f987e0f5f353e0339', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b01c873ea2dd4d0e82dafaf4f3ab5e1e', 'bae7a2f6ac144f17a5ccc4099bf35d2f', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b02337ffacde414291d5b19345626fb6', '4eb2a42243b54ad9832b61c22aac1993', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b0273acf24c34a5eb4df7e2dac1a89d5', '87b857d411364aa3890b7b2fdf11cbae', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b03da16fe7df4aa7bc0e8ef22c7be8b5', '9390020b8c0c4799b76dbdad7d0e49dc', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b0a9bbf65d79476184d8d3b0c78325b3', '8f6069db6da14e0295b8c5c4c41eb6f9', '33', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b0bcfd5b54a04f33b717bada854e5a23', '91717166c1c54c89902ba47c88bdba97', '43', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b0cf09d31ddc4559955c99ce418d3794', 'ec4262f4d855419293e3fef35b0e222d', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b127ee42212145ed955ce6c36231a85f', '68c3e3c284b84e808883a7c44ca2445e', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b1311692607f4ec4a00732e60ad7383a', '2090063805104504a092cb8f1ba319df', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b16d4aab1c1648d981153a3b373c9968', 'c3d4386d33874c25891ef99db42f7341', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b1a1d5e91d234ba8a4d302013700c7bc', 'e18b8a5b6af54c4fb94e7f50df816d06', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b1baa2b34d054b1eb6c1b0be5c4e4ecc', 'f87a17e100264084a5131a4ce8b881d5', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b1c69a32021f4c419f960eab44263639', 'b206a6d8cd2c4f5d87f7ab5a00d0a787', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b212a64fec174a618f7d8230c47e2b15', '61ff604706384f61bfb6391369b3ebed', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b21cfcfbf2774dd3a71b645383ba82a4', '0d0e395a7bb242288d0d138625c61c69', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b22b4256305f4fb383701029f987996c', '0b285e39461c49e89de1d3604b6035b9', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b27cbed39fd14876b2e9614a52b3cf15', '027ec7d3bffe4229a45a7750f20b6442', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b2a82a4d73464f6cbe44c4c79363c7d9', '5980ceec812d4b55a7898ffb7e9b367d', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b2b6b9e86aa540eba4d75a8004a6833b', '9e09955a5e074d7682a639f65ae61530', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b2cbc0e79bfc4d32bd3581ee3ba919dd', 'ac6585f0d4c14cf89e478dee36a1d38c', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b2d51b48560d4972a5c156de76ec909f', '7c118002858d41c28224a95abc647c84', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b2e25bc3901643f3a955b707b7e96e07', '44977249c3b54a11bb33fd1d9e254d5e', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b308087d94394eabacfd0d4bad868fe5', 'a13346b32cc542d58b73f0474907a588', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b31e89fbb38f43489469c159b29f95d3', 'b60d0f8e04cc4696aa2131c6574321fd', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b3248b2b2c7249539135281c09183807', '9f221e9a52bd46f696c088209b7abd80', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b34ac6372f384327bb41d321b6265453', 'b6949f140a9345aa92e9e6d1e43f0f0c', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b367fe62c7e446e68cb67bd020a5da1f', 'c4ae1d8128cb4a32ba4f77fe91eaddab', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b3a8823e7dca44e092b1c9fe7896f356', '6ef50e4a9f4d4913ac9da0acfa8ace57', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b3fae68f04db47eeaa534fcd612aedcd', 'df02a10252ef4cb5b911a59edf72a34e', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b3fb8d59472c4a2b8f187f87f72d174d', '9d70abe9365a4ca1924db1a08dbede88', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b4b6c93e06564e1b8cc3d006f298e10a', '3a2c97787bc5434e9af6cab3e68bc4bc', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b4df4d33e8634b5784e5026a78aac2dd', 'c7efd9d2b3b84e7fb9d5892bcb1a4a94', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b5346c116a634abeb861e86632e4f966', 'a106f800f97241559fe4e5a6f8d1a9f2', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b548df35483042e7b241826eabea7ca4', '2ab7f1a0ae7342819a9dd5a22c4e2cc8', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b5522d77f9e3496caba7eac44246cf08', 'fae64beb5650454482caa3845280882b', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b5667fd7ee504aaab8eba72332cdb0f9', 'fac24859a3d44886a0b7ff19bae3647f', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b56a0b8b17ee4ee8971c3aa09a00b884', '6b889ba5e1be45e996f80ba82a90c3c0', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b57b2da86fbb4113a6b43e1ca4cdb1ea', 'ec522fe4e59c4e43aef9c05fb4ea4de5', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b58c89cc2fdd431e87d06a18fcf826b8', '761697026b9e419a97d79b7453c34a32', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b596f75f793e4cc081c23d5b8ea800c0', '01edfc103a19480ab8552d9a6deda5dc', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b5af15c880a747428f51813db4c99165', 'cbd59d40f8d2455c969f9246b740f062', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b5b7fa2369bf43298db0e3bb2c7ceb89', '6df45a8f72d94f268cd9ab2cda3435b2', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b5c6fb63419448368744bc8bee083ac9', '52d13eeb5b6a4403ab36918776020c8f', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b5cfa5f2fc4645279dc57265e8ed161d', '88ffdabcb17b402cbea6129d32eb2f5a', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b5dd6dd091e244e79fec07005bdec8da', 'ec110dabca9b425e83a4e515cc5c12e2', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b5e37290007f45a5bad955e9b90919dd', '608c7c5ce50744889ca48e341e673f3a', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b5e6f28e69e64afa96f188ebb628ed17', 'f9a9fae7adaf4562824abc44fc5dc399', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b5f2517d1e5f437d8bee9cb2cd7fd3b4', 'a776eb8ea4c14d61934780eb6917bf87', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b60e65272e3046b18f03554fe649e004', '0686ed8e4cf8491fb1ecbbd51b1e0ddb', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b67aa62d3c5c483181fa67473148d00f', '63bc5a50707649f2abaca10ea13b20c5', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b6ec5e2eaf7e4962aea0825a729281d0', 'a192cff4279b41a4bbacebb9710a16d5', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b6f5fc48941c46fea1594dedcd2fe21e', '501303e49f2246ed99eb0c14dd801f57', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b7018242cb9241118ddae5fe11f92f39', '7a79648a92584424aebbb6ffd9349852', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b7090eb67c184adaa8fef6ae25afc19c', '543d20c6d3074d5eb67e6b848f9f8253', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b77930b7ddd04dc49371df1b93303411', '2542d360a0bb49e188646a1127f7200b', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b79d5045862f4802aea941087c4637bb', 'e6d1d4363b7e4001b6bb908cbc0dddb8', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b7a7746937294b26bf1a4018945dc854', 'dcc6329c327d4a648c1cab9cada7b838', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b7fc1b489cb748979294569cd70f93c8', 'e113647993c34c87b24038c5c586ad2a', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b8090e2471f840249f33ef0a12b90ea1', 'be4753c328054efb9774f7667ccad35b', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b81dfc36e971445788a28c1fa6f8bba0', '2a80f159389348ce91fa749deb147e24', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b84568b5c3cd4b5b8cc47e7d4c0eba50', 'fb621106d9c54658ab64b6894b8c62cb', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b84b55105c6447df995e7bc1a7658ee9', '7ea67bcbbcce4f9a99b104ca5065ac54', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b86b9b906f124b8e87b204319faec9cc', '12a8ae5b45f34e4c8ea72ec227d39539', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b86dab603c744269a7ae95a8ab8eeb43', '3f32945b64d648ada43aa5f5f407d669', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b8e8cf85edd84165a00cacfadf117d04', '232f97e0782045a9b310a42624e34215', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b8e9a551e9964957b237c9b3022a5eb9', '388436bb2ce84fc48f8744cd00886275', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b917f8ec7579432d81da95aa00523785', '79f1255970a64d809335f25b81105f07', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b92fc43acb6b473abbc6c7cc1037ba49', '0111492b0f4c46c3871f01119cc5c42e', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b9695880d3d6499a8b55dca2dfd5a72e', '582d3899737c4748a00e06ab0bbabd03', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b9b6c6ec98d54ef29c3b353335abcbd4', 'bd35a09ec33949bbb64c753d48b1ee1c', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('b9ba81f9c4dd4ea58590dc93db9ac929', 'f0a19ed4ae4a4ad991bd4a87371d39b1', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ba2c5f1ff96042d9a265b912b935e0e0', '28a52afacaff417194daf27ba8a021a9', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ba51f443dc134f83891887c52997fdaf', '7a65d09d30f64d8b81a33eb835b3ed82', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ba59cc9ea54d4dc6ac23af7179a028ea', 'de915a4a21c04f9fa493f67a52b12279', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ba8ae2c992534c1a8c9bb61f1470cd8c', 'cf4aba18dab049f4b55e02043576a47c', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('baa19eb0f2144847bf4b3596694cfe22', 'eb134215e8e948c8b0d7e0b093913f54', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('bab7aec012fc46b7acab68e5326e0957', '941ce20d1f3a4037bf199d2d6a81ec6f', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('bac470c7f66d43ce9df89f3904ee81eb', '8d860669f2a9494cb133f9fa4c9a31ce', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('badcd9638ec04247bea37f785abd856c', '247e9f2e7ff543fba8424f1efed07cc2', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('baf7dcab5b414fd7b933461cc44acb74', 'd146872b97b648a1b04d94ea200197cd', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('bb65cf18b26b47b2a68519648f4c6811', '501069e4abf44869b49c08df5686ded5', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('bb929983acee44659b0c43fd2bef13a0', '7da9d16246494cf5990a18a7f51a0993', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('bbba3036a05343578f9aa167bc2e68b7', 'fc1967206d004705859c59a563447e48', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('bbc2490e8a6f4826930e549b8567285e', '9bdade0ab43d436b8635c828fe1b4711', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('bbc5f9571a484ef09c2a70d81bd35455', 'd8894faafa6e41c6b0ba7a120dfffb08', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('bc03ccb65ac04fa1a1689345632461a0', 'f51769a12d804e45b6e5422296a49580', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('bc4b2e7af26d480f8825399963dc0376', 'e65b47e4988045d68cb9ade2467456d2', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('bc7e517847ec406795b84e25974e4852', '7f42591678ff4abcbcfb81a4429ff0b1', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('bc9e09a19c2d40359db9a78b6724ff12', '874704abb54d4f8c89950fee25154ae3', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('bcc9b1eeb88445e3b78d89a22a81a5e3', '1853ea19a6ba44c4a015d2d6365b78ee', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('bd1afe0df2444d4c85b5f3fe01b62d7f', 'db52ffbbacf04d90aa3951efee8c7e33', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('bd5a050f3afb4a7c8362deb7de42cab6', 'bac80b68735443a28ed4814620d69968', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('bd717f9725e64272a4b7a269a1923b07', '628adbd9410740b09bf413092592b55c', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('bd9324e41b5644bb9be8d96b7c818162', '5c1546a6b6fd4fa7a516107e10559eb4', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('bda478f649fe446c86c3ec1470111a2a', 'faea61b1fd4b4645976d44c3ddabf8bc', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('bdca5702bbe648429f9d8e0a9698edfe', '8ff48c9b26af4e938ec377bb30e327a1', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('be0450d2f2474a98b597bdf02b6ed123', 'e41ecfda458c4a47b45fe417439da062', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('be2978738a0240c39cb906ca992ee1be', 'efcdf1170d6c457896ff8d5e3542ba6a', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('be614f51672e4a1aa2eb89ba57c086fc', 'bb2906a08f1b42a2b48fbd4582b173a8', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('be61fcd0ecca4a1cbd236e2706e6360a', '097c7d01428149e59ff6b0a3a5f1bce7', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('be9f1109d8144992b2929bbdda688b37', '42ac1f694445427aa955bdbf6dc75beb', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('beb0532566ca4756b146689dd9ba5476', '84737663cf044f60be62bc77997c1a37', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('bee0517a123d4c79954a40bd06eb2838', 'd7fdfdf7a33949848735a5b965088fc4', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('bef79ceb863440f9a56fac185dcbe9a2', '5763fdcb222e43e4a0c3e067f983eff7', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('bf3e20a24760448599d2d485c143ad5f', '5fb7cb1bb96446af8494e86900015a0c', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('bf68a4ad3c2e47b8b25b0dbc73d3738d', 'd7778b08db5b4dbb841a54ae26071d25', '44', '系统默认', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('bf6fbcf19675401d996ff703ed03b571', '22ac1853a50d400ca98ce8302034c05e', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('bf936dd7eb55428da2f97c8530418cfb', '2637f2e0c0e5478faacac4e7c495da48', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('bfc93b9326fa48dcb1314b753ceea0c0', 'c8a35cc13bb34e7dbef2b84a298fddf9', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c01d42a181e447e6a90791a51da7bdff', '1f7a47489e864e74b967f507e2407bcb', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c031d487326f49ba95f04cf0945d3fc1', '4d00ebe8ebf94c628b120e15f138ddb5', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c07e2237a82646449b5d901a37da2e3e', 'de7884bf26014053967b58feac40865a', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c08baf061cd0408aa87ace0a96f2a9cf', 'c3a4fd3c77ea4b79a1277f1399c82ea5', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c1051b801f08483391b800545939e3a0', '7d772b70931f43688c4b54beb716a1bd', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c108add92d16406b8de87a47d14278a7', 'affd8eb3ffcc4ac2ad833140c109653a', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c10ab9c520c9466d9f7d8ea41d959327', '8c678a99e6534145914ec6205d7839bc', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c141958f4e8240dd83bdbf4c8ae36144', '115413afc4d94f24b5ee6ed70196304f', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c145863df5f54f5c97e9b8b2af88ab97', 'e764339dc1fd400daa23c7c9efda814d', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c16f0ed5ea924ef2bb787371c06dce75', 'f2145435d5934eb98d13912e2cd0eaee', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c17e7eb581684b2c9a97117fbcf3d902', 'd01270a50b3646bc8dfa069b44c9ac63', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c19f090f5c464f64876f6c216e8b5f15', 'dd33a227e06d46df9f117d8e6745f396', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c241a3b676fb43a393cb3fba55b1a889', '3ecbb955835a48aaa7972bb8c97512a1', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c25125d820f94bbbb22343671ed976d4', 'aa30381d2b9b4ceabd55660f3b10532d', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c25615212b6c4c418306b5ae5e59b43a', 'd7778b08db5b4dbb841a54ae26071d25', '43', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c261052b1f50415b9dccbe641795d5c6', '102955ec8aa34291b7bfa6fee1557e92', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c285fa9adcf849be8e9e0bbe35be7ec4', 'cc77722e9082471d94aba96cd212e8a8', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c32c36b4a526490dbcd590047f86c62e', '799d68ee2d6e4001981147ce45e2a9bc', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c3559d55b93f413989b713426973bf11', 'a912c26b58c743d3b10f316566d66c7f', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c38645f440024be89e02d587f70c3731', 'e18054434b83448a8fec7a63a1c0b8f2', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c3988d4cf2d0499eb9517db54b48bb93', 'e28a95ca0abc466ba85e9810b697ffb4', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c3a01712a0064c24a8f51e8cfc12043f', 'c65de02e3ea7452a8599be5d672d4712', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c3b137b52cbd475e952525cbbd78ffe5', '0bcdf5cce5d045e2b6d1b226d2daa479', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c3d134d532b44308a5f4a32693d4a5fc', '72d45bfbe4d3485fa1b9f5ce5d72d8d1', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c3ee520ac5b64ef4907304a5fb064bca', '4ba2966146df45b3933a519d55317a87', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c3effe1fd2174894814246a62dc2d0fe', '44e88d3d4e9745bc9bb53dbdabb4d84b', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c3f550b255334b72af7eeaeffaaa2eec', 'cc7eda91ed1e4dbf98980c1faeafde2f', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c4559ba26eb14e2086affb331df27870', '80ed7e0d610943eebb1ed0042482ecc1', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c46056c55b6440b28aad9a491f0899cb', '5169f72511a146049d09038ade2622c4', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c47db6c9a72e4c7ea224e43b2caebd25', 'cace910b1b604cd5a1cea76530cd17c4', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c4e691bbbc2d4cc283c963547b92a111', '32058e4e9018494e92e6abd762ab76e8', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c5618012c6ca416aa2611d53067d49f6', 'ea87f4c121e945b9a2fc05c6b08ef112', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c58b801232d545bba1c74b0dbbb1405f', 'dc027398bc6e4a9999a551da644ccdb4', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c5ab3b65edb9486393bd14759b9a5bf3', '1dfdaf7d78274170b59d969e7398c1ae', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c5cd08f0739e451dae670ef45aed0361', 'db91352cf98e4ef4bcc0d86b48792df9', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c5d800f314f8455fb16e73fde2e0ff0c', 'c1994435d33343c5a5a020a620700a02', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c5e98485bfba4b8394784c9223b688da', '4f5e062ead8a46478a4acac88e55f01f', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c5f7d85244b64d76be07989e6560bea1', '758fcc415e7c4867a680539a69f6c4cf', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c5fdfd3db7234ee2898990b5cb0bea60', '2607d0de53454f799a41ff20a7858f03', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c6116f7202ad4c3393cb2333d2a7c9cd', 'f9b1d272319f49ec950f6c0c638cafaa', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c61815e8918c4cfc91ba2cbdce2bbbfe', 'f08d0ab8e41b4f08923bb0470dadb4ac', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c621e5123c5f4b25a62c4f5b4b26c8f0', '389bddaac58243289c0936ad9ea40216', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c628495204ab4cc2beb49daa28b8a7b1', '2ad3b66514b543e3b8be8e62e1e81b55', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c639910bedc84fd680253b9317a9a7b6', '8742385006174e679bb1d276bb0efe9e', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c64b008f4c304daebc8076129c18867e', 'a6eed43a8f63426c859bcfcbd1cd20a8', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c6655b9a2e0d44c0828b1c44dbaca104', 'b47cd8592d7f4758914212e6c2b19a28', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c6bee2ea8e19453e9478657bcbb4ab7d', '1e060c6882314cb79c65499c1aabd528', '41', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c6d656a48b2a4ed08c7c250c35ef4860', 'a6dbec4955c5411ab6559d22d4791f72', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c6f933deec90452abd632b57be08ed2f', '1eabe75f33414a93b4fad3130f773a25', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c70ed514440a468db04949a039a0491b', 'fb1a8ec51e4447c79646c8bdbe882611', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c723b81b77624c788a6ea3d8d9fc6ec8', '99e9792acd3c4870adaa7ebc4cc4541d', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c72dca7184c449379bdba0eee8777b7f', 'deb8d4a4155c4176a791304a9a617b1b', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c734eba8db034db7ac03ed18b49e1510', '11788637a1bc45aca171be08a0739ca8', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c751eb13c5f54795bd823bc93c64065a', 'a43354a8db27435286d33271e80bd0df', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c76241226f034eed8da74af3252a8713', '222de6d314ac40fda361918a5c414223', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c78fd13249024f2d8d736dca360b8638', 'ae98aa319c534b0c8af1e80c73c7e8c7', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c79829d87213460188ecf480b9c185d3', 'ab3a8f419a3d4b9294fb013d91203726', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c7bf632577cc441fadc2b874c5050846', 'c63ff619f40344ff9b344bbab196f29e', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c82ed8e772d94b6f9e239b09062fb461', 'c61c9926bec64b3c9bc6a0474292bdd9', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c83411f475004b949f77ae3368c6d6ba', '7577fe09a06b45f3a067287988804cb2', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c88b8e21620f4ab99f8dde60f8d24b4a', 'e0f28551953c42309ab6fb9c516927ab', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c8ac38fbfd7a4fbcab6b3d21198ff47f', '11fbbcbee5a94e8cb19bcf07aa7c2318', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c8d31b5c04a24df297f6529de4301e94', 'b82d1b9a54c34d16b8285032d9bd5b55', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c915218083d5421fa29fd37b2b696ab6', 'c798273567bb41d7b6dde62db47042ca', '43', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c9227f4b0e1b44299b078765a8b9709f', 'fbc98be5937940fcadeaf14b4f450540', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c940e240959d406680ecb768518a7151', '4d5742fe09a842a8916109326f918282', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c97275e8e4e64450b6cb39d2f2fa304b', 'e44f0d44f95b4b4abd44f98c74e210aa', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c99747941f374590a2835f543041f6bc', '2195da34ccc44a0188147aa24487c3e5', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c99b6025fef243f585726152d1220747', '55f4cc981e404949a15f11b9e297c521', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c9a7fec77a154dfbbe31496db7ee2f58', '6c76adab246b4bb6950e7e2d928c4c50', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c9bd0c0ffe454770a6fb58c5446449c5', '3ac8cfb7f296400999efc77fb312722e', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c9c822f4899545b7bba4284c7658f2eb', '7e8583eb55b84dc4923956f9ec1c6db9', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c9cfd14d8d8e47e4bf3b7ea509e44d2e', '75153db0e69d4b189838593c354a6b28', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('c9e2948fdd3c416c8d9ecea1b627445e', '067e07f1f7b84684ba762e83338b70e7', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ca2cf04b70924b8d8ee766af09d96953', 'd240ad7fae134139a1ee6370bf248d53', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ca31db914c1f4775bef1247559196b59', '9a86dce5a80b4a5b8ee3bb7b4e4ebea9', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ca5df70f6e08458e94cfdca8af4b50eb', 'b3fbc20746f146afaf0be96b31ceeebe', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ca70445bfa0d431bbaa3fae7bb44c644', 'af19956f6e6d43399c9ef33b286b530b', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ca721936af824b48a5dc83c868f28628', 'ca4a86d46aa04d608d311f70d48cc5a8', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ca8d0f143a7c4fceb2e5a4e146758572', 'dbe389e72108457eae5b401d6d030c13', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ca98410b04334554a78a2b06d2354770', '65dfa92bf33b45cda5ce5b6a584ecb03', '41', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('cab2e2ff07dd4855aa79969d5fff3771', '422b6498991a4a1ea591ee05a2e184b1', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('cae9a82e89af4a8cbeccd6d124a2d567', 'aaec9713907a410da5036f1addc5718b', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('cb01022156a04e76a9434f6d4a98e60d', '9680df58a45d4ef1a0b8fa0fabb162c9', '43', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('cb1d847bbeef409480c45e51d7eb9742', '000d21141f234ffa9e2d713e7384b51d', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('cb29a463b4c34ba0b4cbab64c1c18162', '4151aba346164598879ac210741b10ba', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('cb38004c046d4b92bc4f1c74f0397769', '0b6c2b75eced4bbdb06518988afb7697', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('cb3f7a611bc5475fa1cf04e7f16bd894', '884d5c32dcbe43f4bd90339f84baf5e2', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('cb52bdd5eeea4daa983146b8f7ced2be', '533f05b82bd946ca985ca7f14993b7db', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('cc62c207a0db41a1b7cd7f6be2e0f08f', '992f1cdbc6e4423d830ed3e0cc19cf21', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('cc9c9cf4948d4b109dec5bf37fcf6896', 'e71c8f042d304b25abf1e0d4cdab9a71', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('cca1b6e7a9cf474e8ce9842d1f5c9e4e', '0df2162b7f6042b984935760bfe931e0', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ccda7fbda45b4346908366743c5f7ef0', '2ce5646cf31145a6a0622b64c4d14f76', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ccdfb096851349f9bfcbd604171bf97f', 'b0c33910418340c7ab2f8305e94c3359', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('cd307a9583bb4e99a2a990638882f383', 'fd8ee45b75ad410db77b40b08013542e', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('cd66c18599dd4a4bb6f700e70d17b057', '5d26bc85e6994b7daa0c5673d045c035', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('cd723696e6ae4effa9c035072d4b5a06', '0f2bd86751754823b7b95fcceaf56bd1', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('cd78c115c36d474ca2affee403641a6b', 'af5d0b2c09874d5eab1bfd1052c29044', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('cda2394c02e14f199e202984c6d291bc', '04142b50c1ac49428ebcc6c4ef82e599', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('cda2a7a9e6794ccb9d8f7ae2aac63845', 'fa7867a968ae4c50ad55989d3d039652', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('cdf70fff13684da8b04aace10b79efd7', '5f23122aecdf4b428985e4dd87a1df27', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ce2beab9c3d84364a5f19beb7f1d4aa8', 'f5edf821d1244695bc093a9d6e6c690a', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ce325c8c5e284873b35089c9c7e960cb', '62cd69910eb64e71b1b62011c6d9b094', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('cec38af894764ff0983f5ce7092070bd', 'df84fb33f5944f21b3876bf0ecc109b7', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ced1c3f853e54ac7ac8aea11ca2342d3', '06d065cb98fc460db6eb81ca4d54d2c6', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('cee36c6fda3a4ca285ff7bc3c7221991', '093a90c100114f629e86ad7ae50994c3', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ceff0755df9249cbad8a235b2490283d', 'a4f50f84a0f04a169d2818832d41ecdc', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('cf11489b42f543d7a5004e9873cb79f1', '4ac98bfd69b8433cab162cb8998957e7', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('cf3fb705f9eb47ec98ac09b029233caf', 'd5247e27ece949e498fea1482cb36671', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('cfcfb1b97650427788860479560e6d61', '679f0630da7245d8a0be39f59025c70d', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d0108f403273402d83ef1ccefd2906c3', '8d4d5b792c574780a036666b9da60686', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d01421918ad94f9da6c494c2713881b4', '87ee1dcf7ded432491a332167f362a79', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d02540fd02fc4efd918cd3c5ab3a194b', '55f7c76dee36406eb9e457e5cc4d7582', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d02622ad4d85460b9837d3664e7b9474', '23145cb84b004183bbdcc7d177c6d6f3', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d042ec95c3fc4c0f81a32e3d3ab5a697', 'cc7de905142041f185991e26cab1f62f', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d04c3ac2c19e49feb4e82485794c5386', '44bd249592de40fd998139b1a6bf0bde', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d08d63f9d441401ea6f14ba280f4c822', 'a1288a18a79a41a1913d7b8f9687cefc', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d0bc4374fb4246e7b3579450edef5501', '296796dd35d54f61b2d52ecb87e103bb', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d0e43f9abdaf4843b7134039494fb8a0', 'd2c8a78f1fc54c05be224861338f7e2b', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d105101d2af44250b8a4d906a2890b63', '138360ae645a464c9772b1dd531e6560', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d105b59b7c4a4d3f8e76001d51324fe4', '99badccd15644fdbbdae2f0040e2bcf0', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d183dcf934f74309bec70b7404e2804e', '2698a3799c1f425eb5b6fa70c895cf99', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d1a50e56f2f94da4a6bf54b9f47f297f', '8b6248e780014bb5ab38e100623c46ff', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d1ae06cefd8948a2aaa44e3d3256907f', '680596a7579643689591cb9cd9b3b251', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d1c3e60036cb4e5bb8631ab2fc89d60e', '8758e006b5d849bd8d7ef28f28de0c30', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d1c7c8454a0b43a6b0b7f5c210d1bf99', '0ceafabe9ac74a44ab8516b155c15d91', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d1e061e1020d4c4ba296d2d3de8fced3', '7f6914768d264bf4b54a08c75d713181', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d1e2768ab7e84809b000104c32b99a34', 'e91ac66e9d2d4ab7acff41539f76a5e4', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d20e03f8f35e417381553c2cd8678ccd', '27428d6df07847d585d028515f2f7d45', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d230ba9c30ce44b8b422003a8f9bb865', '0d5ece6e1bab4434af6d6f59d40229a7', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d251c78d44c14e769edee87c5d71d786', 'bd9c7549bf5e4e50a89807e278595788', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d28af7492a974bb1b6861e68a98d037a', '4650c20b1f2545379c0628da6d0a606f', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d2c71f727d044ec6aaff1c83cd01b1c4', 'a6e2f90ea4414f38ac83607ea9446416', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d2e6beccef374402ad39ed8d4fdb95ae', '941003b5fe834c7a83f80f93c92dcc08', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d332aa3e600f423680233dccf8e5668c', '46e49390ab3d4c109aa371619d476d0b', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d33570ad5eb641c282ac91224d570a32', '144e5d9b7e0e4b028cd7f7d8aa8eedd6', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d35419ee42904442ab4c20d91135c648', '63c418c7e0124c2d9a6e49bb0d705138', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d37b20dece404ebfa53716481397307a', 'c06a8b5379344e0096e066df908651b8', '33', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d39d23b0761a4a4b8b75497d48dd543b', 'b09fc99160c246e1a88c81752b57cce6', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d3dcb437665e40b8abe0f5f99e52af7a', '7f82b27a187841cf95730d292d9ad59f', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d41a6874ebbd4a2f9f5d6ddd55c45af9', '71098387c7334529a9c742f892af12de', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d458f8ef01464d4cb937fc7f0283d241', '6accc68207004b598c02308fe153f798', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d47bac4aa04243e2b1ff06dff0725307', '049afa9fdf164856858f3b6980d58679', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d490380a93244114ae38f734b6d2d0a3', '4f64fabf3d1f4292b9365006cabc6a14', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d4aeada0e0ea429bbec9decd42f96904', 'c87b3ac795894a16939498bf8eb5e07d', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d4ba8c92538e4aa2a9db034e7f68b0f7', 'b17bc0e339de4c3dacefc880af8b8740', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d4cad18616b04a68b481cf95b31f45b1', '3f97ebbf51f2471da78f9119f6bc188e', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d4e04d69a7994c90b9931232bf2b7d61', '5b485c3d783c4a849be57d77d7b6e025', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d5083ef053dc42f38588c419edbcd367', '1cda5080be8a432fa514b13afcfedf2b', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d508f7768a034cc6a1cff943503c7275', 'ff40448c314b4cb89c0128217983d676', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d51a1d2dc77e457b88113de301ee633c', '59bb5307025645edaea7adb2e72c32ae', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d51ce7bcb93a4229ad23ab16fe5fb5a4', 'c0450b8f3f274dc7a35b32500379c2ea', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d53a3ec841a24b259e0fc625bfe99329', '1d0433ebe7d641e6aef493cea047e9e2', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d54df571a417468ab24327e2b8bb5f32', '3f33e1e2b11d4acd8946bab51106c5e4', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d5573c00875340379d597cf099ac4d94', '3247bb31321b47139366895b1eab4cc1', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d58b1493f7cc4923b7b0562cb3dc8e13', 'c4c0cd3a990e40e08eef1dea865f6915', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d5be4d7f105e449b99812c51c1a9e177', '55f55a732f7c47a8b5043f16bc8120e8', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d5c8a184b92f403bb1627bbb4d6439cf', '8c3df3444b8a4208939ac5b16a9e0b37', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d5cbca9501b94e14b16cb1fb2529bef8', 'a37a152d42a74910829a11d0212edd68', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d5e89311cc5e4697a81c829865533a46', '8ecfc0827e174d53b3a6d521a6205025', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d5fe79bab17c42b3b41886e45f44eb6c', 'f910da46db794eaf8236cab93f008052', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d600606ccb4946c2b38ae6cccf797f8b', 'e831a016ede94423a174c820b5dad179', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d63f9cac4a154b4ba50cce6f2a963722', '6bd59ab7064643ea84e67ed8e81b1629', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d664d79420684a928692cb94cf708781', 'a10e8950fbcb45ed90189af4d65ee50d', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d66c1422029049128c97c0a9373c47b6', '56014741efb1458191c39aafc340f62e', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d68c1be21602432e9e959f75a9cf5ced', 'f7bbbcb694f24bdb9a8de5beabae8666', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d6a52110190740f7ad5efb279562fc50', 'fe153b2284fa44dca8e13281e3886c7e', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d6e15004e89847568b4881b545a4440f', '7332a5dadea646a3823fccbbaecb806a', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d77298b10bfb4f3ca03ace6b37264aec', '769808a706f44cd2a0cdede5bbc6f6cb', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d7ce28f378444d4e8856bf30f4c87bb0', '3c73948c2027490d811743c09fd147cc', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d7d7d81dffbc40758b155ef99f908f90', '01b0ddc165574cd08414713a37a2050e', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d7d844ad2f654a19a243379583d9baf2', '97278ed27b154dbfa74ab26e808ad918', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d7e9dd33a9544b54b35e15ee440921ca', '4b49bcfc85bd46f795d3ad43dcddbf1c', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d7f8e0deee5442a8adcc4ea601a78016', 'f847675317484c54aff9ff0b8b5e0d20', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d7fb5b83675b4b2cad77d446c8cbbe9a', '82f895345cae4ca686bae599691123b0', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d8003412554e4366b7ae85b3e25896db', '77a1304eab3042fc9220d45c78593a51', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d8259903304c464496a4bf6475eb7e16', '624a02b03fe04fb09024f092b91e5496', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d82f7d7d60e446c0b5fadc60259ec2b4', '738cf285c9d1425d960491dbfb3e4555', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d83d2499386e47fdbc397c94bd6e1935', '381b0222a0674e4c8919ef20fb43db10', '43', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d842c29db1b241a39bfc2544e44bfaf4', '1353104a33ce4921aa447648c5ad4ad4', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d85426662ba6481aa8fd67278c54ea6b', '81ccab788cbe4ed480f2327f09ee0d7d', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d885a50564d2498dad40ebb6eb0021b2', 'a5f03b27b0ca4947a3168cc8776a93ff', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d88c8a1a2d5e4886af5fdc2bccf78189', '17f4ef6f781e4cafb16f01741ce82b7e', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d8c920cb945743369152ab1adf02cc66', '74fdb5efb6694378b15bb93a2a9efb89', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d8d7dbfcf8164341b88e705501f19b94', '43591fc9406148a395bd87e57133d4c2', '44', 'admin', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d8ffaaa51b5f444c8bc3a4919b9de02c', 'a51ae79cd0ad476f89a1223bdb110170', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d93d92249790489bbae467fa84d1933f', 'd1d6962693954df388c376a9016754d4', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d95d1c5268b349aebbb6465a849f2a78', 'cb907c6a326642e896fa91bc8a2e65df', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d960b30c373643598b0361c3180949a3', 'd4c523deb6c44789ada8b25faa0e917e', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d9c26abeee114965b2690896cf79cc76', 'c2a1945fa8d541e3a8180d35b4bc9ff6', '41', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('d9f5b0d463834b608b9980bd31b9f77c', 'cfc09c4fdb864bada8589c3abc0abd4f', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('da005c9c74ed4b3b843a9d86867f217a', 'e0cfe5b0cf394ebf9eba5237230ee0f2', '43', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('da0aa2a65f3a4a63a40aadde3efb70c8', 'e70a7f3bdbc1463aa14305c947821f0a', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('da4188772f85423985515e9fe38557de', '4fc07bcb92db4142a3ce41a78c7bcb64', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('da4fc458636d47d6bab7cd5b40907d6e', '2f67a4ab335f4dc8b6a34fc97a985a11', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('da97cd0d5f4d4d2e9b5552ec50e07565', '50de89cb1d9642dea239c8a86413ff43', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('dab77a711d3c4df79cc4800c100e41d4', '4360bc53dac8463b82afea7175544127', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('dabcd8e3e802406c82a18bd0c1d4a7c7', '374f20e769b84d23995627b1ef3c845c', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('dabd0cd750504029b92fffe367ea8f2f', '814c0e73d05249f3949a2c999529f148', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('db04fef43f214d02b7155d7aaf37bf87', '8ad4476e8e284a76b37b072cf8da4565', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('db239d336ce84d5d84b7d6b80f1ed311', '091d77d9e7d94711901384958d0ec941', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('db5571d80c07497db39e8bfe4a2b778e', 'be233f0f76a1409e9addb3369832668f', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('db6681f683f04d89b28c89f05a2ed72c', 'c9fd41c41ff04ba9be6e12bb574c8e7e', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('dbe40b0ba5274b9c8f745d0e3e8d2903', 'd19578d718ed4736b587ff054511f0f7', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('dbff286ff7804d889030a3b1e96822a3', '1248d2bf5ffa48c682987fc1f327013e', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('dc4a6df631c24d659c6b11293bff91b7', 'c89b3a52c5ef463ea075f34d51868ea2', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('dc85e389ad0248fb93809d3b24271890', 'bc63fd06ff2a4235a04f2d8f26d74a43', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('dc9a2db085cf4da7a55c3466c01d53f4', '444b1f7a95234f69a90bd3ef4941a3b5', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('dca493991a6b4999b732b90d32c87f95', '487839618b304f178528526525643509', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('dcc69eb49f83440d90a0e2cd2c34d2f8', 'be22c30d297e47f485cd1667bfbbb78e', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('dd29d40551c947df9308c890d3d1fa48', 'ff667423b8a541479a6151332906fb85', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('dd881455457649da9f5958eae6d0c2c9', '4867946468d74ecb8aa4b4f1d141c1b4', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ddb6ee17a3654211a6ef4592911cfc95', 'a924fd8deba6487eaaf2e66e28a9367b', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ddc92bd04da44836a4547f1827d79611', '15ca2d29862a46e38ddb5b39ca02f8eb', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('dde102b03da548e8a0100b345ef13494', 'ae6e63e708b34ead90bd464dc7943105', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('de35e74fdced4310a5574da3056b41fb', '6b1a2c6feef843b281bd5fa9ef432b21', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('de399a64127a407e934c6eaa207a8f36', '47d49bfd5a584aa798f9a98880193634', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('de3b258c78cf46eeab169edbe90d25a0', '688da8bd979e45d58293510f39b28325', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('de3b89b04a0a43dfbce5eda34afc2e5e', '68c62b9c31cf4d31b553163c2ce11dee', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('de4d35520619405391b0a353745f1771', '3edf9a9d9e9c486db0b1de7a7aada06d', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('de7c1ffc68924b6380e022236a6bc735', '9964b4c8442e43249df7e4a4cafe16de', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('de8dd4d1d4264732ad38b731062a8217', '75b96a66e93142df8ce9032818428ebe', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('dea59ad14a334c35bf423db9748f54f0', '4fa0c7823fae49b0811f5bfb0000e4ee', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ded0f936c5594a17bb6defe9f2362c67', '1b141914aa384197beef10946918d119', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('df11f5b3d3a54c05a406553dd8dc0dbc', '70a897529916434d996111c3016193b2', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('df142ff365ca4acc9ca8bb24b7ea411c', '5ac45e0de77b4e43b6570714b7c3e953', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('df18d262b8a24f13b6ff4fde5045ab10', 'f7bdffb152c14331bec0c0700a4e0f62', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('dfa3ffb44116471b9d9198dc871c4f34', '6bbc4f19389e490e8a557e3bc1aee580', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('dfd2ebfc3ddc4696a78d3ea602a1d206', 'cbfeecfc491741f094089e49a8f1f597', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('dfd717a1e6e648598e817c6549c3df38', '305becbc8aed479fbcac502cc45c3dc2', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('dff8ee1428e6428f958757f766fc402a', '4d05b86f703343ce868a9ab1944a789d', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e0007e1f454644a1ae35afc16d71ec0a', '68e4723ebfc847c186c5a268bcd41867', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e08089a2a77e403cb63af05acd7c2ecf', '06cfac854e5a4001a1f5663a35cae298', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e0ae42e63abc4ff6bec3212b10e442d6', '798837dff5154d6e998374b8e6a2c52f', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e0db46e78fd548edb96355721df87f43', '185b6ee471e54a10ac82ff61c0914d65', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e0e7414f77dd4fcba304a479b6037cb2', 'e7c2b09e7797412a897a36af1795a157', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e160061bcda84c5487894bf345454d1c', '2921bb36c5014b7eb02e130725c08147', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e16282bbb3c04e06bcba80c1f0c6a873', 'caef98390d124f049f93addb01e90060', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e177754d2bf144ae983dcd18f2105ad1', '8c26d9fba4fe4414a18eefc157eb6327', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e1df67509cab49d4a1f55a6171c45cf6', '23dd2bfc8ead460b89daffc4fef55fc3', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e1effa13ce014f008156017d6d36d9cd', 'c4fdf661059a4dc39b9bf508e8875ad0', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e2282582c01a443a9122f7165c533397', '9700ae96b5234077a930e90c6af9ac8d', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e23f784220c645fc85701c0ffa8d8181', 'c4a673ff864249909f933d36edcf6f21', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e2a42d156dba4d88af27e0deb0496514', '63e67bff33364193b540a85497e772bc', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e2f6f4ed02e743bb86b8e6d83b1a11d1', 'fbc412e5e1c5406d9e0cd4bcf9aaa3c3', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e302c7ba11e8417d8dd93d1b67fa04d4', 'a05bb9a267a54f19b085dd5e1f07a4ef', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e31d069f865a49ed9010d7b2d016fcd5', '0c23dd49ed894c8b9092ba8de6abd313', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e3c2da6647e84949a9be2e6c6d6a3860', '669029200a59462f82f4aa76fba85b6e', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e3c9ef8bb8464b1aa063df67e9867dfc', '3fa40819dfa349fca1851fc15751224a', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e44a815882bd44aa9d44110342131949', 'c37965b280ab43dabeaee31bd2d8c2ff', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e46e30a0a8b64391b2efa19d634d1ac1', 'cf1a2013fa8d437a929de17a35ece688', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e478c96d07f74cad96fcada5dd3cb5ae', 'c40b64b021b7485ab5756447fc7d6a5d', '42', '系统默认', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e487f24d5f174a51878dc00aba148991', 'bf9fa4b4b29c412181f89725727f7e14', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e4995063643d4c348cc642886d829f5a', 'd3277226fa4f47baa218cdc1dd590c7d', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e50dea2dc3ca45fe8416613319b586e2', '79ee36afbbd7484e9c9aa13b686c0789', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e5162ccf06b54fc8a5ca59526697c3c8', 'e654467a0ea746efb9907d2544a03543', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e535b9cb978e4592a3cb7ac0037ae4c9', '29ba75079ec948abb56bc09afbfa36f2', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e53995a12ccf497c97cbf159325ff7bc', '887eddcd6dc24f5eba52d9cf7bee1b27', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e558427fff664f8d814872fe25605d59', '38ef4c57e1524ec69721490dab399fbd', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e5699a23b6bb41f0b01a4809dd9660f6', 'e1397d330d4f45d09a693f83b1978861', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e5a35c8d4f2746c7908f8c7b023008b9', '88365938abb647248c175008cee3b200', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e5bfe4ced10a421e84ac29df3dda02d3', '3866ae02086b480b9ecf19b03b8c766c', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e5e3d70b646b4460aa6926fda5794c30', '8af4ffcbe79f4858894491b6ba8df226', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e5fa416441fd4d4da275b458ff6dd723', 'bc90c5f86c3d4ff3b07298275947d9ff', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e63695598f214cb981e6899bbfa549a1', '8b49867541d347f380a0b7e2330948b1', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e64f384fac04415589891a94e5e02e1c', '6dd07b41a1fc471e934f99582ea9c33d', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e6666c326f2a4d2f8bc8c3ed6549187f', '791331083d314f67b117ae2204d00072', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e6a956e2dba4412a8d3d37f77509f3db', 'ea011e565614478bb292f59fe7a7bc4f', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e6c5d46b9d9f4dcb8cfdf727408f982d', '1ba1a50777c443c48662ee421d6b5510', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e6e0bfece7974a19960f105ce3d6e821', '0b1f9ddae13040f4b73f76e856bb3d5f', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e6e36f81d7b340dbac1b1e38cdfd91f8', 'aac00c780a744870af43b67b117882f9', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e6f0d4a6d09f418592b7cf54c9b13481', '84edaaf41cac4f62aabd91bc600e668f', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e70c1338d39c44d3bddd8aae212e14f6', '23f830e0dd4a4624a9d687872a56419e', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e74b5d3433c148fb8e46d731610eb6be', '6b169c8c369c426bbd1cfcc603944706', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e76b5deca81a486d83b42c4a221be1f7', '63eb6f492e074a38a4b2c1b28cb05f01', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e7815e4e6d3e43c98de2ff4759f52162', '76399e860bf949e4a1bfee49a945adf6', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e7e86d3da91e457c88509f6bd0307b06', '1bd9ebb834e54daa903b1f1b7d592574', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e7e8a089dc8b4ba7af02920fce7c1d4e', '76fcd30f1716471d94abfd57ba274c26', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e80a7ce503594ed9aeff052e90e30b47', '8af76ce0d8bd4196a8659bc9d09279c2', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e81942a0c0f74bb4bba99690001991b8', '67251d4d67324ecbac79d0aced2d068e', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e8267a8f4f734156ad017ff79a2e1cee', '9da6aebc1d494faab2fed63476b1f68b', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e839ab7aea774527a81846e52a687169', '8674e62ef57e4212bbb30df67e8a88d7', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e83b37acfb954541952b08af6603210b', '740360ed665d41c38efd083fe7f86c24', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e842f77339da46558ba574ca8ee15d5d', 'dceb8f7619354c7eb5aa75611eb71a18', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e865abe2baa340aa9f8338666e538303', 'dca99f1bfc9a4339adf5df86562ed56b', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e8664e56952d42ab8fc4ab3bbfecdbed', 'f824c962f5e2472d937ada10c3ca6174', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e86ed85448244ecfaca1faf808dcd47c', '8d9456e6ebe54f36a08521919aaab0ff', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e87090caa45e46ff92cd8206325c9540', '73c016eb02b048c7ab6e036a515abc20', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e8aae1250e2b46f5815f19e759369f06', '4e3984eebb6545689689bb1716c59082', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e8ae9472d14d4a5787c70ba06add2113', '3fcb53c7c24a43e6a7d09b2e63462a6e', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e8bb4b22c3f74deea7094be1fc31a4f6', '22e68681d049499c948a84f5324a7620', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e901a7c81c48438f9cc32efce3dbe3da', 'd0f4c62c13424d5fbf6a1392f5923c6f', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e923f733c15543e584d9750d45523970', 'ee27beb4019049f8be4d431f7ccda375', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e9425d78f8424c63b6a40253e8090988', '920c834c27664a4d848a4f7d7ee9719c', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e95775af53334e10aa2a2beb0f32022d', 'd53afc205bda4c629ddc34587f38b53e', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e96f880df28349c8a8a7382e9e1ff18c', 'b95df6bc916d40c2a03a00739f4a80bd', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e988b9f317a04f0c82d33f4611ff9223', '0eb53c0613554805a3ee7429580b1dcb', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e9c5b568b22d485eb0130674b8585303', 'ac8d6b0814b0443dbc87bf387f857612', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('e9d5045374ef489dbe824e65339a4d82', 'c0a60f255547490a9db2998db607ca96', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ea356cd5654b4691b696da68296407fc', '0ec4be43282c4f688014d5b19b753eb5', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ea371a3e7ef1491fb1f803c12a35216b', '72a610da58e942269e1aaf166d363a01', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('eabc2380992a467aaca51625b2dbe247', '630b698808204b21a686cf10b0f64013', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('eaf7fd07ff124f3fbfac6d9dbceb92fb', '27ee4cb6242a4717849d5e31a91a4975', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('eb0d6299fda24cfda005e6458d2205f1', '426b6b71437a4ccb9995bf0ccd0fa194', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('eba26cc7ec3b4b9ba5cc5e0d7fe15b89', '50562d64ae364426ba306bea3c136e6e', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ebe47f8039334ff983dbde8bb0441051', '5ef7ec7f871448d49bd1cfd3cfc4c427', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ec258419335a4e4dbb0dac991d41dfb5', '8f7f46d6542741efb5258f5679bad03a', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ec56640900384ae2b48f72092c56219d', '2b3ddc923be440f694a0614c89ddf3d1', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ec80a666c44c444e9160a036a0534378', 'f4f9979381464fea97c707ed340b0466', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ec8dfab5e83144a588489c28ee6c24d3', 'f57a08f48c5d428690bf81db8d3e8766', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ecb7a200812a4d24a009f9aeba305dd1', '2a653e38b00f4e6384dfa06ca1182ef6', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ed0d1b0410c84122931ae9683ad96065', '2f6117000c16444d9174d2224dfbd5c5', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ed7b3843815c4ef7b3eb758b2fa60060', '49a67297a7de4b38abb625b2671741c4', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ed949edaadc24841a0d1cbeff9b6203b', '30025c9b3e894d57bc91a73f6fbe5524', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('edcb220d698b414aad89e36c8544f94a', 'fc5a2741eb9e49b1b3048c6532e7b031', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ede08ea3f07248a18411e93e9e7ab636', 'e33cb4d333d5435a8ff10911a6635d98', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ee7a07215bbc415eaa27c217ed972f43', '267ae813df6041c3834431c4e490c00c', '33', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ee950555ec4340e688b6c84861be2aad', '33ca0537ecfd4d07933e8563af987450', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('eeb6b417aafe49a19c9834d74278f80b', 'b71ebc01971b4be689b351a6636a452a', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('eed01bc5507f485aa4da066666586409', 'a6baf62d0578404ead425db964454943', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ef3c7d9262b147c0affd3155ff3f52f5', '6facb49b49334df88f7e493d0993f4ed', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ef414c3c57ab48a5b18f88a147312804', '65fb271e2ae444339caac4d760d11a98', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('efb7fbd9ece34238af731c070f1172db', 'dd51a207dd9f45e8bda4278a496cf30a', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f0099a829ac54e5fba24f90504910c0b', '804b8032551e46028eaf2641cff3b7c8', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f043e6e292a6490290d5da30be8fb90f', 'd557d8c31fe84c478a4ed1527e2bb800', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f0b378f62e044df184114771e7fbd0cd', 'e4cdb53ac3f546368d0945d1c272c5d1', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f0c129a840cd4392b9110cd94f2dbc2b', 'aa690d910ead4faf97493c7764503806', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f0c9d83547b74f5596a2124a811b4163', 'fff447929dd443a595deaa004df5da05', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f0e60bb39e37487a91a242bf5bf486d1', '6273db7ee1994fd68987a46275796230', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f0e9fa753e3045c1b139e8f193eb00c9', 'c81e3bc3f71e4a5b82dec1e1de3b8b0b', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f0faef33f86e49699f6371ccd04eaa77', '448d4d9dfd364e0d84b6bccdc85f80ac', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f11ffbcc8ef14dd3b74a9ce24d264398', '54ef0734254642cab3d3fff310e51225', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f125d68bd97c4b08aa8e1b9c91c12b21', 'ad0f2e80a6e74f11948d9de05776e28e', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f199ce6e1ae741a2b369f480cbddd055', '776c7105dae944f7804b4ab9edf8bab0', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f1ae785718ba44cdb4c25410ac3bc004', '98b44fbe882f48cda393c3b698041dc2', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f1d1f51d5b7d4e4f9661650296c3617a', '4b19d54668544b91beacc7d78cfb03a2', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f1edf98693a3423a953acbee27e29709', '5ead52c0100b47f184eeaa016f17a522', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f20a625eec814c828d2e30675b435f3d', 'b984f610e6784c02a0ea1d5e73e95485', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f20c0a46c8844b9fa62c1005f62d4e20', '7f42d77ce6814b6f94a435e69345e0a7', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f220a4f302e241a28be3099f4edd44ae', 'b76d4613399f430989150f775e0f8d1d', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f28ac385d16c49d8ab3282e4702acd99', '99073ecbeeaf4689a2b6614e63ae6394', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f2c2f29e687b46039489b77282b4f946', '657ad7643ef24e8eb00e3f902fde4f62', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f31a18754d1e48158233fc1d1fefb3c9', 'd6d40b935bb244e2b2fed48cfddb2b2b', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f36f3bc0e4754d62bd37619e57045ca2', 'f4fce845666e4a9c9d772da4bcc2f8ad', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f399ef8c5f8a4735b29ff2956ab8852e', 'df20e4b529014396a3d2966c29cdab79', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f39eeddb92ae490db276e290489cc9c0', '039b8fa4c6b446d6a6f9a1fe7f4cebd7', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f3a652f3ed0845789938f19e35ded5e5', 'de0f4fd3b35e44ce8ea5fa1ca6850611', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f3c987d53bb54ff08a0f6dcc914a2b29', '5c459c1d8d324cbe9b86ec9849585a3f', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f3e88daf28bc439988e8870bdfb80fb3', '1606d709537b4339866c80f0257b06a3', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f4083385feca4beda0437e15158a0482', '90fd4c55184a4f35952bfdf59e1b2254', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f40aef3701b84797a529443634631913', '29b1c1e13cdc405bb3f220fc8bc99e6a', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f4811245758c4dc596cbb4390f7bae18', 'be88aefa3f994c46914181102690c035', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f4909ebec12c4009b0573a0c1a83d7d2', '6e4179dfac8c4224bce00e8014f1330a', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f4c9f028704244da9e4c277b70e3165a', '2721f620a7ff4c57bb68e53af2de20f3', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f4ce998c9ae44140aadce2a59653d70d', '8cd172695b194677a7c7f1d9b9c38092', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f4ddb81117194134aa70ec365fda3e0b', '73764dd3607c4bb1b811bcb4d398296e', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f5199e27bfdd48b78b1c393506761d77', '1c2465f82ace4e87ab63c05ce124db79', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f537b6dafd6d4a0d9b6263dc161ece81', '9d17201f79b541ab9c198ffdce552e44', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f5632e490acd46aaa71f47dd0aff48a1', '8f0d309af7f44dd7a62c9f6ddf226b78', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f58a5a06ea1b41b997af2b58f193a59d', 'c3e1f2f8a6374cc8b6d24ebcfa9ae7ac', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f5968d4f499f493cab3c54065075d310', '596914990f154e3c9a96c138c863329a', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f5b6159a7d3d4bf799f41306c0ed152e', '8e4fd6aac6a14ef4afde04362dd0936e', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f5c993be7ff241b2825eba27773973c6', '09b05cfad47a40ee8f46b01a9cf5642e', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f601d7cd925848c9a23d01ab9b48fab0', 'dd99deaf4a2d43f888a21044b67c9e09', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f67a063a1d154054ae74f5c2845c6733', '557d7d77519143e7a460354e91529c6a', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f748b75877454243a9e6322d5312d104', '610e3f5116f4402e9dd96e692b5f14cd', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f74b8fa6c61f40b4a453b72c9d999d5e', '9b1229e8edae4e98b6fa2dbf826dd5fe', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f762ed9f967e4677be07de33bb04cfa1', 'f297944e0dcb4c8d85405aecfd3ea1c5', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f78dc60b28de4f7498f95ff04c34a533', '8086f14d4d104e799147224a247c5ad7', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f79438b2f7024c899fa5706aacb3ab0b', '11c142429196420cb6320c86b5c0f213', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f7abdcc7a2d44a6bb8b88a3098511573', '58428e52d60949e195397e26e19279bd', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f807f9ad155849a4a2bf2f35649c9226', '4eda4228c2d8458daa680d72123a2e1e', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f81e2e8ad6e844cd8c9742ec7b77f5bc', '0902cced0d77427a9eb893b27939aa29', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f87a51845c2443b0b1d9ecf20a8cf98f', '8935172fef584890af68abfe02875d4e', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f8929db15d3240baa267258ece1783c4', '10b369a9b5e947298572aa70f234812d', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f8b5b6acb7054c2ab2f066d589b83c51', 'aa501525d2594b1ca635a2248e295809', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f8c6029e72df4093821b7256825e7e2a', 'e5cfc559f1794c6691f831d5bdf77897', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f8cf22db3665496fbe5003460096d4e2', '05716521ced6417f8884d43cbfa40ff8', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f8d6675821ba4cc7ba34b14c9583fda1', 'ca12696d0d5744d0b75abf10531023ac', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f8ed3101af9b470e889bf9b3160fb0e8', 'a8efee8ef3de46fb97901a03c0b75c65', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f8fc318a71f24f148e354943ca57f20e', '75b6886e43464cafb9de179e060a8a2b', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f92c9359f5e1477183b01423e59ba524', '57b963dd5de24ea7afe21a9b3e0ceb3f', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f96197f0669b4954bf18e73561882b77', '688f8c185e1047c3905d9b95829c4c5b', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f9d6ae6987d346a089abb17926469137', '7e684814f0c7487483dff9c2c58275b6', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f9e5af08544b4d6b9443c022eab79664', '95236461bb8c41aea3816bbd0d91d643', '44', 'admin', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('f9ece588b74345fe829b5f71b1f86a4c', 'fe077282f30945f9ac39252221815a2e', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('fa0104eae82e4ac9acde4708298e8af0', '7ed821436b954f04b074f510104252b9', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('fa3d0bee326945bd9bbdf96eee8ac27b', 'bd869a46d56a4525bf2bab3ec8ac22c4', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('fa52993d6e35409d9d687ba2c93eae3f', '35475a8f98f04c85ac971982f9cacb90', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('fa662c21b2b846708f098195cd03e6d3', '2ea4c965a57f4f1a906cb2950d1e2e6f', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('fa722b216efc4f3dbb9d8fd72d140a23', '75f3a89ede0e486882d68e388a40731e', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('fa8781b01dd34437b946b66887af0ff7', '9b61183f08064d0fa814cdc4d45f3804', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('fab8f1c7a7a642d88b3b696e45846117', '38cbb7bed2a1402f93c8ccf60e7920da', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('faca1aecd3eb474985fec792edba2569', '40ff6baac4b14115a886f94d66607782', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('faeedc487ab64d09a9ca4297cf903e4d', 'cdffb974c03644cdb6033ae80287e2b7', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('fb2ccef5a89e42b18b66a1efb0293c4d', '052ebec712a54d269c769399c3c0b15d', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('fb2dd57c20f549bea182931987f35a02', '67a6fd6ab3344832a0cef347c4a7dc5e', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('fb37e858339145218a2c50c58dc4ca55', '563bcd79fc0b4f86a99ce325e0153b6a', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('fb7aed4151294cfebddf8122cbe3f3f7', 'b5d9c49949aa4313b22dff970a3da6a3', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('fbb3759a17a546498c6bb422b1c5bdf5', 'a85de06089544ac3a11d930d998b68de', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('fbc7358764d246779071182117d6d479', 'a7abe42d663e4aaaaeb80f42e482a49d', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('fbe8d4914d6241eeb26977d4c1c83d8d', '54de1f943c3e46a695e3146f6ee07814', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('fbec2cc83fe14f95bae9111931effbdd', 'd94f56a827574a5fb082f8f669f97e0b', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('fc08b36229a242e5b2188b622c4075b6', 'defd4b9f0cce4722bec2c3524dbef862', '43', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('fc0acbfa14ce4591ba7beb7850fdc3cd', 'a037609816264efab4a6e4de3ecb4a80', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('fc370d5e3ca448009677e2887883f142', 'bc918b78211646588edf9cc518a70472', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('fc39ba49cc1d4481bd01707dc9c58104', '87353ceeb7314aca9416fdcb0c941a46', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('fc5db730af7048d4ae3c864922742f1b', 'e7c27d4e942a4cbfb1fd408a01defc4f', '43', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('fc63682fe3534be7835434930f8059f0', '11fcb0b846d14305b0c294892b67e13f', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('fc889a43e80f4ec6bfc1a21ce5433e8d', '61cb02968f7e4b08bbda26ae42557d48', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('fcaf68fee610487b976da59d5646d034', '8d867741f3e340228ace42fb7c05f186', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('fcd1bb16cad04936aad7489d79bbe4f6', '40600cbcdb9b458f84605afcc24f2916', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('fcdfb5ea6be94119a006ebd22aa9b2d9', '081289d3223444b0968b9ceeb57f3d84', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('fcff774bf7184f0da5b143c4eaf37a66', '0e15b1e852304804a4002ac986e34bca', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('fd2e763d76e1475dbe41eec0e06a65b6', '197f9bcf96d04cc694605016adfea1cb', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('fd6d200b098f4251a068084a85979e8b', 'd4d85a24fcad4df4a03b9c8048125de5', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('fd7688174b3347ff8b3860e0caa70dbf', 'c6d3b517655f41c38c9f13cfc10bcc09', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('fd8aedcc39d54e8290426eb282264b1d', '4257fff988e749e9beaa1023ddb45c1d', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('fdabeb034e364bfcac404d258292732a', '0ebbb25b6760477c931a3104381da3f5', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('fdbe56c7fcc34b739ce0d48277460271', '60bc201c51d6416e974e2b0e94f58e9c', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('fdd6accce6b749ef9289a6ab7078d1a7', '223b923338374f75bb51df1ecd04226e', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('fe03e3c00ab444df8e9f5d69371e6041', 'f6cff90eadf54e8fb89567aba4eafb63', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('fe2bd9c7d70d4be189b926cdf0881b05', 'fab43bf2d35d49b9b66d4eb0e2782f49', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('fe53495f4d194495a2ddc87c825272e8', '3ebbea8b7d124b768ef82db0e7a82111', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('fe5e14de7eb44317b7aa5c3b39e03d2f', 'c4390e4914c14ed5ba319754b45d1665', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('fe8949fbabcf425ebfd5720876289a57', '4df3dac118e24d98a8ad9c5920fe25d7', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('fe8f092e3ff04032a6a748bed68b0946', '87a5d21d847e4cc1bacdebba9baffcf7', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('fec98f04af86464a872d85517151f4cb', 'fe0d69ff99e04a5db94daffe5296d045', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('fef15ad3b57742049e83f93df9490838', 'd4bd99b15bbd47aca84f22ade67c0c3d', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ff0601aa8c7b41bc8cb952ff8c434ce1', '72425032ce964add883a791f67ead83d', '33', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ff1fbf30ae534fd1b998b95e11dd6cd5', '24144ebcdaad4a63b375f440334aadbf', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ff5895c10adb4e6899c987ee6f41daf8', '35a51e876ce4438ebc2d961d5fc98bf8', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ff5a16fc08cf4555ad16c49fec86cbe3', '81f65b03dab84662a6925efcbebb5f8d', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ff5ba9c7d6bd44aeb6e284011c9f5f8b', 'b77fc2c6b12c42e3b2096fbab1a2cf90', '31', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ff85d6f521e8436b89014ae2d057ffc8', '881506cd1be24ecab3258bbf2ecfc6ca', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ffd38e01308d4dd592eac8a176839c54', '0f938be7919c402e9168de72faaeb896', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ffdb42d2f55a41048556b583c8a7fc74', '971d7bf29316487a9ab8bd696fea171c', '32', '测试用户1', '1', '0');
INSERT INTO `tbl_alarm_notice` VALUES ('ffea1d232b2b4d5fa7461e810b49f0ff', '8c739a6fcd5a4229997a36ba1015cd2c', '32', '测试用户1', '1', '0');

-- ----------------------------
-- Table structure for `tbl_analysisresult`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_analysisresult`;
CREATE TABLE `tbl_analysisresult` (
  `abnormalID` int(10) NOT NULL AUTO_INCREMENT,
  `type` int(10) DEFAULT NULL,
  `behaviorName` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '异常行为辅助描述',
  `camID` int(10) DEFAULT NULL COMMENT '与分析任务表里的tbl_Task表的PlatformID一致',
  `behaviorValue` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '暂时用于异常行为结果存储；格式为：id,x,y,w,h,mgsRelativePath;id,x,y,w,h,mgsRelativePath;',
  `objectType` int(10) DEFAULT NULL COMMENT '0:人；1：车；2：人骑车；3：物品；4.其他',
  `objectID` int(10) DEFAULT NULL COMMENT '与objectType一致',
  `serviceID` int(10) DEFAULT NULL COMMENT '关联tbl_service表的serviceID',
  `resultPath` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '暂时不用，保存结果图片的相对路径',
  PRIMARY KEY (`abnormalID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of tbl_analysisresult
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_analysisrule`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_analysisrule`;
CREATE TABLE `tbl_analysisrule` (
  `ruleID` int(10) NOT NULL AUTO_INCREMENT,
  `AnalysisRuleID` varchar(40) COLLATE utf8_bin DEFAULT NULL COMMENT '严格按照GAT标准编码,暂不使用',
  `RuleName` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '用于辅助显示分析规则名称',
  `RuleCode` int(10) DEFAULT NULL COMMENT '异常行为分析服务内部参数：',
  `sensitiveness` int(10) DEFAULT NULL COMMENT '算法内部参数，默认值：10',
  `hmin` float(10,0) DEFAULT '0' COMMENT '算法内部参数',
  `vertex` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '顶点组合，每个顶点在原始相对于原始图像的位置',
  `interParams` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '内部参数，暂不使用，用于分析功能算法层参数补充；',
  PRIMARY KEY (`ruleID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of tbl_analysisrule
-- ----------------------------
INSERT INTO `tbl_analysisrule` VALUES ('4', null, '闯出', '1', null, '0', '0.4107,0.2518;0.2536,0.5089;0.7964,0.5536;0.7607,0.2161;0.5232,0.2179;0.4054,0.3589;0.4339,0.2589;0.4107,0.2518', null);
INSERT INTO `tbl_analysisrule` VALUES ('5', null, '双绊线', '6', null, '0', '0.1929,0.6200;0.8768,0.5978;0.2821,0.7978;0.9446,0.7778', null);
INSERT INTO `tbl_analysisrule` VALUES ('6', null, '闯出', '1', null, '0', '0.1643,0.1071;0.0589,0.3393;0.3661,0.4429;0.3964,0.1589;0.3893,0.0857;0.1929,0.0875;0.1643,0.1071', null);
INSERT INTO `tbl_analysisrule` VALUES ('7', null, '绊线', '5', null, '0', '0.9982,0.3711:0.2071,0.9022', null);
INSERT INTO `tbl_analysisrule` VALUES ('8', null, '闯出', '1', null, '0', '0.2500,0.1500;0.1929,0.2625;0.2518,0.3643;0.4607,0.3554;0.4107,0.1214;0.2607,0.1393;0.2500,0.1500', null);

-- ----------------------------
-- Table structure for `tbl_app`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_app`;
CREATE TABLE `tbl_app` (
  `ID` varchar(50) COLLATE utf8_bin NOT NULL,
  `NAME` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `ICON` blob,
  `DESCRIPTION` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `CREATETIME` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `UPDATETIME` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `IFUSE` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `ORDERNUM` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='appÐÅÏ¢';

-- ----------------------------
-- Records of tbl_app
-- ----------------------------
INSERT INTO `tbl_app` VALUES ('63fd162c-28be-44d8-8703-9e23894a87e7', '交警APP', null, '移动执法', '2017-05-16 16:00:48', '2017-05-16 16:00:48', 'y', '1');
INSERT INTO `tbl_app` VALUES ('a5ada5bf-49c6-11e7-80f4-80f755c5dd04', '刑警APP', null, '刑警执法', '2017-05-16 16:00:48', '2017-05-16 16:00:48', 'y', '2');
INSERT INTO `tbl_app` VALUES ('c7cdfd53-49c6-11e7-80f4-80f755c5dd04', '民警APP', null, '民警执法', '2017-05-16 16:00:48', '2017-05-16 16:00:48', 'y', '3');

-- ----------------------------
-- Table structure for `tbl_autorecordplan`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_autorecordplan`;
CREATE TABLE `tbl_autorecordplan` (
  `autoid` decimal(22,0) NOT NULL,
  `camid` decimal(22,0) NOT NULL,
  `timePeriod` varchar(200) DEFAULT NULL,
  `workday` decimal(22,0) NOT NULL,
  `keeptime` decimal(22,0) NOT NULL,
  `username` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`autoid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_autorecordplan
-- ----------------------------
INSERT INTO `tbl_autorecordplan` VALUES ('1', '61789', '2018-02-27T09:01:00_2018-03-27T9:05:00', '127', '30', '1@1.com');
INSERT INTO `tbl_autorecordplan` VALUES ('2', '30206', '2018-02-27T09:01:00_2018-03-27T9:05:00', '127', '30', '1@1.com');

-- ----------------------------
-- Table structure for `tbl_camera`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_camera`;
CREATE TABLE `tbl_camera` (
  `ResID` int(10) unsigned NOT NULL,
  `PtzType` int(11) DEFAULT NULL,
  `PositionType` int(11) DEFAULT NULL,
  `Alias` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `RoomType` int(11) DEFAULT NULL,
  `UseType` int(11) DEFAULT NULL,
  `SupplyLightType` int(11) DEFAULT NULL,
  `DirectionType` int(11) DEFAULT NULL,
  `Resolution` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `BusinessGroupID` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `DownLoadSpeed` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `SVCSpaceSupportMode` int(11) DEFAULT NULL,
  `SVCTimeSupportMode` int(11) DEFAULT NULL,
  `PtzURL` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `Height` double DEFAULT NULL,
  `PitchAngle` double DEFAULT NULL,
  `Azimuth` double DEFAULT NULL,
  `LockedUsr` int(11) DEFAULT NULL,
  `StreamingID` int(11) DEFAULT '0',
  `ReplayID` int(11) DEFAULT NULL,
  `GroupID` int(11) DEFAULT NULL,
  `PlaceID` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ResID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of tbl_camera
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_channel`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_channel`;
CREATE TABLE `tbl_channel` (
  `ChannelID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CamID` int(11) NOT NULL,
  `NVRID` int(11) NOT NULL,
  `NvrChannelID` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `FrameRate` int(11) DEFAULT NULL,
  `BitRateType` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `BitRate` int(11) DEFAULT NULL,
  `PlayUrl` varchar(200) COLLATE utf8_bin NOT NULL,
  `Resolution` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `AudioFlag` int(11) DEFAULT NULL,
  `AudioEncoderType` int(11) DEFAULT NULL,
  `AudioBitRate` int(11) DEFAULT NULL,
  `AudioSampleRate` int(11) DEFAULT NULL,
  `UseType` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ChannelID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of tbl_channel
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_collect_group`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_collect_group`;
CREATE TABLE `tbl_collect_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `user` varchar(255) NOT NULL,
  `create_time` datetime NOT NULL,
  `pid` int(11) DEFAULT NULL COMMENT '父组节点id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_collect_group
-- ----------------------------
INSERT INTO `tbl_collect_group` VALUES ('-2', '业务分组', 'admin', '2018-03-21 16:40:52', '-2');
INSERT INTO `tbl_collect_group` VALUES ('-1', '个人收藏', 'admin', '2018-03-21 16:41:15', '-1');
INSERT INTO `tbl_collect_group` VALUES ('1', '新建群组1', 'admin', '2019-02-16 00:00:00', '-1');

-- ----------------------------
-- Table structure for `tbl_collect_item`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_collect_item`;
CREATE TABLE `tbl_collect_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `group_id` int(11) NOT NULL COMMENT '所属组id',
  `create_time` datetime NOT NULL,
  `res_id` int(11) NOT NULL COMMENT '设备id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_collect_item
-- ----------------------------
INSERT INTO `tbl_collect_item` VALUES ('1', '示例摄像机', '-1', '2018-11-26 00:00:00', '2');

-- ----------------------------
-- Table structure for `tbl_config`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_config`;
CREATE TABLE `tbl_config` (
  `configid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `configname` char(128) COLLATE utf8_bin NOT NULL,
  `configvalue` char(128) COLLATE utf8_bin NOT NULL,
  `serviceid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`configid`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of tbl_config
-- ----------------------------
INSERT INTO `tbl_config` VALUES ('2', 'HttpsPort', '8000', '2');
INSERT INTO `tbl_config` VALUES ('3', 'UsrName', 'root', '2');
INSERT INTO `tbl_config` VALUES ('4', 'Password', '123456', '2');
INSERT INTO `tbl_config` VALUES ('6', 'GB28181TcpPort', '9000', '2');
INSERT INTO `tbl_config` VALUES ('8', 'RtspPort', '554', '2');
INSERT INTO `tbl_config` VALUES ('11', 'UsrName', 'root', '4');
INSERT INTO `tbl_config` VALUES ('12', 'Password', '123456', '4');
INSERT INTO `tbl_config` VALUES ('14', 'GB28181TcpPort', '9000', '4');
INSERT INTO `tbl_config` VALUES ('16', 'RtspPort', '554', '4');
INSERT INTO `tbl_config` VALUES ('17', 'HttpsPort', '5066', '4');
INSERT INTO `tbl_config` VALUES ('18', 'HttpsPort', '8072', '1');
INSERT INTO `tbl_config` VALUES ('19', 'HttpsPort', '8000', '6');
INSERT INTO `tbl_config` VALUES ('20', 'RtspPort', '554', '6');
INSERT INTO `tbl_config` VALUES ('21', 'GB28181TcpPort', '8001', '6');
INSERT INTO `tbl_config` VALUES ('22', 'UsrName', 'root', '6');
INSERT INTO `tbl_config` VALUES ('23', 'Password', '123456', '6');
INSERT INTO `tbl_config` VALUES ('24', 'StorPath', 'D:', '2');
INSERT INTO `tbl_config` VALUES ('25', 'HttpsPort', '8000', '3');
INSERT INTO `tbl_config` VALUES ('26', 'UsrName', 'root', '3');
INSERT INTO `tbl_config` VALUES ('27', 'Password', '123456', '3');
INSERT INTO `tbl_config` VALUES ('28', 'GB28181TcpPort', '9000', '3');
INSERT INTO `tbl_config` VALUES ('29', 'RtspPort', '554', '3');
INSERT INTO `tbl_config` VALUES ('30', 'HttpsPort', '8000', '6');
INSERT INTO `tbl_config` VALUES ('31', 'UsrName', 'admin', '6');
INSERT INTO `tbl_config` VALUES ('32', 'Password', '111111', '6');
INSERT INTO `tbl_config` VALUES ('33', 'GB28181TcpPort', '9000', '6');
INSERT INTO `tbl_config` VALUES ('34', 'RtspPort', '554', '6');
INSERT INTO `tbl_config` VALUES ('35', 'HttpsPort', '8080', '51');
INSERT INTO `tbl_config` VALUES ('51', 'HttpsPort', '8080', '51');
INSERT INTO `tbl_config` VALUES ('52', 'HttpsPort', '8888', '52');

-- ----------------------------
-- Table structure for `tbl_cruise`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_cruise`;
CREATE TABLE `tbl_cruise` (
  `AutoID` decimal(11,0) DEFAULT NULL,
  `CamID` decimal(11,0) DEFAULT NULL,
  `CruiseID` decimal(11,0) DEFAULT NULL,
  `CruiseName` varchar(50) DEFAULT NULL,
  `CruisePath` varchar(320) DEFAULT NULL,
  `interval_num` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_cruise
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_cycle`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_cycle`;
CREATE TABLE `tbl_cycle` (
  `cycleid` decimal(50,0) NOT NULL,
  `cyclename` varchar(500) NOT NULL,
  `intervaltime` int(11) NOT NULL,
  `createperson` varchar(50) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `usertype` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_cycle
-- ----------------------------
INSERT INTO `tbl_cycle` VALUES ('1', '轮训1', '10', 'admin', '2018-11-23 14:51:21', null);
INSERT INTO `tbl_cycle` VALUES ('2', 'ceshi', '5', 'admin', '2019-02-20 16:57:09', null);

-- ----------------------------
-- Table structure for `tbl_cycle_scheme`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_cycle_scheme`;
CREATE TABLE `tbl_cycle_scheme` (
  `id` decimal(50,0) NOT NULL,
  `cycleid` decimal(50,0) NOT NULL,
  `cameraid` decimal(50,0) NOT NULL,
  `index_num` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_cycle_scheme
-- ----------------------------
INSERT INTO `tbl_cycle_scheme` VALUES ('1', '1', '2', '0');
INSERT INTO `tbl_cycle_scheme` VALUES ('2', '1', '3', '1');
INSERT INTO `tbl_cycle_scheme` VALUES ('3', '1', '4', '2');
INSERT INTO `tbl_cycle_scheme` VALUES ('4', '1', '2', '3');
INSERT INTO `tbl_cycle_scheme` VALUES ('5', '1', '3', '4');
INSERT INTO `tbl_cycle_scheme` VALUES ('6', '1', '4', '5');
INSERT INTO `tbl_cycle_scheme` VALUES ('7', '1', '4', '6');
INSERT INTO `tbl_cycle_scheme` VALUES ('8', '1', '2', '7');
INSERT INTO `tbl_cycle_scheme` VALUES ('9', '2', '2', '0');
INSERT INTO `tbl_cycle_scheme` VALUES ('10', '2', '3', '1');

-- ----------------------------
-- Table structure for `tbl_decoder_channel`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_decoder_channel`;
CREATE TABLE `tbl_decoder_channel` (
  `channelID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ProtocolType` varchar(50) COLLATE utf8_bin NOT NULL,
  `DecoderID` int(10) unsigned NOT NULL,
  `DecoderChannelID` int(10) unsigned NOT NULL,
  `CamID` int(11) DEFAULT NULL,
  `MatrixID` int(11) DEFAULT NULL,
  `MatrixInChannelNo` int(11) DEFAULT NULL,
  PRIMARY KEY (`channelID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of tbl_decoder_channel
-- ----------------------------
INSERT INTO `tbl_decoder_channel` VALUES ('1', '海康8000接入', '1120', '8080', '1503', '1185', '16');
INSERT INTO `tbl_decoder_channel` VALUES ('3', '无线接入', '100198', '9190', '80', '10032', '8');

-- ----------------------------
-- Table structure for `tbl_group`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_group`;
CREATE TABLE `tbl_group` (
  `GroupID` int(10) NOT NULL AUTO_INCREMENT,
  `Type` int(10) NOT NULL,
  `VirtualOrgID` varchar(20) COLLATE utf8_bin NOT NULL,
  `Name` varchar(200) COLLATE utf8_bin NOT NULL,
  `ParentOrgID` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `BusinessGroupID` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `ParentID` int(10) NOT NULL DEFAULT '0',
  `OnNum` int(11) DEFAULT '0',
  `SumNum` int(11) DEFAULT '0',
  PRIMARY KEY (`GroupID`),
  UNIQUE KEY `UniKey` (`VirtualOrgID`)
) ENGINE=InnoDB AUTO_INCREMENT=8186 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of tbl_group
-- ----------------------------
INSERT INTO `tbl_group` VALUES ('8185', '1', '100000', '根组（请勿删除）', null, null, '8185', '7', '7');

-- ----------------------------
-- Table structure for `tbl_intrusion_alarm`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_intrusion_alarm`;
CREATE TABLE `tbl_intrusion_alarm` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ResId` int(10) NOT NULL,
  `line0XY` varchar(50) DEFAULT NULL,
  `line1XY` varchar(50) DEFAULT NULL,
  `rectXY` varchar(50) DEFAULT NULL,
  `rectW` varchar(50) DEFAULT NULL,
  `rectH` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tbl_intrusion_alarm
-- ----------------------------
INSERT INTO `tbl_intrusion_alarm` VALUES ('5', '18', '', '', '0.4456,0.0556', '303', '410');
INSERT INTO `tbl_intrusion_alarm` VALUES ('6', '19', '0.5184,0.0067', '0.5149,1', '0.3351,0.0689', '350', '415');

-- ----------------------------
-- Table structure for `tbl_keystore`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_keystore`;
CREATE TABLE `tbl_keystore` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `KeySsl` varchar(500) CHARACTER SET gbk COLLATE gbk_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_keystore
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_log`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_log`;
CREATE TABLE `tbl_log` (
  `LogID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LogName` varchar(50) DEFAULT NULL COMMENT '日志名称',
  `LogDate` varchar(50) DEFAULT NULL COMMENT '日期',
  `UsrName` varchar(50) DEFAULT NULL COMMENT '用户名',
  `GroupOrCameraName` varchar(200) DEFAULT NULL,
  `ActionType` int(11) DEFAULT NULL COMMENT '操作类型',
  `HigherID` int(11) DEFAULT NULL,
  `LowerID` int(11) DEFAULT NULL COMMENT '摄像机ResID',
  `SourceIP` varchar(20) DEFAULT NULL COMMENT '来源ip',
  `Comments` varchar(400) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`LogID`),
  FULLTEXT KEY `FULL` (`LogName`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_log
-- ----------------------------
INSERT INTO `tbl_log` VALUES ('1', 'reslog', '2019-05-09 11:02:39', 'admin', '设备-12312', null, null, null, null, '新增');
INSERT INTO `tbl_log` VALUES ('2', 'reslog', '2019-05-09 11:02:46', 'admin', '摄像机-null', null, null, null, null, '新增');
INSERT INTO `tbl_log` VALUES ('3', 'reslog', '2019-05-23 17:08:32', 'admin', '设备-www', null, null, null, null, '新增');
INSERT INTO `tbl_log` VALUES ('4', 'reslog', '2019-05-23 17:08:39', 'admin', '摄像机-null', null, null, null, null, '新增');

-- ----------------------------
-- Table structure for `tbl_personfeature`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_personfeature`;
CREATE TABLE `tbl_personfeature` (
  `personID` int(10) NOT NULL AUTO_INCREMENT,
  `SourceID` int(10) DEFAULT NULL,
  `RectPosition` varchar(50) DEFAULT NULL,
  `LocationMarkTime` datetime DEFAULT NULL,
  `PersonAppearTime` datetime DEFAULT NULL,
  `bodyType` varchar(50) DEFAULT NULL,
  `HairStyleType` varchar(50) DEFAULT NULL,
  `HairColor` varchar(50) DEFAULT NULL,
  `Sex` varchar(50) DEFAULT NULL,
  `age` varchar(10) DEFAULT NULL,
  `CoatStyleType` varchar(50) DEFAULT NULL,
  `CoatColor` varchar(50) DEFAULT NULL,
  `CoatLenth` varchar(50) DEFAULT NULL,
  `PantsStyle` varchar(50) DEFAULT NULL,
  `PantsColor` varchar(50) DEFAULT NULL,
  `PantsLenth` varchar(50) DEFAULT NULL,
  `ShoesStyle` varchar(50) DEFAULT NULL,
  `ShoesColor` varchar(50) DEFAULT NULL,
  `BreathMaskColor` varchar(50) DEFAULT NULL,
  `HatStyle` varchar(50) DEFAULT NULL,
  `GlassStyle` varchar(50) DEFAULT NULL,
  `ScarfColor` varchar(50) DEFAULT NULL,
  `UmbrellaColor` varchar(50) DEFAULT NULL,
  `BagStyle` varchar(50) DEFAULT NULL,
  `BagColor` varchar(50) DEFAULT NULL,
  `Appendage` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`personID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tbl_personfeature
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_place`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_place`;
CREATE TABLE `tbl_place` (
  `ID` int(255) NOT NULL AUTO_INCREMENT,
  `CSLXBH` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `CSLXMC` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `FJCSBH` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_place
-- ----------------------------
INSERT INTO `tbl_place` VALUES ('1', '0100', '办案场所', '0100');
INSERT INTO `tbl_place` VALUES ('2', '0200', '服务场所', '0200');
INSERT INTO `tbl_place` VALUES ('3', '0300', '办公场所', '0300');
INSERT INTO `tbl_place` VALUES ('4', '0400', '监管场所', '0400');
INSERT INTO `tbl_place` VALUES ('5', '0500', '武器保管场所', '0500');
INSERT INTO `tbl_place` VALUES ('6', '0600', '治安检查场所', '0600');
INSERT INTO `tbl_place` VALUES ('7', '0700', '其他', '0700');
INSERT INTO `tbl_place` VALUES ('8', '0101', '询问室', '0100');
INSERT INTO `tbl_place` VALUES ('9', '0102', '讯问室', '0100');
INSERT INTO `tbl_place` VALUES ('10', '0103', '候问室', '0100');
INSERT INTO `tbl_place` VALUES ('11', '0104', '约束室', '0100');
INSERT INTO `tbl_place` VALUES ('12', '0105', '醒酒室', '0100');
INSERT INTO `tbl_place` VALUES ('13', '0106', '辨认室', '0100');
INSERT INTO `tbl_place` VALUES ('14', '0107', '人身安全检查室', '0100');
INSERT INTO `tbl_place` VALUES ('15', '0108', '物证保管室', '0100');
INSERT INTO `tbl_place` VALUES ('16', '0109', '信息采集室', '0100');
INSERT INTO `tbl_place` VALUES ('17', '0110', '纠纷调处室', '0100');
INSERT INTO `tbl_place` VALUES ('18', '0201', '户籍室', '0200');
INSERT INTO `tbl_place` VALUES ('19', '0202', '接待室', '0200');
INSERT INTO `tbl_place` VALUES ('20', '0203', '等候室', '0200');
INSERT INTO `tbl_place` VALUES ('21', '0204', '信访接待室', '0200');
INSERT INTO `tbl_place` VALUES ('22', '0205', '出入境服务大厅', '0200');
INSERT INTO `tbl_place` VALUES ('23', '0206', '车、驾管服务大厅', '0200');
INSERT INTO `tbl_place` VALUES ('24', '0207', '消防服务大厅', '0200');
INSERT INTO `tbl_place` VALUES ('25', '0208', '事故处理大厅', '0200');
INSERT INTO `tbl_place` VALUES ('26', '0209', '综合服务大厅', '0200');
INSERT INTO `tbl_place` VALUES ('27', '0210', '驾驶员科目考试室', '0200');
INSERT INTO `tbl_place` VALUES ('28', '0211', '交通违法处理室', '0200');
INSERT INTO `tbl_place` VALUES ('29', '0212', '出入境口岸服务大厅', '0200');
INSERT INTO `tbl_place` VALUES ('30', '0301', '备勤室', '0300');
INSERT INTO `tbl_place` VALUES ('31', '0302', '接处警室(厅', '0300');
INSERT INTO `tbl_place` VALUES ('32', '0303', '现场勘验室', '0300');
INSERT INTO `tbl_place` VALUES ('33', '0304', '指挥调度大厅(室', '0300');
INSERT INTO `tbl_place` VALUES ('34', '0305', '值班室', '0300');
INSERT INTO `tbl_place` VALUES ('35', '0306', '会议室', '0300');
INSERT INTO `tbl_place` VALUES ('36', '0307', '出入口', '0300');
INSERT INTO `tbl_place` VALUES ('37', '0308', '院内', '0300');
INSERT INTO `tbl_place` VALUES ('38', '0309', '走廊', '0300');
INSERT INTO `tbl_place` VALUES ('39', '0310', '哨位', '0300');
INSERT INTO `tbl_place` VALUES ('40', '0401', '拘留所询问室', '0400');
INSERT INTO `tbl_place` VALUES ('41', '0402', '看守所讯问室', '0400');
INSERT INTO `tbl_place` VALUES ('42', '0403', '监控室', '0400');
INSERT INTO `tbl_place` VALUES ('43', '0404', '双门互锁区俗称AB门区', '0400');
INSERT INTO `tbl_place` VALUES ('44', '0405', '内值班室', '0400');
INSERT INTO `tbl_place` VALUES ('45', '0406', '巡视走廊', '0400');
INSERT INTO `tbl_place` VALUES ('46', '0407', '收押大厅', '0400');
INSERT INTO `tbl_place` VALUES ('47', '0408', '收拘大厅', '0400');
INSERT INTO `tbl_place` VALUES ('48', '0409', '律师会见室', '0400');
INSERT INTO `tbl_place` VALUES ('49', '0501', '枪库', '0500');
INSERT INTO `tbl_place` VALUES ('50', '0502', '弹库', '0500');
INSERT INTO `tbl_place` VALUES ('51', '0503', '警械装备室', '0500');
INSERT INTO `tbl_place` VALUES ('52', '0601', '治安检查站', '0600');
INSERT INTO `tbl_place` VALUES ('53', '0602', '治安卡口', '0600');

-- ----------------------------
-- Table structure for `tbl_platform`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_platform`;
CREATE TABLE `tbl_platform` (
  `PlatformID` int(11) NOT NULL AUTO_INCREMENT,
  `PlatformName` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `IPAddress` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ProtocolType` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PlatformPort` int(11) NOT NULL,
  `SipID` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `SipDomain` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `UpUsrName` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `UpPassword` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `UpRealm` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `DownUsrName` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `DownPassword` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `DownRealm` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SignalTransportType` int(11) DEFAULT NULL,
  `StreamTransportType` int(11) DEFAULT NULL,
  `UsrID` int(11) DEFAULT NULL,
  `Status` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'OFF',
  `ConnectState` int(11) DEFAULT NULL,
  `SipServiceID` int(11) DEFAULT NULL,
  `SubScribeInfo` int(11) DEFAULT NULL,
  `GbVersion` varchar(50) DEFAULT NULL,
  `StreamingID` int(11) DEFAULT '0',
  `ExtStreamingIP` varchar(32) DEFAULT '1',
  PRIMARY KEY (`PlatformID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_platform
-- ----------------------------
INSERT INTO `tbl_platform` VALUES ('1', '本地平台', '172.16.138.26', null, '5060', '11010102002005000139', '1101010200', '11010102002005000139', '12345678', '1101010200', null, '12345678', '1101010200', '0', '1', null, 'OFF', '0', '4', null, '2016', '0', null);
INSERT INTO `tbl_platform` VALUES ('2', '上联平台测试', '192.168.5.213', null, '5080', '11020019999999999199', '1102001999', '11020019999999999199', '12345678', '1102001999', '11020019999999999199', '12345678', '1102001999', '0', '0', null, 'OFF', '2', '4', null, '2016', '0', null);
INSERT INTO `tbl_platform` VALUES ('4', '测试下联', '122.0.0.1', null, '8050', '11111111111111111111', '1111111111', null, null, null, '11111111111111111111', '12345678', '1111111111', '0', '1', null, 'OFF', '2', '4', null, '2016', '0', null);

-- ----------------------------
-- Table structure for `tbl_platfrom_streaming`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_platfrom_streaming`;
CREATE TABLE `tbl_platfrom_streaming` (
  `AutoID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PlatformID` int(10) unsigned NOT NULL,
  `StreamingID` int(10) unsigned NOT NULL,
  `ExtIP` varchar(32) NOT NULL,
  PRIMARY KEY (`AutoID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_platfrom_streaming
-- ----------------------------
INSERT INTO `tbl_platfrom_streaming` VALUES ('1', '2', '3', '192.168.6.152');

-- ----------------------------
-- Table structure for `tbl_preset`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_preset`;
CREATE TABLE `tbl_preset` (
  `AutoID` decimal(11,0) NOT NULL,
  `CamID` decimal(11,0) DEFAULT NULL,
  `PresetID` decimal(11,0) DEFAULT NULL,
  `PresetName` varchar(50) DEFAULT NULL,
  `IsKeepWatch` int(11) DEFAULT NULL,
  `type` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`AutoID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_preset
-- ----------------------------
INSERT INTO `tbl_preset` VALUES ('10', '50', '10', '12', '1', '1');
INSERT INTO `tbl_preset` VALUES ('14', '3', '4', '123', '1', '1');
INSERT INTO `tbl_preset` VALUES ('15', '3', '5', '123', '1', '1');
INSERT INTO `tbl_preset` VALUES ('16', '3', '6', '123', '1', '1');
INSERT INTO `tbl_preset` VALUES ('17', '3', '7', '123', '1', '1');
INSERT INTO `tbl_preset` VALUES ('18', '3', '8', '123', '1', '1');
INSERT INTO `tbl_preset` VALUES ('19', '3', '9', '123', '1', '1');
INSERT INTO `tbl_preset` VALUES ('20', '3', '10', '123', '1', '1');
INSERT INTO `tbl_preset` VALUES ('21', '3', '11', '123213213213123', '1', '1');
INSERT INTO `tbl_preset` VALUES ('22', '2', '1', 'qq', '1', '1');

-- ----------------------------
-- Table structure for `tbl_res_attr`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_res_attr`;
CREATE TABLE `tbl_res_attr` (
  `ResID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ProtocolType` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `DeviceID` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'Unknowm',
  `Manufacturer` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Model` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Owner` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `CivilCode` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Block` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Address` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Parental` int(11) DEFAULT NULL,
  `ParentID` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SafetyWay` int(11) DEFAULT NULL,
  `RegisterWay` int(11) DEFAULT '1',
  `CertNum` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Certifiable` int(11) DEFAULT NULL,
  `EndTime` datetime DEFAULT NULL,
  `Secrecy` int(11) DEFAULT '1',
  `IPAddress` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Port` int(11) DEFAULT NULL,
  `UsrName` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Password` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Status` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'ON',
  `Longitude` double DEFAULT NULL,
  `Latitude` double DEFAULT NULL,
  `PlatformID` int(10) NOT NULL DEFAULT '1',
  `ResType` int(11) DEFAULT NULL,
  `SipServiceID` int(11) DEFAULT NULL,
  `GuardFlag` int(11) DEFAULT NULL,
  `ErrCode` int(11) DEFAULT NULL,
  PRIMARY KEY (`ResID`),
  UNIQUE KEY `UniKey` (`DeviceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_res_attr
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_role`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_role`;
CREATE TABLE `tbl_role` (
  `RoleID` int(10) NOT NULL,
  `RoleName` varchar(50) COLLATE utf8_bin NOT NULL,
  `Level` int(10) NOT NULL,
  `DeviceConfigAuth` int(10) NOT NULL,
  `UsrConfigAuth` int(10) NOT NULL,
  `UseGisAuth` int(10) NOT NULL,
  `SeeLogAuth` int(10) NOT NULL,
  `DeleteLogAuth` int(10) NOT NULL,
  PRIMARY KEY (`RoleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of tbl_role
-- ----------------------------
INSERT INTO `tbl_role` VALUES ('1', 'admin', '1', '1', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for `tbl_role_auth`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_role_auth`;
CREATE TABLE `tbl_role_auth` (
  `AutoID` int(10) NOT NULL,
  `RoleID` int(10) NOT NULL,
  `CtrlType` int(10) NOT NULL,
  `ObjectID` int(10) NOT NULL,
  `AuthType` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of tbl_role_auth
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_service`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_service`;
CREATE TABLE `tbl_service` (
  `ServiceID` int(11) NOT NULL AUTO_INCREMENT,
  `ServiceType` int(11) NOT NULL,
  `IPAddress` varchar(50) COLLATE utf8_bin NOT NULL,
  `Status` varchar(10) COLLATE utf8_bin NOT NULL,
  `ServiceName` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ServiceID`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of tbl_service
-- ----------------------------
INSERT INTO `tbl_service` VALUES ('1', '1', '192.168.5.213', 'ON', '核心信令');
INSERT INTO `tbl_service` VALUES ('2', '2', '192.168.5.213', 'ON', '流媒体转发服务');
INSERT INTO `tbl_service` VALUES ('3', '3', '192.168.5.213', 'ON', '历史视频回放服务');
INSERT INTO `tbl_service` VALUES ('4', '4', '192.168.5.213', 'ON', 'SIP信令服务器');
INSERT INTO `tbl_service` VALUES ('5', '5', '192.168.5.213', 'ON', '客户端');
INSERT INTO `tbl_service` VALUES ('51', '51', '192.168.5.213', 'ON', '报警服务');
INSERT INTO `tbl_service` VALUES ('52', '52', '192.168.5.213', 'ON', '报警服务2');

-- ----------------------------
-- Table structure for `tbl_skin`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_skin`;
CREATE TABLE `tbl_skin` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `skinId` int(10) NOT NULL COMMENT '皮肤ID',
  `skinName` varchar(50) DEFAULT NULL COMMENT '皮肤名字',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tbl_skin
-- ----------------------------
INSERT INTO `tbl_skin` VALUES ('4', '2', '皮肤2');

-- ----------------------------
-- Table structure for `tbl_storfile`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_storfile`;
CREATE TABLE `tbl_storfile` (
  `AutoID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CamID` int(11) NOT NULL,
  `StreamingID` int(11) NOT NULL,
  `StartTime` datetime NOT NULL,
  `StopTime` datetime NOT NULL,
  `DeleteTime` datetime NOT NULL,
  `StorType` int(11) NOT NULL,
  `FilePath` varchar(300) NOT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Secrecy` int(11) NOT NULL DEFAULT '0',
  `RecorderID` varchar(50) NOT NULL DEFAULT '0',
  `FileSize` int(11) DEFAULT NULL,
  PRIMARY KEY (`AutoID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_storfile
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_storplan`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_storplan`;
CREATE TABLE `tbl_storplan` (
  `PlanID` int(10) NOT NULL AUTO_INCREMENT,
  `CamID` int(10) NOT NULL,
  `StreamingID` int(10) NOT NULL,
  `StartTime` time NOT NULL,
  `StopTime` time NOT NULL,
  `WorkDay` int(11) NOT NULL,
  `KeepTime` int(11) NOT NULL,
  `IslostStop` int(11) NOT NULL,
  `AlarmTime` int(10) DEFAULT NULL COMMENT '0.表示不使用预录像；30.表示预录像30s',
  PRIMARY KEY (`PlanID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of tbl_storplan
-- ----------------------------
INSERT INTO `tbl_storplan` VALUES ('12', '4', '2', '04:20:00', '13:05:00', '34', '1', '1', '30');

-- ----------------------------
-- Table structure for `tbl_stortask`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_stortask`;
CREATE TABLE `tbl_stortask` (
  `autoid` int(11) NOT NULL AUTO_INCREMENT,
  `storPlanID` int(11) DEFAULT NULL,
  `startTime` datetime DEFAULT NULL,
  `stopTime` datetime DEFAULT NULL,
  `downloadSuccess` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`autoid`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of tbl_stortask
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_subscribe_event`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_subscribe_event`;
CREATE TABLE `tbl_subscribe_event` (
  `SubscribeID` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '订阅序列编号，无实际意义',
  `SubscribeType` int(10) unsigned NOT NULL COMMENT '1：表示目录订阅；2：表示移动设备信息订阅；3：表示布防',
  `SrcDeviceID` varchar(20) CHARACTER SET gb2312 NOT NULL,
  `DstDeviceID` varchar(20) CHARACTER SET gb2312 NOT NULL,
  `CallID` varchar(128) CHARACTER SET gb2312 NOT NULL,
  `LocalTag` varchar(128) CHARACTER SET gb2312 NOT NULL,
  `RemoteTag` varchar(128) CHARACTER SET gb2312 NOT NULL,
  `EventHeader` varchar(128) CHARACTER SET gb2312 NOT NULL,
  `Cseq` int(10) unsigned NOT NULL,
  `Sn` int(10) unsigned NOT NULL,
  `Expires` int(11) unsigned NOT NULL,
  PRIMARY KEY (`SubscribeID`),
  FULLTEXT KEY `Uni` (`SrcDeviceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_subscribe_event
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_task`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_task`;
CREATE TABLE `tbl_task` (
  `taskID` int(10) NOT NULL AUTO_INCREMENT,
  `Type` int(10) DEFAULT NULL COMMENT '辅助显示摄像机名称、文件名称',
  `ResourceName` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '关联视频联网平台表的camID',
  `PlatformID` int(30) DEFAULT NULL COMMENT '关联视频联网平台表的camID',
  `URL` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '视频播放URL或文件地址，用于取流或图像',
  `serviceID` int(10) DEFAULT NULL COMMENT '关联tbl_service表的serviceID',
  `RuleParamID` int(10) DEFAULT NULL COMMENT '关联tbl_AnalysisRule表里的ruleID',
  `videoInfoID` int(10) DEFAULT NULL COMMENT '暂时关联tbl_resourceID，后续可关联其他视频基础信息表ID',
  `Priorty` int(10) DEFAULT NULL COMMENT '0:最高；1：高 2：中 3：低',
  `StatusID` int(10) DEFAULT NULL COMMENT '关联任务状态表TaskStatus表里的TaskID',
  `ControlStatus` int(10) DEFAULT NULL COMMENT '1：布防，0：撤防；用于任务的动态启动及软删除',
  PRIMARY KEY (`taskID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of tbl_task
-- ----------------------------
INSERT INTO `tbl_task` VALUES ('20', '0', 'ceshi', '1', 'rtsp://admin:admin12345@192.168.6.62/main/av_stream', '4', '4', '41', '1', '21', '1');
INSERT INTO `tbl_task` VALUES ('21', '0', 'ceshi', '1', 'rtsp://admin:admin12345@192.168.6.62/main/av_stream', '4', '5', '41', '1', '22', '1');
INSERT INTO `tbl_task` VALUES ('22', '0', '测试画区域', '1', 'rtsp://admin:admin12345@192.168.6.68/main/av_stream', '4', '6', '45', '1', '23', '1');
INSERT INTO `tbl_task` VALUES ('23', '0', '测试画区域', '1', 'rtsp://admin:admin12345@192.168.6.68/main/av_stream', '4', '7', '45', '1', '24', '1');
INSERT INTO `tbl_task` VALUES ('24', '0', '测试画区域', '1', 'rtsp://admin:admin12345@192.168.6.68/main/av_stream', '4', '8', '45', '1', '25', '1');

-- ----------------------------
-- Table structure for `tbl_taskstatus`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_taskstatus`;
CREATE TABLE `tbl_taskstatus` (
  `TaskID` int(10) NOT NULL AUTO_INCREMENT,
  `Type` int(10) DEFAULT NULL COMMENT '暂不使用',
  `CommitTime` datetime DEFAULT NULL COMMENT '获取系统时间，不需用户填写',
  `BeginTime` datetime DEFAULT NULL COMMENT '暂不配置',
  `ExpectEndTime` int(11) DEFAULT NULL COMMENT '暂不配置',
  `Status` int(10) DEFAULT NULL COMMENT '0表示已完成，1表示正在执行中，2表示暂停中，3表示排队中；',
  `ConsumTime` int(10) DEFAULT NULL COMMENT '以天为单位，暂不使用',
  `Progress` int(10) DEFAULT NULL COMMENT '任务进度百分比，0-100，暂不使用；',
  PRIMARY KEY (`TaskID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of tbl_taskstatus
-- ----------------------------
INSERT INTO `tbl_taskstatus` VALUES ('21', null, '2019-01-03 11:25:20', null, null, '3', null, null);
INSERT INTO `tbl_taskstatus` VALUES ('22', null, '2019-01-03 11:25:21', null, null, '3', null, null);
INSERT INTO `tbl_taskstatus` VALUES ('23', null, '2019-03-21 08:25:40', null, null, '3', null, null);
INSERT INTO `tbl_taskstatus` VALUES ('24', null, '2019-03-21 08:25:40', null, null, '3', null, null);
INSERT INTO `tbl_taskstatus` VALUES ('25', null, '2019-03-21 08:41:44', null, null, '3', null, null);

-- ----------------------------
-- Table structure for `tbl_thing`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_thing`;
CREATE TABLE `tbl_thing` (
  `ThingID` int(10) NOT NULL AUTO_INCREMENT,
  `InfoType` int(10) DEFAULT NULL,
  `SourceID` int(10) DEFAULT NULL,
  `RectPosition` varchar(50) DEFAULT NULL,
  `MarkTime` datetime DEFAULT NULL,
  `AppearTime` datetime DEFAULT NULL,
  `DisappearTime` datetime DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Shape` varchar(50) DEFAULT NULL,
  `Color` varchar(50) DEFAULT NULL,
  `Size` varchar(50) DEFAULT NULL,
  `Material` varchar(50) DEFAULT NULL,
  `Characteristic` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ThingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tbl_thing
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_uploadfile`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_uploadfile`;
CREATE TABLE `tbl_uploadfile` (
  `fileid` varchar(200) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(100) DEFAULT NULL,
  `repopath` varchar(300) DEFAULT NULL,
  `keyword` varchar(300) DEFAULT NULL,
  `repoid` varchar(200) DEFAULT NULL,
  `deleteTime` datetime DEFAULT NULL,
  `camid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_uploadfile
-- ----------------------------
INSERT INTO `tbl_uploadfile` VALUES ('31fb3e5a5fad02d911cd6ce5172eed898500eaa6', '2', '自由文档_陈.txt', null, null, '86b1bb29-09f7-4a0f-8755-9aa4d8c26d17', null, '1006');

-- ----------------------------
-- Table structure for `tbl_usr`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_usr`;
CREATE TABLE `tbl_usr` (
  `UsrID` int(10) NOT NULL,
  `UsrName` varchar(50) COLLATE utf8_bin NOT NULL,
  `Password` varchar(50) COLLATE utf8_bin NOT NULL,
  `RoleID` int(10) NOT NULL,
  `IsLocked` tinyint(10) NOT NULL,
  `CellPhone` varchar(11) COLLATE utf8_bin DEFAULT NULL,
  `Email` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `Status` varchar(50) COLLATE utf8_bin NOT NULL,
  `GroupID` int(10) NOT NULL,
  PRIMARY KEY (`UsrID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of tbl_usr
-- ----------------------------
INSERT INTO `tbl_usr` VALUES ('1', 'pipi', 'pipi123', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_usr` VALUES ('2', 'jinjin', 'ji123456', '1', '1', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for `tbl_usr_auth`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_usr_auth`;
CREATE TABLE `tbl_usr_auth` (
  `AutoID` int(10) NOT NULL,
  `UsrID` int(10) NOT NULL,
  `CtrlType` int(10) NOT NULL,
  `ObjectID` int(10) NOT NULL,
  `AuthType` int(10) NOT NULL,
  PRIMARY KEY (`AutoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of tbl_usr_auth
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_usr_role`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_usr_role`;
CREATE TABLE `tbl_usr_role` (
  `AutoID` int(10) NOT NULL,
  `UsrID` int(10) NOT NULL,
  `RoleID` int(10) NOT NULL,
  PRIMARY KEY (`AutoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of tbl_usr_role
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_vehicle`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_vehicle`;
CREATE TABLE `tbl_vehicle` (
  `VehicleID` int(10) NOT NULL AUTO_INCREMENT,
  `InfoType` int(10) DEFAULT NULL,
  `SourceID` int(10) DEFAULT NULL,
  `RectPosition` int(10) DEFAULT NULL,
  `MarkTime` datetime DEFAULT NULL,
  `AppearTime` datetime DEFAULT NULL,
  `HasPlate` int(10) DEFAULT NULL,
  `PlateClass` varchar(50) DEFAULT NULL,
  `PlateNo` varchar(50) DEFAULT NULL,
  `PlateColor` varchar(50) DEFAULT NULL,
  `PlateReliability` int(10) DEFAULT NULL,
  `VehicleColor` varchar(50) DEFAULT NULL,
  `VehicleHood` varchar(50) DEFAULT NULL,
  `VehicleBrand` varchar(50) DEFAULT NULL,
  `VehicleType` varchar(50) DEFAULT NULL,
  `FrontThing` varchar(50) DEFAULT NULL,
  `FrontThingDesc` varchar(50) DEFAULT NULL,
  `RearThing` varchar(50) DEFAULT NULL,
  `RearThingDesc` varchar(50) DEFAULT NULL,
  `Sunvisor` int(10) DEFAULT NULL,
  `SafetyBelt` int(10) DEFAULT NULL,
  `Calling` int(10) DEFAULT NULL,
  `MotorFlag` int(10) DEFAULT NULL,
  PRIMARY KEY (`VehicleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tbl_vehicle
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_windows_mode`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_windows_mode`;
CREATE TABLE `tbl_windows_mode` (
  `id` varchar(32) NOT NULL,
  `name` varchar(255) NOT NULL,
  `width` int(10) NOT NULL,
  `height` int(10) NOT NULL,
  `windowcount` int(10) NOT NULL,
  `creator` varchar(255) NOT NULL,
  `createtime` datetime NOT NULL,
  `status` varchar(2) NOT NULL,
  `type` char(2) NOT NULL,
  `disflag` char(2) NOT NULL,
  `sequence` int(4) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of tbl_windows_mode
-- ----------------------------
INSERT INTO `tbl_windows_mode` VALUES ('55fd70e683054736bd103c07bd737ae2', '#勿删##勿修改##保持发布状态#2*2窗口', '2', '2', '0', 'admin', '2018-01-12 15:00:40', '0', '1', '1', '2');
INSERT INTO `tbl_windows_mode` VALUES ('5859de82814c4c47b1198686a3c0d4e2', '自定义6窗口', '3', '2', '0', 'admin', '2018-03-27 09:08:22', '1', '1', '1', '2');
INSERT INTO `tbl_windows_mode` VALUES ('5ccb7c004d224eddbddd2f4dede47329', '#勿删##勿修改##保持发布状态#1*1窗口', '1', '1', '0', 'admin', '2018-01-12 15:00:15', '0', '1', '1', '1');
INSERT INTO `tbl_windows_mode` VALUES ('92f949ba11244733bbb4a0b5acbb18b0', '自定义9窗口', '16', '16', '9', 'admin', '2018-03-27 09:10:38', '1', '2', '0', '2');
INSERT INTO `tbl_windows_mode` VALUES ('d20289b2995e493faa14c8d5c359333a', '#勿删##勿修改##保持发布状态#4*4窗口', '4', '4', '0', 'admin', '2018-01-12 15:01:26', '1', '1', '1', '4');
INSERT INTO `tbl_windows_mode` VALUES ('e166fd815d8f43baab979b2e9a7723c0', '#勿删##勿修改##保持发布状态#3*3窗口', '3', '3', '0', 'admin', '2018-01-12 15:00:59', '1', '1', '1', '3');
INSERT INTO `tbl_windows_mode` VALUES ('eb12654747d147f0a8f1f0dbfcd626f1', '自定义10窗口', '16', '16', '10', 'admin', '2018-03-27 09:11:35', '1', '2', '0', '3');

-- ----------------------------
-- Table structure for `tbl_windows_mode_detail`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_windows_mode_detail`;
CREATE TABLE `tbl_windows_mode_detail` (
  `id` varchar(32) NOT NULL,
  `modeid` varchar(32) NOT NULL,
  `width` decimal(10,0) NOT NULL,
  `height` decimal(10,0) NOT NULL,
  `vertexx` decimal(10,0) NOT NULL,
  `vertexy` decimal(10,0) NOT NULL,
  `wno` decimal(10,0) DEFAULT NULL COMMENT '窗口序号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of tbl_windows_mode_detail
-- ----------------------------
INSERT INTO `tbl_windows_mode_detail` VALUES ('039dd1f7b3f04926965b8d5b2ddfe8c7', 'e866cdf0d85e4730b25903f5811e5b22', '4', '4', '0', '0', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('06906ac7a74344cea4babecb8b9df87c', '21ad7c7a1f5a450f8285799f3b2690fb', '7', '8', '9', '8', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('07bd94671b76432989779f7010726b89', 'a3aae94e2fa44836a974e6469c1e2cbd', '4', '4', '12', '4', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('0b92b02e42d74bd9b18675d4797a857d', '050bbe757103439dbeac6e659da808d5', '3', '3', '2', '13', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('0db7303c5a8b4b748c8f9f201324b85d', '4ee736b943e4482faedec2438880f527', '4', '5', '4', '11', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('0f52f70bea184261b5172cbb305e8e95', '4ee736b943e4482faedec2438880f527', '11', '11', '0', '0', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('11', '11', '8', '16', '0', '0', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('12', '11', '8', '16', '8', '0', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('1349c4a4355c472283f0bcd42ff41e40', 'e866cdf0d85e4730b25903f5811e5b22', '4', '4', '12', '12', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('14b1f944159341ffb5c9c462784b5cdf', 'c5f62472bd03482e9300b4481f36ac23', '4', '4', '5', '12', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('1551691450da403996307822f8826904', 'cfce499618904b62bc56f024ecad8951', '8', '10', '0', '0', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('1975ceddb4144422ba0564ea27b87df6', '5a5e4f86e26644bb82560c76e818f697', '6', '6', '5', '4', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('1b6f6527b9964176abdc652a0ba5fba2', '92f949ba11244733bbb4a0b5acbb18b0', '4', '5', '0', '6', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('1b928fbd76d84f309ddd18b3df88fec5', 'e866cdf0d85e4730b25903f5811e5b22', '4', '4', '12', '0', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('1ca2774cb448447aa54bcedcd8bcfa5b', 'a3aae94e2fa44836a974e6469c1e2cbd', '4', '4', '4', '8', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('1cca9ec86f5543f382b496483d822e00', 'e866cdf0d85e4730b25903f5811e5b22', '4', '4', '12', '8', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('1e21f69d25b14269b291eb1f584bc17d', '9b39f9b3a63e472b99c3f143f3c8da21', '3', '9', '3', '4', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('1e96abe9a23a41c38e318305a3227588', '5a5e4f86e26644bb82560c76e818f697', '5', '6', '0', '4', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('21f1f9324fd544c1a9d07c4b9b876941', 'a3aae94e2fa44836a974e6469c1e2cbd', '4', '4', '0', '0', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('22479c31770140a89089c6376181dc2a', 'eb888883be4b43f78e43fc1f3506a316', '4', '4', '8', '12', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('2650582c345c41dbb1f042b7ea1122e5', '92f949ba11244733bbb4a0b5acbb18b0', '4', '5', '4', '11', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('26ffa996860946c08a54f27fa1373eaf', 'e866cdf0d85e4730b25903f5811e5b22', '4', '4', '0', '12', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('277a81463eba4b488bd645ea6d7023f1', 'eb12654747d147f0a8f1f0dbfcd626f1', '4', '4', '0', '12', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('29277540a2f043e482be433834ff0908', 'eb12654747d147f0a8f1f0dbfcd626f1', '8', '8', '4', '0', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('2b3710732f914884896bbd69e618127e', '93fd6406aeec448caaff1214bef86919', '4', '4', '0', '13', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('2c68cd68ef2a4de69d9c9c942fb8b934', 'eb888883be4b43f78e43fc1f3506a316', '4', '4', '4', '8', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('2f2f29c805de4ca59125f648a0dc275b', 'eb888883be4b43f78e43fc1f3506a316', '4', '4', '0', '8', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('2fb6dfc576d24968b8a3040a3952b89f', 'cb14bd1110c942d7abe29fb41cbc1a1a', '1', '5', '6', '2', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('3468e092add4454dbc505ee11ea07eaa', '92f949ba11244733bbb4a0b5acbb18b0', '4', '5', '0', '11', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('35255dbb12844dadbffad3efdf9756c1', '4ee736b943e4482faedec2438880f527', '4', '5', '0', '11', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('3818e5937da44a55a5e53754ac54d2a1', '5a5e4f86e26644bb82560c76e818f697', '4', '4', '4', '0', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('3860fd37e7bf4d408a22a7cee65915dd', 'a3aae94e2fa44836a974e6469c1e2cbd', '4', '4', '8', '12', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('38615987560c45ba998a48fe3de9525d', '050bbe757103439dbeac6e659da808d5', '2', '1', '0', '13', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('39f2efd404184bd9bfe48231ae0a15f0', '21ad7c7a1f5a450f8285799f3b2690fb', '4', '4', '4', '12', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('3a05adc071b44bc5a8a1c93785f43f97', 'd33c166faa984d5cad8a1f975aa33604', '10', '9', '6', '0', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('3a2f32202b434bd1a66f87a51599f4fb', '5eaf8530057c4cbc9073b648f4d6a854', '4', '6', '5', '4', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('3ab7afb7bf1d498f96f5118046c79483', 'eb12654747d147f0a8f1f0dbfcd626f1', '4', '4', '0', '8', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('3bab760faff949478c4411bfe2fdcaf8', 'eb888883be4b43f78e43fc1f3506a316', '4', '4', '8', '4', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('3be97a4b86104764806052c52d679660', 'd33c166faa984d5cad8a1f975aa33604', '3', '2', '0', '14', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('41bc3bf3f81a43baab10502501faf375', 'a3aae94e2fa44836a974e6469c1e2cbd', '4', '4', '4', '4', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('4288ae694f114793bc64289dd01cbde9', '4ee736b943e4482faedec2438880f527', '5', '6', '11', '5', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('468c3fd6433b4663810a9c31c06a2484', '3ee3e14482b14c3797f1789bd2df0897', '5', '14', '11', '0', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('473dac834f2444fa8263c047e21258dc', '5a5e4f86e26644bb82560c76e818f697', '4', '4', '0', '0', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('4745c90e0b4b497da38cb8774446e99c', '449d788bad7d496889c02896a75a1e88', '3', '8', '0', '1', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('48127d1998e642b9837e4804b51a99a5', 'db12262d2399430a8b07f6cef427dc33', '4', '16', '0', '0', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('49f637010c32441492a01f49cf0927b6', '5a5e4f86e26644bb82560c76e818f697', '4', '4', '8', '0', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('49f89877d03f43fbae7ef4b4a40796eb', 'eb888883be4b43f78e43fc1f3506a316', '4', '4', '8', '0', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('4fdcf279098743498c39a0a8b65c4f2e', '8d7cab08a8fe485cbfa9f60e94c92d1e', '3', '4', '3', '13', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('510466b701414f4e9fab47ef770fedf3', 'a3aae94e2fa44836a974e6469c1e2cbd', '4', '4', '8', '8', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('515889f5222340a797133ad7d2a6cbe9', '21ad7c7a1f5a450f8285799f3b2690fb', '3', '2', '5', '14', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('516056542f0b4f749d3c2c69424dcdc6', '92f949ba11244733bbb4a0b5acbb18b0', '4', '6', '12', '0', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('5387b7150a9046969c0a665ebbcca670', '40df463618c446fcbbcc1d337dbbdb8f', '4', '7', '0', '0', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('5555ffba768e4ddfaf8589c99658272e', '386aca315fa0452191a88788165e47c1', '4', '4', '5', '12', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('56a28e98bcdf483fae33cb1a0351f6fc', 'd8a61a7edc984dbc9f103c8d14d0ce49', '5', '5', '5', '11', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('576b103727ab40019fecffca44254cba', 'd8a61a7edc984dbc9f103c8d14d0ce49', '10', '11', '0', '0', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('5921da5806b44becb45164479d32b7de', 'eb888883be4b43f78e43fc1f3506a316', '4', '4', '12', '12', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('5bb00df0d017460a8c81fb7c0fcae4bc', 'a3aae94e2fa44836a974e6469c1e2cbd', '4', '4', '12', '8', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('5bff6a05bbf34c7390856288877ce89c', '21ad7c7a1f5a450f8285799f3b2690fb', '3', '5', '11', '11', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('63865b624e8041fe8a626f8e5cd49053', 'a3aae94e2fa44836a974e6469c1e2cbd', '4', '4', '12', '0', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('63e6d9c1ddef44c29846f2bb0e127b81', '21ad7c7a1f5a450f8285799f3b2690fb', '4', '4', '0', '12', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('6604a5c595424ed9a9fd09120269380b', '449d788bad7d496889c02896a75a1e88', '8', '5', '1', '10', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('66cd53d7db904fc79ba5490426f11fe6', 'e866cdf0d85e4730b25903f5811e5b22', '8', '8', '4', '0', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('67305a3d1a4b49649a93cc115f0012a4', 'e866cdf0d85e4730b25903f5811e5b22', '4', '4', '12', '4', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('6a62646bcedc4286a0e2f3568115451d', 'a3aae94e2fa44836a974e6469c1e2cbd', '4', '4', '12', '12', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('72e68bab96744ce8bc45219dcb0eb5c1', 'a3aae94e2fa44836a974e6469c1e2cbd', '4', '4', '0', '4', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('745119e066fd4ccdb3c16b84659c9686', 'eb888883be4b43f78e43fc1f3506a316', '4', '4', '4', '0', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('77ae287c71b844c2b8034380f25a5a03', 'eb888883be4b43f78e43fc1f3506a316', '4', '4', '0', '4', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('782f1521611a415eb8aeae537db2d98a', 'a3aae94e2fa44836a974e6469c1e2cbd', '4', '4', '4', '0', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('7d6a8f39a2d5486489d80dc3add10f7e', 'eb12654747d147f0a8f1f0dbfcd626f1', '4', '4', '12', '0', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('8069c11d243b40ff98db56069b947075', '4ee736b943e4482faedec2438880f527', '4', '5', '8', '11', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('82242ecc56054aab8e1ed0d647b09799', 'eb12654747d147f0a8f1f0dbfcd626f1', '4', '4', '0', '4', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('8279a0c552784761a496a3bfabfdae27', '21ad7c7a1f5a450f8285799f3b2690fb', '1', '1', '5', '16', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('82f4cb644c4e452d9c383d8f5287af96', '21ad7c7a1f5a450f8285799f3b2690fb', '3', '3', '8', '13', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('839f093f790d4703b54d7807cd70b99b', 'b7d45834a86a4e789aa0cbe9e112a07e', '3', '8', '4', '3', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('85336aa1e0be4bf58c38567d875eefc4', '540d06450c9d4a80804e31b0cd012908', '3', '4', '1', '13', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('86cfafc815a84d838af94855772bb543', '13f285ec7f9f4aecb05c849b0693cbdd', '3', '4', '5', '7', '1');
INSERT INTO `tbl_windows_mode_detail` VALUES ('8b7f98c87c474859a19ae6fbcfa11a2c', 'd33c166faa984d5cad8a1f975aa33604', '6', '6', '0', '0', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('8ca25099943e4e059b3fa5ee611adc42', '92f949ba11244733bbb4a0b5acbb18b0', '8', '11', '4', '0', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('8e0ee5f3b66840d5a6dc761dfb98fed8', 'd8a61a7edc984dbc9f103c8d14d0ce49', '6', '8', '10', '8', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('93261386ab0445e7a5b17bb40bd1c3fe', 'cfce499618904b62bc56f024ecad8951', '16', '6', '0', '10', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('933ff55952f4427da427c7cbd269c797', '5a5e4f86e26644bb82560c76e818f697', '5', '6', '11', '10', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('934a2ea834bf46e6ae659d2ecea9a8fc', 'a77515b03b1b42faa539bff414cf030b', '4', '9', '3', '1', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('94a79c816c9e4556ad24cdab407695be', 'd33c166faa984d5cad8a1f975aa33604', '6', '8', '0', '6', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('94d1171d6db04c2ead18e6ced375c2ff', 'a3aae94e2fa44836a974e6469c1e2cbd', '4', '4', '8', '4', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('95b172ef745f4263ab9b75c87383f0db', 'eb12654747d147f0a8f1f0dbfcd626f1', '4', '4', '0', '0', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('96604ae270104c679f6bd391d433a480', 'e866cdf0d85e4730b25903f5811e5b22', '4', '4', '0', '8', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('9a4dbb74e2a344adbd4a9a7e41dccf49', '13f285ec7f9f4aecb05c849b0693cbdd', '1', '4', '14', '7', '3');
INSERT INTO `tbl_windows_mode_detail` VALUES ('9a4fc3f1c3274dbd8eab3e2757ce0d18', '449d788bad7d496889c02896a75a1e88', '3', '7', '3', '1', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('9ab981101d974ba9a090f404446b4dd4', 'eb12654747d147f0a8f1f0dbfcd626f1', '4', '4', '12', '12', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('9c7cb9b553854af68f853879e4a0a807', 'eb888883be4b43f78e43fc1f3506a316', '4', '4', '12', '4', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('9cd150a8c57e4021beb2b8bc6073dbc1', '3ee3e14482b14c3797f1789bd2df0897', '10', '7', '1', '8', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('9f040d813d084253bcabd43841929295', '92f949ba11244733bbb4a0b5acbb18b0', '4', '5', '8', '11', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('9f1cb97f0d4d4a8f98d175741efd88cb', '7d936e065bdc4a4b8d78914ba643208b', '6', '5', '0', '6', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('a221197419c94c5a965b6f105ef70a16', '5a5e4f86e26644bb82560c76e818f697', '4', '4', '12', '0', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('a246f08a69a14e3e9ba069c3ce7e7cbe', 'a3aae94e2fa44836a974e6469c1e2cbd', '4', '4', '0', '12', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('a42a7b2174894c9d97db5cd2a5cf3028', 'eb888883be4b43f78e43fc1f3506a316', '4', '4', '12', '0', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('a5d7a9c99efb4bf1a606aef9a343771b', 'eb888883be4b43f78e43fc1f3506a316', '4', '4', '8', '8', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('a7accd6d44384af89f5fb1fec7b9aa5c', '4ee736b943e4482faedec2438880f527', '4', '5', '12', '11', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('a827f632129e4c7c8fd64561e17c43e4', 'd539f7613d7f437f866b27e7317e36b9', '5', '4', '1', '13', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('aaca4e1fc70f4c8c9f2aded1f7438943', '5a5e4f86e26644bb82560c76e818f697', '6', '6', '5', '10', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('ab93d98ff0e4480fa90b9488801d66d0', 'e866cdf0d85e4730b25903f5811e5b22', '4', '4', '0', '4', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('aed7dfa1967e4736a7ead6ed34074860', '34d1e3c0584e41e48c10af9226350765', '5', '6', '4', '2', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('b13c29b7ac4a4619b4ddb5db5af08d7b', '4ee736b943e4482faedec2438880f527', '5', '5', '11', '0', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('b4aeb4e517f94f1d8e1b37ebc88e4d22', '40df463618c446fcbbcc1d337dbbdb8f', '5', '7', '4', '0', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('b541a7601da84538812bf0a6f9ec88e6', '7d936e065bdc4a4b8d78914ba643208b', '6', '6', '0', '0', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('b5c4a310a1ad4830b075728f55e725a1', 'c95b79814d4341939016cccdb4d296d3', '4', '3', '4', '13', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('b62445e4cab84bf6b2cf5b26e4eaab4f', 'd8a61a7edc984dbc9f103c8d14d0ce49', '5', '5', '0', '11', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('b9e275fbecad408db645d338a3cb994f', '3ee3e14482b14c3797f1789bd2df0897', '10', '8', '1', '0', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('bf0ea00659b44d9c8b230bc795f68420', '92f949ba11244733bbb4a0b5acbb18b0', '4', '5', '12', '11', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('bf56eeb449754ced97b41fe4af967a6e', 'eb888883be4b43f78e43fc1f3506a316', '4', '4', '12', '8', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('c0836a3117a04df78fdc9cae82b2ea75', '13f285ec7f9f4aecb05c849b0693cbdd', '5', '9', '7', '1', '2');
INSERT INTO `tbl_windows_mode_detail` VALUES ('c457b349b63443339066486a24995b41', 'dbfbf4174eeb4bdbbadcbd8d03b43ab2', '4', '4', '0', '13', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('c48ed25aa3c745e392e3b0d94d88191f', 'eb12654747d147f0a8f1f0dbfcd626f1', '8', '8', '4', '8', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('c6106393562c4f31a7a5d08661937060', 'eb888883be4b43f78e43fc1f3506a316', '4', '4', '0', '12', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('c93db1283f8e43208c7eba826fb5bcaa', 'd8a61a7edc984dbc9f103c8d14d0ce49', '6', '8', '10', '0', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('ca6d7bf1272f4aee9ca457a2090467cb', '92f949ba11244733bbb4a0b5acbb18b0', '4', '5', '12', '6', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('cefbc88761a14776b4eecdfa769e5ade', '881ef2f878ee4ab3be380c6b4b76012b', '6', '8', '3', '3', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('cefc1733776d4079997c22a89dea0d38', 'eb12654747d147f0a8f1f0dbfcd626f1', '4', '4', '12', '8', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('d10c4474cbba4d36aa3765ea184920c0', '084bf1470d0442d891b56cfe9e6016ff', '4', '4', '9', '13', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('d31d75c7ee2342dcafbe0db79b6cf8f2', 'b41d9ea60db84fa39b15c8b6ce2ee280', '6', '3', '2', '13', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('d4375888091f4763bc8f6e38d8bff463', 'eb888883be4b43f78e43fc1f3506a316', '4', '4', '4', '12', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('d4e056a2680747e08133a39742904533', 'cb14bd1110c942d7abe29fb41cbc1a1a', '2', '8', '2', '2', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('d96e0381e83d4b039a50ddba58d0ce2b', '5a5e4f86e26644bb82560c76e818f697', '5', '6', '11', '4', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('d9d85b72aff44beeb64c105c8fb3e7c9', 'a3aae94e2fa44836a974e6469c1e2cbd', '4', '4', '8', '0', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('da18b87b1c614a1aa694a85a56abd15e', 'eb888883be4b43f78e43fc1f3506a316', '4', '4', '0', '0', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('dd5bd877745c433fad4f4859f7d43d67', '9b39f9b3a63e472b99c3f143f3c8da21', '3', '7', '7', '2', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('dfec730a7d004f41abbd193953fa00db', 'eb888883be4b43f78e43fc1f3506a316', '4', '4', '4', '4', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('e9627bbd3559473e8b335cbcf1c94c66', 'd33c166faa984d5cad8a1f975aa33604', '3', '2', '3', '14', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('e9d8228a858a4c6e95c9e3fe3d56831b', 'eb12654747d147f0a8f1f0dbfcd626f1', '4', '4', '12', '4', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('eacbea3137474ea1892fbfb7ac1c72a3', 'a3aae94e2fa44836a974e6469c1e2cbd', '4', '4', '4', '12', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('ec7bf675d2c445a8bea78e87d07e9934', 'cfce499618904b62bc56f024ecad8951', '8', '10', '8', '0', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('ee40060bcadf46a192abd530e5bb0884', 'd33c166faa984d5cad8a1f975aa33604', '6', '7', '10', '9', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('f0d2d7ab4a944910bd70135889f8360a', 'e866cdf0d85e4730b25903f5811e5b22', '8', '8', '4', '8', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('f2b0412789014f7fbfbcfaec96bd3aac', 'd33c166faa984d5cad8a1f975aa33604', '4', '7', '6', '9', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('f6282477d1e74a45a40f065021ed3bf6', 'db12262d2399430a8b07f6cef427dc33', '12', '16', '4', '0', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('f786195a56e342c8a23031abf6ab7423', '5a5e4f86e26644bb82560c76e818f697', '5', '6', '0', '10', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('f7fed57307fb415984d36d943f5f61b1', '13f285ec7f9f4aecb05c849b0693cbdd', '6', '5', '0', '0', '4');
INSERT INTO `tbl_windows_mode_detail` VALUES ('f92d30d89e0d488cb6b7ab45c1eaad64', 'a3aae94e2fa44836a974e6469c1e2cbd', '4', '4', '0', '8', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('fc60da4060af459a98dc70a90de00613', 'b7d45834a86a4e789aa0cbe9e112a07e', '2', '7', '7', '1', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('fe520b6ca90342e58fa8a8de70caba8d', 'd82b09ee334f447f856724695e00496d', '3', '2', '8', '0', null);
INSERT INTO `tbl_windows_mode_detail` VALUES ('ff20b9d57a1c46849cefb4ff25b04d6d', '92f949ba11244733bbb4a0b5acbb18b0', '4', '6', '0', '0', null);

-- ----------------------------
-- Table structure for `tbl_win_to_channel`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_win_to_channel`;
CREATE TABLE `tbl_win_to_channel` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `channel_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `mod_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `win_seq` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_win_to_channel
-- ----------------------------
INSERT INTO `tbl_win_to_channel` VALUES ('1', '1', '55fd70e683054736bd103c07bd737ae2', '1');
INSERT INTO `tbl_win_to_channel` VALUES ('2', '3', '55fd70e683054736bd103c07bd737ae2', '2');
INSERT INTO `tbl_win_to_channel` VALUES ('3', '2', '55fd70e683054736bd103c07bd737ae2', '3');

-- ----------------------------
-- Table structure for `t_circlescheme`
-- ----------------------------
DROP TABLE IF EXISTS `t_circlescheme`;
CREATE TABLE `t_circlescheme` (
  `schemeid` decimal(50,0) NOT NULL,
  `schemename` varchar(50) NOT NULL,
  `windownum` int(2) DEFAULT NULL,
  `createperson` varchar(50) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `usertype` varchar(50) DEFAULT NULL,
  `cycleinterval` int(2) DEFAULT NULL COMMENT '预案没有用到此时间',
  `modeid` varchar(32) NOT NULL,
  PRIMARY KEY (`schemeid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_circlescheme
-- ----------------------------

-- ----------------------------
-- Table structure for `t_circlescheme_item`
-- ----------------------------
DROP TABLE IF EXISTS `t_circlescheme_item`;
CREATE TABLE `t_circlescheme_item` (
  `itemid` decimal(50,0) NOT NULL,
  `schemeid` decimal(50,0) NOT NULL,
  `presetid` decimal(50,0) NOT NULL,
  `camid` decimal(22,0) DEFAULT NULL,
  `windowno` int(2) NOT NULL COMMENT '对应窗口号',
  PRIMARY KEY (`itemid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_circlescheme_item
-- ----------------------------

-- ----------------------------
-- View structure for `v_account_authority`
-- ----------------------------
DROP VIEW IF EXISTS `v_account_authority`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_account_authority` AS select distinct `auth`.`ID` AS `ID`,`auth`.`CREATETIME` AS `CREATETIME`,`auth`.`UPDATETIME` AS `UPDATETIME`,`auth`.`IFUSE` AS `IFUSE`,`auth`.`AUTHORITYNAME` AS `AUTHORITYNAME`,`auth`.`DESCRIPTION` AS `DESCRIPTION`,`auth`.`ORDERNUM` AS `ORDERNUM`,`a`.`USERNAME` AS `USERNAME`,`a`.`TOKEN` AS `TOKEN` from ((((`sys_account` `a` join `sys_account_role` `ar`) join `sys_role` `r`) join `sys_role_authority` `ra`) join `sys_authority` `auth`) where ((`a`.`ID` = `ar`.`ACCOUNTID`) and (`ar`.`ROLEID` = `ra`.`ROLEID`) and (`auth`.`ID` = `ra`.`AUTHORITYID`)) ;

-- ----------------------------
-- View structure for `v_account_cam`
-- ----------------------------
DROP VIEW IF EXISTS `v_account_cam`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_account_cam` AS select `reattr`.`ResID` AS `ResID`,`reattr`.`ProtocolType` AS `ProtocolType`,`reattr`.`DeviceID` AS `DeviceID`,`reattr`.`Name` AS `Name`,`reattr`.`Manufacturer` AS `Manufacturer`,`reattr`.`Model` AS `Model`,`reattr`.`Owner` AS `Owner`,`reattr`.`CivilCode` AS `CivilCode`,`reattr`.`Block` AS `Block`,`reattr`.`Address` AS `Address`,`reattr`.`Parental` AS `Parental`,`reattr`.`ParentID` AS `ParentID`,`reattr`.`SafetyWay` AS `SafetyWay`,`reattr`.`RegisterWay` AS `RegisterWay`,`reattr`.`CertNum` AS `CertNum`,`reattr`.`Certifiable` AS `Certifiable`,`reattr`.`EndTime` AS `EndTime`,`reattr`.`Secrecy` AS `Secrecy`,`reattr`.`IPAddress` AS `IPAddress`,`reattr`.`Port` AS `Port`,`reattr`.`UsrName` AS `UsrName`,`reattr`.`Password` AS `Password`,`reattr`.`Status` AS `Status`,`reattr`.`Longitude` AS `Longitude`,`reattr`.`Latitude` AS `Latitude`,`reattr`.`PlatformID` AS `PlatformID`,`reattr`.`ResType` AS `ResType`,`reattr`.`SipServiceID` AS `SipServiceID`,`reattr`.`GuardFlag` AS `GuardFlag`,`reattr`.`ErrCode` AS `ErrCode`,`ac`.`USERNAME` AS `username` from (((((`sys_account` `ac` join `sys_account_role` `acr`) join `sys_role_authority` `rau`) join `sys_resource_authority` `reau`) join `sys_resource` `res`) join `tbl_res_attr` `reattr`) where ((`ac`.`ID` = `acr`.`ACCOUNTID`) and (`acr`.`ROLEID` = `rau`.`ROLEID`) and (`rau`.`AUTHORITYID` = `reau`.`AUTHORITYID`) and (`reau`.`RESOURCEID` = `res`.`ID`) and (`res`.`relationid` = `reattr`.`ResID`) and (`res`.`TYPE` = 'CAM')) ;

-- ----------------------------
-- View structure for `v_account_group`
-- ----------------------------
DROP VIEW IF EXISTS `v_account_group`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_account_group` AS select `gr`.`GroupID` AS `GroupID`,`gr`.`Type` AS `Type`,`gr`.`VirtualOrgID` AS `VirtualOrgID`,`gr`.`Name` AS `Name`,`gr`.`ParentOrgID` AS `ParentOrgID`,`gr`.`BusinessGroupID` AS `BusinessGroupID`,`gr`.`ParentID` AS `ParentID`,`gr`.`OnNum` AS `OnNum`,`gr`.`SumNum` AS `SumNum`,`ac`.`USERNAME` AS `username` from (((((`sys_account` `ac` join `sys_account_role` `acr`) join `sys_role_authority` `rau`) join `sys_resource_authority` `reau`) join `sys_resource` `res`) join `tbl_group` `gr`) where ((`ac`.`ID` = `acr`.`ACCOUNTID`) and (`acr`.`ROLEID` = `rau`.`ROLEID`) and (`rau`.`AUTHORITYID` = `reau`.`AUTHORITYID`) and (`reau`.`RESOURCEID` = `res`.`ID`) and (`res`.`relationid` = `gr`.`GroupID`) and (`res`.`TYPE` = 'GROUP')) ;
