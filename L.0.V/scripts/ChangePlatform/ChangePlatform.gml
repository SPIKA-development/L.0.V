function ChangePlatform(){  //플렛폼 타입 바꾸는 스크립트
	global.cChange = !global.cChange
	layer_background_blend(layer_background_get_id(layer_get_id("Background")), (global.cChange?c_white: c_black))
	with(Obj_Platform) {
		pSolid = !pSolid
	}
}