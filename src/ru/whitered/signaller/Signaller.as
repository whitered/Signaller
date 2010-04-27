package ru.whitered.signaller 
{

	/**
	 * Signaller is a wrapper on Signal that can dispatch signals
	 */
	public class Signaller implements ISignal
	{
		public const signal:Signal = new Signal();
		
		
		public function dispatch(... args):void
		{
			signal.dispatch(args);
		}
		
		
		
		public function clean():void
		{
			signal.clean();
		}
		
		
		
		public function add(callback:Function):Boolean
		{
			return signal.add(callback);
		}
		
		
		
		public function remove(callback:Function):Boolean
		{
			return signal.remove(callback);
		}
	}
}
