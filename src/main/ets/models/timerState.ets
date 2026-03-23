@ObservedV2
export class TimerState {
  @Trace isCounting: boolean = false
  @Trace remainingSeconds: number = 0
  @Trace selectedTime: number = 10 // 默认10分钟
  @Trace startTime: number = 0 // 开始计时的时间戳（毫秒）
}



