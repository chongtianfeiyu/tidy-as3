package test.mvc.helper 
{
	import tidy.mvc.helper.Cloner;

	import asunit.framework.TestCase;
	
	/**
	 * @author christian
	 */
	public class ClonerTest extends TestCase 
	{
		public function ClonerTest(testMethod : String = null)
		{
			super(testMethod);
		}
		
		public function testClone () : void
		{
			const ALPHA : Number = .5;
			const NAME : String = "foo";
			var obj : Object = {alpha: ALPHA, name:NAME};
			obj['child'] = {alpha: ALPHA, name:NAME};
			var clone : Object = Cloner.clone(obj);
			assertEquals("should clone numbers", ALPHA, clone['alpha']);
		}
	}
}