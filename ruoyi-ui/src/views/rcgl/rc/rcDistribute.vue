<template>
  <div class="app-container">
    <el-row>
      <el-col :span="12">
        <div id="radar" class="grid-content" :style="{width: '700px', height: '600px'}"></div>
      </el-col>
      <el-col :span="12">
        <div id="bar" class="grid-content" :style="{width: '620px', height: '560px'}"></div>
      </el-col>
    </el-row>
  </div>
</template>

<script>
import {selectRcDistribute, selectRcDirection} from "@/api/rcgl/rc";
import * as echarts from 'echarts';

export default {

  data() {
    return {
      //雷达图
      radarOption: {
        title: {
          text: '人才雷达图',
          top: "5%",
          left: "left"
        },
        legend: {
          data: ['人才数量'],
          top: "10%",
          left: "left",
        },
        tooltip: {
          trigger: 'axis',
        },
        radar: {
          // shape: 'circle',
          indicator: [],
          name: { // (圆外的标签)雷达图每个指示器名称的配置项。
            formatter: '{value}',
            textStyle: {
              fontSize: 13,
              color: '#000'
            }
          },
        },
        series: [
          {
            name: 'Budget vs spending',
            type: 'radar',
            tooltip: {
              trigger: 'item'
            },
            areaStyle: {},
            label: {
              normal: {
                show: true,
                position: 'top',
                distance: 5,
                color: '#D7504B',
                fontSize: 14,
                formatter: function(params) {
                  return params.value;
                }
              }
            },
            data: [{
              value: [],
              name: '人才数量',
              // 设置区域边框和区域的颜色
              itemStyle: {
                normal: {
                  color: '#60C0DD',
                  lineStyle: {
                    color: '#60C0DD',
                  },
                },
              },
            }]
          },
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
      rcList: [],
      cyList: []
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
      await selectRcDirection().then(response => {
        this.cyList = response;
      });

      let maxData = 0;
      for (let i = 0; i < this.cyList.length; i++) {
        maxData = this.cyList[i].rcNum + maxData;
      }
      for (let i = 0; i < this.cyList.length; i++) {
        this.radarOption.radar.indicator.push({'max': (maxData / 1.5), 'name': this.cyList[i].cyDirection})
        this.radarOption.series[0].data[0].value.push(this.cyList[i].rcNum)
      }
      for (let i = 0; i < this.rcList.length; i++) {
        this.barOption.xAxis.data.push(this.rcList[i].rcLevel)
        this.barOption.series[0].data.push(this.rcList[i].rcNum)
      }
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
