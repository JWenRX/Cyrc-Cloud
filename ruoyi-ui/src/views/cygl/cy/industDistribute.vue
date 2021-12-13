<template>
  <div class="app-container">
    <el-row>
      <el-col :span="12">
        <div id="fan" class="grid-content" :style="{width: '600px', height: '600px'}"></div>
      </el-col>
      <el-col :span="12">
        <div id="bar" class="grid-content" :style="{width: '600px', height: '550px'}"></div>
      </el-col>
    </el-row>
  </div>
</template>

<script>
import {selectCyDistribute} from "@/api/cygl/cy";
import * as echarts from 'echarts';

export default {

  data() {
    return {
      fanOption: {
        title: {
          text: '产业分布情况',
          left: 'center',
          top: "5%",
          textStyle: {
            color: '#000'
          }
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
      barOption: {
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
        xAxis: [
          {
            type: 'category',
            data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
            axisTick: {
              alignWithLabel: true
            }
          }
        ],
        yAxis: [
          {
            type: 'value'
          }
        ],
        series: [{
          name: 'Direct',
          type: 'bar',
          barWidth: '60%',
          data: [10, 52, 200, 334, 390, 330, 220]
        }]
      },
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
      echarts.init(document.getElementById('fan')).setOption(this.fanOption);
      echarts.init(document.getElementById('bar')).setOption(this.barOption);
      debugger
    },

    /** 初始化图表数据 **/
    async initChartData() {
      //查询产业列表
      await selectCyDistribute().then(response => {
        this.cyList = response;
      });

      for (let i = 0; i < this.cyList.length; i++) {
        this.fanOption.series[0].data.push({'value': this.cyList[i].qyNum, 'name': this.cyList[i].cyDirection})
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
