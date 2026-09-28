--information:前シーン@SceneChangeKit_S ${PACKAGE_VERSION} by ${AUTHOR}
---$script_tips:このオブジェクトがだんだん隠れるような演出を，フィルタ効果などを使って構成してください．
--label:SceneChangeKit_S
--require:${LEAST_AVIUTL_VERSION}
---$checksection:アルファチャンネルを維持
local keep_alpha = true

assert(obj.copybuffer("object", "cache:scenechangekit_s/obj"));
if not keep_alpha then
	obj.setoption("drawtarget", "tempbuffer", obj.w, obj.h);
	obj.clearbuffer("tempbuffer", 0x000000);
	obj.draw();
	assert(obj.copybuffer("object", "tempbuffer"));
end
