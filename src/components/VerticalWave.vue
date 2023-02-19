<template>
    <div class="wave-container">
        <canvas ref="waveCanvas" />
    </div>
</template>

<script>
    const WaveCount = 4;
    const WaveHeight = 10;
    const WaveSpeed = 0.05;
    const WaveColor = [0, 0, 256];
    const SegmentWidth = 1;
    const CurveAmount = 1;

    export default {
        mounted() {
            this.canvas = this.$refs.waveCanvas;
            this.ctx = this.canvas.getContext('2d');
            this.width = this.canvas.width = this.canvas.offsetWidth;
            this.height = this.canvas.height = this.canvas.offsetHeight;
            this.offset = Array(WaveCount).fill(0).map((_,i) => i * Math.random() * 100)
            this.t = 0;
        
            this.loop();
        },
        methods: {
            drawWave(xOffset, waveIndex) {
                let yOffset = this.offset[waveIndex]
                this.ctx.beginPath();
                this.ctx.moveTo(this.width / 2 + xOffset, 0);

                for (let y = 0; y < this.height; y += SegmentWidth) {
                    const x =
                    WaveHeight *
                    Math.sin((y + this.t - waveIndex * Math.PI) * WaveSpeed) *
                    Math.sin((y / this.height) * Math.PI * CurveAmount);

                    this.ctx.lineTo(this.width / 2 + x + xOffset, y + yOffset);
                }

                this.ctx.lineTo(0, this.height);
                this.ctx.lineTo(0, 0);
                this.ctx.closePath();
                
                const colorOffset = waveIndex * 30;
                const color = `rgba(${WaveColor[0] + colorOffset}, ${WaveColor[1] + colorOffset}, ${WaveColor[2] + colorOffset}, 0.25)`;
                this.ctx.fillStyle = color;
                this.ctx.fill();
            },
            loop() {
                this.ctx.clearRect(0, 0, this.width, this.height);
                for (let i = 0; i < WaveCount; i++) {
                    let xOffset = i * WaveHeight - WaveHeight * WaveCount;
                    this.drawWave(xOffset, i);
                }
                this.t += 0.1;
                requestAnimationFrame(this.loop);
            }
        }
    };
</script>
  
<style scoped>
  .wave-container {
    position: fixed;
    top: 0;
    left: 0;
    width: 80px;
    height: 100%;
  }
  
  canvas {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
  }
</style>