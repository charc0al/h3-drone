package dronemod {
import common.BaseControl;

import common.Localization;

public class LocaliseText extends BaseControl {

	private var m_isInfected:Boolean = false;
	private var m_lowHealthColour:uint;

	public function LocaliseText() {
	}

	public function In(localisedText:String):void {
		trace("[LocaliseText] localisedText in: " + localisedText)
		send_Value(localisedText);
	}

	public function send_Value(localisedText:String):void {
		var localisedText_Out:String = Localization.get(localisedText);
		trace("[LocaliseText] localisedText out: " + localisedText_Out);
		sendEventWithValue("Value", localisedText_Out);
	}
}
}
