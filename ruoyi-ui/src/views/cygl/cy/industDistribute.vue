<template>
  <div class="app-container">
    <el-row>
      <el-col :span="11">
        <div id="fan" class="grid-content" :style="{width: '570px', height: '600px'}"></div>
      </el-col>
      <el-col :span="13">
        <div id="bar" class="grid-content" :style="{width: '670px', height: '550px'}"></div>
      </el-col>
    </el-row>
  </div>
</template>

<script>
import {selectCyDistribute} from "@/api/cygl/cy";
import {selectCyDevelop} from "@/api/cygl/qygl";
import * as echarts from 'echarts';

export default {

  data() {
    return {
      //饼状图
      fanOption: {
        title: {
          text: '产业分布情况',
          left: 'center',
          top: "5%",
        },
        tooltip: {
          trigger: 'item'
        },
        legend: {
          top: '10%',
          left: 'center'
        },
        series: [{
          type: 'pie',
          radius: ['40%', '70%'],
          avoidLabelOverlap: false,
          label: {
            normal: {
              show: true,
              position: 'inside',
              formatter: '{d}%',
              textStyle: {
                align: 'center',
                baseline: 'middle',
                fontFamily: '微软雅黑',
                fontSize: 15,
                fontWeight: 'bolder'
              }
            },
          },
          emphasis: {
            label: {
              show: true,
              fontSize: '40',
              fontWeight: 'bold'
            }
          },
          labelLine: {
            show: false
          },
          data: []
        }]
      },
      //柱状图
      barOption: {
        title: {
          text: '产业链发展情况',
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
          left: '3%',
          right: '4%',
          bottom: '3%',
          containLabel: true
        },
        xAxis: [{
          name: '家',
          type: 'value',
        }],
        yAxis: [{
          name:'企业',
          type: 'category',
          data: [],
          axisTick: {
            alignWithLabel: true,
          }
        }],
        series: [{
          name: '企业数',
          type: 'bar',
          barWidth: '60%',
          data: [],
          itemStyle: {
            //通常情况下：
            normal:{
              //每个柱子的颜色即为colorList数组里的每一项，如果柱子数目多于colorList的长度，则柱子颜色循环使用该数组中的颜色
              color: function (params){
                var colorList = [
                  '#c23531','#2f4554', '#61a0a8', '#d48265',
                  '#91c7ae', '#749f83', '#ca8622','#C1232B',
                  '#B5C334','#FCCE10', '#E87C25','#27727B',
                  '#FE8463','#9BCA63','#FAD860', '#F3A43B',
                  '#60C0DD', '#D7504B','#C6E579','#F4E001',
                  '#F0805A','#26C0C0'
                ];
                return colorList[params.dataIndex];
              }
            },
            //鼠标悬停时：
            emphasis: {
              shadowBlur: 10,
              shadowOffsetX: 0,
              shadowColor: 'rgba(0, 0, 0, 0.5)'
            }
          }
        }]
      },
      cyList: [],
      qyList: [],
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
      echarts.init(document.getElementById('fan')).setOption(this.fanOption);
      echarts.init(document.getElementById('bar')).setOption(this.barOption);
    },

    /** 初始化图表数据 **/
    async initChartData() {
      //查询产业分布情况
      await selectCyDistribute().then(response => {
        this.cyList = response;
      });

      //查询企业发展情况
      await selectCyDevelop().then(response => {
        this.qyList = response;
      });

      for (let i = 0; i < this.cyList.length; i++) {
        this.fanOption.series[0].data.push({'value': this.cyList[i].cyNum, 'name': this.cyList[i].cyDirection})
      }
      for (let i = 0; i < this.qyList.length; i++) {
        this.barOption.yAxis[0].data.push(this.qyList[i].cyName)
        this.barOption.series[0].data.push(this.qyList[i].qyNum)
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
