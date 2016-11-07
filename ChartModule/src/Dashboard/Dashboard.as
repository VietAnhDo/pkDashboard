package Dashboard
{
	import flash.events.MouseEvent;
	import flash.sampler.NewObjectSample;
	
	import spark.components.Button;
	import spark.components.Group;
	import spark.components.SkinnableContainer;
	
	import Charts.PKBarChart;
	import Charts.PKColumnChart;
	import Charts.PKPieChart;
	
	import skin.DashboardSkin;
	import skin.PKChartSkin;
	
	public class Dashboard extends SkinnableContainer
	{
		[SkinPart(required="true")]
		public var topGroup:Group;
		[SkinPart(required="true")]
		public var midGroup:Group;
		[SkinPart(required="true")]
		public var botGroup:Group;
		[SkinPart(required="true")]
		public var addPieButton:Button;
		[SkinPart(required="true")]
		public var addBarButton:Button;
		[SkinPart(required="true")]
		public var addColumnButton:Button;
		public function Dashboard()
		{
			super();
			this.setStyle("skinClass", DashboardSkin);
		}
		
		public function init():void {
			addBarButton.addEventListener(MouseEvent.CLICK, addBarButton_click);
			addColumnButton.addEventListener(MouseEvent.CLICK, addColumnButton_click);
			addPieButton.addEventListener(MouseEvent.CLICK, addPieButton_click);
		}
		private function getAvailabelGroup():Group {
			if( topGroup.numChildren < 3 )
				return topGroup;
			if( midGroup.numChildren < 3 )
				return midGroup;
			if( botGroup.numChildren < 3)
				return botGroup;
			return null;
		}
		private function addBarButton_click(event: MouseEvent):void {
			var group:Group = getAvailabelGroup();
			if( group != null) {
				var barChart:PKBarChart = new PKBarChart();
				barChart.setStyle("skinClass", PKChartSkin);
				barChart.width = group.width/3;
				group.addElement(barChart);
			}
		}
		private function addPieButton_click(event: MouseEvent):void {
			var group:Group = getAvailabelGroup();
			if( group != null) {
				var pieChart:PKPieChart = new PKPieChart();
				pieChart.setStyle("skinClass", PKChartSkin);
				pieChart.width = group.width/3;
				group.addElement(pieChart);
			}
		}
		private function addColumnButton_click(event: MouseEvent):void {
			var group:Group = getAvailabelGroup();
			if( group != null) {
				var columnChart:PKColumnChart = new PKColumnChart();
				columnChart.setStyle("skinClass", PKChartSkin);
				group.addElement(columnChart);
			}
		}
	}
}