package com.gd.controller.windowmode;

import com.gd.domain.windowmode.TblWindowsMode;
import com.gd.jwt.JwtTokenUtil;
import com.gd.service.windowmode.TblWindowsModeService;
import com.gd.util.ReturnMap;
import org.apache.tomcat.util.bcel.Const;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Calendar;


/**
 *
 * @author tangjinhui
 * @email 100274718@qq.com
 * @date 2017-12-28 18:32:19
 */
@Controller
@RequestMapping("/tblwindowsmode")
public class TblWindowsModeController {

	@Autowired
	private TblWindowsModeService modeService;
	@Autowired
	private JwtTokenUtil jwtTokenUtil;

	@RequestMapping(value = "list")
	@ResponseBody
	public ReturnMap list(HttpServletRequest request, HttpServletResponse response) {
		TblWindowsMode mode = new TblWindowsMode();
		mode.setStatus(request.getParameter("status"));
		return ReturnMap.ok().put("data",modeService.queryList(mode));
	}

	@RequestMapping(value = "info")
	@ResponseBody
	public ReturnMap info(HttpServletRequest request, HttpServletResponse response) {

		String id = request.getParameter("id");
		return ReturnMap.ok().put("data",modeService.findById(id));
	}

	@RequestMapping(value = "add")
	@ResponseBody
	public ReturnMap add(@RequestBody TblWindowsMode mode,HttpServletRequest request, HttpServletResponse response) {
		String username = jwtTokenUtil.getUsernameByRequest(request);
		mode.setCreator(username);
		mode.setCreatetime(Calendar.getInstance().getTime());
		mode.setStatus(com.gd.util.Const.STATUS_NO);
		return ReturnMap.ok().put("data",modeService.save(mode));
	}

	@RequestMapping(value = "/status/{id}/{status}")
	@ResponseBody
	public ReturnMap add(@PathVariable("id") String id,@PathVariable("status") String status) {
		TblWindowsMode mode = modeService.findById(id);
		mode.setStatus(status);
		return ReturnMap.ok().put("data",modeService.update(mode));
	}

	@RequestMapping(value = "mod")
	@ResponseBody
	public ReturnMap mod(@RequestBody TblWindowsMode mode,HttpServletRequest request, HttpServletResponse response) {
		return ReturnMap.ok().put("data",modeService.update(mode));
	}

	@RequestMapping(value = "delete")
	@ResponseBody
	public ReturnMap delete(HttpServletRequest request, HttpServletResponse response) {

		String id = request.getParameter("id");
		modeService.delete(id);
		return ReturnMap.ok();
	}


}
