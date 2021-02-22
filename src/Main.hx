import haxe.ui.Toolkit;
import haxe.ui.core.*;
import js.Browser.*;
import coconut.Ui.hxx;
import coconut.ui.View;
import haxe.ui.containers.HBox;
import haxe.ui.components.Label;

using StringTools;

class MyView extends View {
	@:attribute var text:String = 'ciao';
	@:state var count:Int = 0;

	function render()
		'
    <HBox onClick=${count++}>
        <Label text=${text + "-" + count} />
    </HBox>
  ';
}

function main() {
	var root = new Component();
	Screen.instance.addComponent(root);
	root.width = 500;
	root.height = 500;
	coconut.ui.Renderer.mount(root, hxx('<Main.MyView text="hello" />'));

	haxe.ui.Toolkit.init();

	Toolkit.init();
}
