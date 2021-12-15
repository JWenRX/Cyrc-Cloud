<template>
  <div class="app-container">
    <el-row>
      <el-col :span="11">
        <div id="radar" class="grid-content" :style="{width: '570px', height: '600px'}"></div>
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
            { name: 'Sales', max: 6500 },
            { name: 'Administration', max: 16000 },
            { name: 'Information Technology', max: 30000 },
            { name: 'Customer Support', max: 38000 },
            { name: 'Development', max: 52000 },
            { name: 'Marketing', max: 25000 }
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
        xAxis: {
          type: 'category',
          data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
        },
        yAxis: {
          type: 'value'
        },
        series: [
          {
            data: [120, 200, 150, 80, 70, 110, 130],
            type: 'bar',
            itemStyle: {
              barBorderRadius: [2, 2, 0, 0], //柱体圆角
              color: new echarts.graphic.LinearGradient(
                //前四个参数用于配置渐变色的起止位置，这四个参数依次对应 右下左上 四个方位。也就是从右边开始顺时针方向。
                //通过修改前4个参数，可以实现不同的渐变方向
                /*第五个参数则是一个数组，用于配置颜色的渐变过程。
                  每项为一个对象，包含offset和color两个参数
                */
                0, 0, 0, 1, [{//代表渐变色从正上方开始
                  offset: 0, //offset范围是0~1，用于表示位置，0是指0%处的颜色
                  color: '#005BEA'
                }, //柱图渐变色
                  {
                    offset: 1, //指100%处的颜色
                    color: '#00C6FB'
                  }
                ]
              ),
            }
          }
        ]
      }
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
      echarts.init(document.getElementById('radar')).setOption(this.radarOption);
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
