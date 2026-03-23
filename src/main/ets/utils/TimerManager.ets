import { TimerState } from '../models/timerState'
import { contextManager } from './ContextManager'

class TimerManager {
  private static instance: TimerManager = new TimerManager()
  private timerId: number = -1
  private timerState: TimerState | null = null

  static getInstance(): TimerManager {
    return TimerManager.instance
  }

  // 设置定时器状态（从 AppStorageV2 连接）
  setTimerState(state: TimerState): void {
    this.timerState = state
  }

  // 启动定时器
  startTimer(selectedMinutes: number): void {
    if (this.timerState && this.timerState.isCounting) {
      return
    }

    if (this.timerState) {
      this.timerState.isCounting = true
      this.timerState.selectedTime = selectedMinutes
      this.timerState.remainingSeconds = selectedMinutes * 60
      this.timerState.startTime = Date.now()
    }

    // 清除之前的定时器（如果有）
    if (this.timerId !== -1) {
      clearInterval(this.timerId)
    }

    // 启动新的定时器
    this.timerId = setInterval(() => {
      if (this.timerState) {
        // 计算剩余时间：基于开始时间和已过时间
        const elapsedSeconds = Math.floor((Date.now() - this.timerState.startTime) / 1000)
        const totalSeconds = this.timerState.selectedTime * 60
        this.timerState.remainingSeconds = Math.max(0, totalSeconds - elapsedSeconds)

        if (this.timerState.remainingSeconds <= 0) {
          this.stopTimer()
          // 关闭应用
          this.terminateApp()
        }
      }
    }, 1000) as number
  }

  // 停止定时器
  stopTimer(): void {
    if (this.timerId !== -1) {
      clearInterval(this.timerId)
      this.timerId = -1
    }
    if (this.timerState) {
      this.timerState.isCounting = false
      this.timerState.remainingSeconds = 0
      this.timerState.startTime = 0
    }
  }

  // 更新剩余时间（用于页面显示时同步）
  updateRemainingTime(): void {
    if (this.timerState && this.timerState.isCounting && this.timerState.startTime > 0) {
      const elapsedSeconds = Math.floor((Date.now() - this.timerState.startTime) / 1000)
      const totalSeconds = this.timerState.selectedTime * 60
      this.timerState.remainingSeconds = Math.max(0, totalSeconds - elapsedSeconds)

      if (this.timerState.remainingSeconds <= 0) {
        this.stopTimer()
        this.terminateApp()
      }
    }
  }

  // 关闭应用
  private terminateApp(): void {
    try {
      contextManager.terminateSelf()
    } catch (err) {
      console.error('Failed to terminate app:', err)
    }
  }

  // 获取定时器ID（用于调试）
  getTimerId(): number {
    return this.timerId
  }
}

export const timerManager = TimerManager.getInstance()



