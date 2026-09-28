--information:自作シーンチェンジ@SceneChangeKit_S ${PACKAGE_VERSION} by ${AUTHOR}
---$script_tips:シーンチェンジをタイムライン上で構成して自作します．
---            :「前シーン」や「次シーン」オブジェクトを下のレイヤーに配置してください．
--label:SceneChangeKit_S
--require:${LEAST_AVIUTL_VERSION}
---$checksection:フレームバッファをクリア
local erase = true

---$color:背景色
local color = nil

--hide@color:erase==0

assert(obj.copybuffer("cache:scenechangekit_s/obj", "object"));
assert(obj.copybuffer("cache:scenechangekit_s/frm", "framebuffer"));
if erase then
	if color == nil then obj.clearbuffer("framebuffer");
	else obj.clearbuffer("framebuffer", color) end
end
