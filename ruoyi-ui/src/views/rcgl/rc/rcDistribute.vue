<template>
  <div class="app-container">
    <el-row>
      <el-col :span="12">
        <div id="radar" class="grid-content" :style="{width: '600px', height: '600px'}"></div>
      </el-col>
      <el-col :span="12">
        <div id="bar" class="grid-content" :style="{width: '620px', height: '560px'}"></div>
      </el-col>
    </el-row>
  </div>
</template>

<script>
import {selectRcDistribute} from "@/api/rcgl/rc";
import * as echarts from 'echarts';

export default {

  data() {
    return {
      //雷达图
      radarOption: {
        title: {
          text: 'Basic Radar Chart'
        },
        legend: {
          data: ['Allocated Budget', 'Actual Spending']
        },
        radar: {
          // shape: 'circle',
          indicator: [
            {name: 'Sales', max: 6500},
            {name: 'Administration', max: 16000},
            {name: 'Information Technology', max: 30000},
            {name: 'Customer Support', max: 38000},
            {name: 'Development', max: 52000},
            {name: 'Marketing', max: 25000}
          ]
        },
        series: [
          {
            name: 'Budget vs spending',
            type: 'radar',
            data: [
              {
                value: [4200, 3000, 20000, 35000, 50000, 18000],
                name: 'Allocated Budget'
              },
              {
                value: [5000, 14000, 28000, 26000, 42000, 21000],
                name: 'Actual Spending'
              }
            ]
          }
        ]
      },
      //柱状图
      barOption: {
        title: {
          text: '高端人才分布',
          left: 'center',
          top: "5%",
        },
        tooltip: {
          trigger: 'axis',
          axisPointer: {
            type: 'shadow'
          }
        },
        grid: {
          left: '8%',
          right: '10%',
          bottom: '3%',
          containLabel: true
        },
        xAxis: {
          name: '人才级别',
          type: 'category',
          data: [],
        },
        yAxis: {
          name: '人数',
          type: 'value'
        },
        series: [
          {
            data: [],
            type: 'bar',
            barWidth: '60%',
            itemStyle: {
              color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [
                {offset: 0, color: '#188df0'},
                {offset: 0.5, color: '#188df0'},
                {offset: 1, color: '#83bff6'}
              ])
            },
            emphasis: {
              itemStyle: {
                color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [
                  {offset: 0, color: '#83bff6'},
                  {offset: 0.7, color: '#2378f7'},
                  {offset: 1, color: '#2378f7'}
                ])
              }
            },
          }
        ]
      },
      rcList: []
    }
  },
  created() {
  },
  mounted() {
    this.getChart();
  },
  methods: {
    /** 初始化图表 **/
    async getChart() {
      await this.initChartData();
      echarts.init(document.getElementById('radar')).setOption(this.radarOption);
      echarts.init(document.getElementById('bar')).setOption(this.barOption);
    },

    /** 初始化图表数据 **/
    async initChartData() {
      //查询高级人才分布情况
      await selectRcDistribute().then(response => {
        this.rcList = response;
      });

      //查询企业发展情况
      // await selectCyDevelop().then(response => {
      //   this.qyList = response;
      // });

      // for (let i = 0; i < this.cyList.length; i++) {
      //   this.fanOption.series[0].data.push({'value': this.cyList[i].cyNum, 'name': this.cyList[i].cyDirection})
      // }
      for (let i = 0; i < this.rcList.length; i++) {
        this.barOption.xAxis.data.push(this.rcList[i].rcLevel)
        this.barOption.series[0].data.push(this.rcList[i].rcNum)
      }
      console.log(this.barOption.xAxis.data)
    }
  }
};
</script>
<style>
.grid-content {
  border-radius: 4px;
  min-height: 36px;
}
</style>
