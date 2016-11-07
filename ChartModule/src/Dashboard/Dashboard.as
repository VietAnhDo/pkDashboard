package Dashboard
{
	import spark.components.Group;
	import spark.components.SkinnableContainer;
	
	import Charts.PKBarChart;
	import Charts.PKColumnChart;
	import Charts.PKPieChart;
	
	import skin.DashboardSkin;
	
	public class Dashboard extends SkinnableContainer
	{
		[SkinPart(required="true")]
		public var topGroup:Group;
		[SkinPart(required="true")]
		public var midGroup:Group;
		[SkinPart(required="true")]
		public var botGroup:Group;
		public function Dashboard()
		{
			super();
			this.setStyle("skinClass", DashboardSkin);
		}
		
		public function init():void {
			var p:PKPieChart = new PKPieChart();
			p.title = "pie chart 1";
			var b:PKBarChart = new PKBarChart();
			b.title = "bar chart 1";
			var c:PKColumnChart = new PKColumnChart();
			c.title = "column chart 1";
			topGroup.addElement(p);
			topGroup.addElement(b);
			topGroup.addElement(c);
			p = new PKPieChart();
			p.title = "pie chart 2";
			b = new PKBarChart();
			b.title = "bar chart 2";
			c = new PKColumnChart();
			c.title = "column chart 2";
			midGroup.addElement(p);
			midGroup.addElement(b);
			midGroup.addElement(c);
			p = new PKPieChart();
			p.title = "pie chart 3";
			b = new PKBarChart();
			b.title = "bar chart 3";
			c = new PKColumnChart();
			c.title = "column chart 3";
			botGroup.addElement(p);
			botGroup.addElement(b);
			botGroup.addElement(c);
		}
	}
}