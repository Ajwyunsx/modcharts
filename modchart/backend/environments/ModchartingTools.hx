package modchart.backend.environments;

import haxe.ds.StringMap;

using StringTools;

// Adapter to use ModchartingTools's functions/api
class ModchartingTools implements IEnvironment {
	public var parent:Manager;

	public function setup(parent:Manager) {
		this.parent = parent;
	}

	public function dispose() {}

	private final bfs:Float->Float = (s) -> Adapter.instance.getBeatFromStep(s);
}
