# Forest Whisper 森语

> A sleep music player system built with ArkTS for sleep-aid and focus scenarios.  
> 一个基于 ArkTS 开发、面向助眠与专注场景的音乐播放器系统。

---

## 1. Project Overview | 项目概述

**Forest Whisper** is a team project designed for users who need a more immersive and comfortable music experience in sleep and focus scenarios.  
The system integrates music playback, sleep timer, gradual fade-out, content browsing, favorites management, and community interaction, aiming to provide a lightweight and user-friendly audio application.

**Forest Whisper（森语）** 是一个面向助眠与专注场景设计的团队项目，主要服务于希望获得沉浸式、舒适化音乐体验的用户。  
系统集成了音乐播放、定时关闭、渐弱停止、内容浏览、收藏管理以及社区互动等功能，致力于实现一个轻量、实用且体验完整的音频播放器应用。

---

## 2. My Role | 我的职责

As a team member, I participated in multiple stages of the project, including requirement analysis, system design, module development, and testing.  
My work mainly involved the implementation and integration of core functional modules.

作为团队成员，我参与了项目的需求分析、系统设计、模块开发与测试等多个阶段，主要负责核心功能模块的实现与联调工作。

### Specifically, I contributed to | 具体参与内容包括

- requirement analysis and feature planning  
  参与需求分析与功能规划
- player module development  
  参与播放器模块开发
- sleep timer and fade-out logic implementation  
  参与睡眠定时与渐弱停止逻辑实现
- content organization and interaction-related module development  
  参与内容管理与部分交互模块开发
- testing, debugging, and module integration  
  参与测试、调试与模块联调

---

## 3. Main Features | 主要功能

### Music Playback | 音乐播放
- play / pause audio  
  音频播放与暂停
- track switching and playback progress control  
  曲目切换与播放进度控制
- background playback support  
  后台播放支持

### Sleep Mode | 睡眠模式
- configurable sleep timer  
  可配置定时关闭
- gradual volume fade-out before stopping  
  停止前音量渐弱
- improved experience for sleep-aid scenarios  
  优化助眠场景下的使用体验

### Content Management | 内容管理
- content browsing and search  
  音频内容浏览与搜索
- favorites and recent play records  
  收藏与最近播放记录
- profile-related management  
  个人信息相关管理

### Community Interaction | 社区互动
- dynamic/community feed  
  动态社区流展示
- basic interaction features  
  基础互动功能
- support for content publishing and browsing  
  支持内容发布与浏览

---

## 4. Tech Stack | 技术栈

### Development | 开发技术
- **ArkTS**
- **HarmonyOS**

### Core Capabilities | 核心能力
- **AVPlayer**
- **RDB**
- **Event Bus**
- **Cache Service**

### Engineering Practice | 工程实践
- modular development  
  模块化开发
- feature integration  
  功能联调
- debugging and testing  
  调试与测试

---

## 5. Project Structure | 项目结构

```text
Forest Whisper
├─ AppScope/
├─ entry/
├─ hvigorfile.ts
├─ oh-package.json5
├─ oh-package-lock.json5
└─ README.md
