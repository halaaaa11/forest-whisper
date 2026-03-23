import { AppStorageV2 } from '@kit.ArkUI'

interface SleepTipsContent {
  image: string;
  title: string;
  content: string[];
}

// 简单的状态类用于存储轮播图索引
class SwiperIndexState {
  currentIndex: number = 0;
}

@Builder
export function SleepTipsBuilder() {
  SleepTipsPage();
}

@ComponentV2
struct SleepTipsPage {
  // 路由栈
  pathStack: NavPathStack = AppStorageV2.connect(NavPathStack, 'navStack', () => new NavPathStack())!;
  // 当前轮播图索引，从 AppStorage 读取
  swiperIndexState: SwiperIndexState = AppStorageV2.connect(SwiperIndexState, 'swiperIndex', () => new SwiperIndexState())!;

  // 轮播图内容数据
  tipsContent: SleepTipsContent[] = [
    {
      image: 'app.media.p001' as string,
      title: '「睡个好觉」也是一项可以培养的技能',
      content: [
        '你是不是也有这种时候：明明很累，却翻来覆去睡不着？或者睡了七八小时，醒来还是觉得疲惫？神经科学家Andrew Huberman 在本文中提出了一套简单实用的睡眠策略，用四个词概括：QQRT——数量、质量、规律性、时间安排。',
        '数量：成年人每晚需要7～9小时睡眠。太少恢复不了，太多可能也是质量问题。',
        '质量：不是睡多久，而是有没有睡好。碎片化、频繁醒来，都会降低恢复效果。',
        '规律性：每天尽量在同一时间睡觉和起床，误差控制在30分钟以内。比起熬夜后补觉，更规律的作息对健康更有利。',
        '时间安排：顺应自己的作息类型（晨型/夜型），不要硬掰生物钟。',
        '他还分享了几个提升睡眠质量的关键习惯：',
        '白天晒光，晚上避光',
        '清晨10–15分钟的自然光照能同步生物钟，帮助晚上更快入睡。晚上尽量使用昏黄低位灯光，减少蓝光暴露，必要时戴眼罩、用遮光帘。',
        '维持低温环境',
        '理想睡眠温度约为19°C。睡前泡热水澡或淋浴，帮助体温先升后降，也能加速入睡。手脚露出被子，也有助于散热。',
        '控制饮食与咖啡因',
        '睡前2小时避免大餐，也别饿着肚子睡觉。避免睡前8–10小时内摄入咖啡因，即使你能"喝了秒睡"，它仍会影响睡眠结构。',
        '睡前"减速"',
        '建立固定的睡前放松仪式，如听音乐、冥想、阅读等，远离社交媒体、工作邮件或激烈运动。别靠酒精入睡，它会破坏深度睡眠。',
        '睡不着，别硬躺',
        '入睡超过20分钟还清醒？起身去别处做点轻松的事，困了再回床。避免把"床"和"清醒"绑定在一起。',
        'Huberman 提醒我们：睡眠不是消极的"休息"，而是主动的修复过程。你白天的状态，很大程度上取决于你昨晚怎么睡的。别再赌运气，好好睡觉，也是一个可以练的技能。'
      ]
    },
    {
      image: 'app.media.p002' as string,
      title: '如何完成一次「完美睡眠」',
      content: [
        '你是否曾在准备睡觉时，手不自觉地拿起手机？时间在不知不觉中流逝，早晨醒来时却感到疲惫不堪。很多人都羡慕那些睡得少却依然充满活力的人，今天就来揭秘如何提升睡眠质量，告别疲惫，迎接崭新的一天。',
        '科学睡眠的真相',
        '重要的不是你睡了多久，而是你的睡眠质量。我们的睡眠周期为90分钟，包含深度睡眠和快速眼动睡眠（REM），这两个阶段对身体和大脑的恢复至关重要。',
        '高效睡眠公式',
        '1. 保持作息规律：每天在固定时间入睡和起床，可以强化你的昼夜节律，让你每个清晨都精神焕发。',
        '2. 遵守90分钟规则：将睡眠时间设定为90分钟的倍数，这样在完整周期结束时醒来，你会感觉神清气爽。',
        '3. 睡前关机程序：睡前最后一个小时，远离电子产品，给大脑一个从清醒到睡眠的过渡期。使用"3-2-1法则"，在睡前3小时停止进食，2小时远离工作，1小时关闭所有屏幕。',
        '4. 晨光唤醒法：醒来后走到户外，让阳光照进你的眼睛，重置生物钟，提升清醒感。',
        '5. 晨间激活：起床后做简单运动，唤醒身体，提升心率。',
        '高级睡眠优化技巧',
        '咖啡因的时机：午后2点后不再喝咖啡，以免影响晚上的睡眠。',
        '打造理想睡眠环境：保持卧室黑暗、凉爽和安静，创造理想的睡眠环境。',
        '睡前思绪清理：花15分钟写下你的想法和担忧，帮助大脑放松，准备进入睡眠状态。',
        '通过这些方法，你可以在5到6小时的睡眠中获得8小时高质量睡眠的效果。让我们一起告别疲惫，迎接充满活力的每一天吧！'
      ]
    },
    {
      image: 'app.media.p003' as string,
      title: '外刊精读｜爱睡觉有益长寿',
      content: [
        '这篇来自时代周刊的文章探讨了睡眠与长寿的关系及优化睡眠的方法',
        '核心结论',
        '睡眠是延长健康寿命（无病健康时长）的关键，其质量直接影响寿命、认知功能、免疫系统。每晚 7-9 小时睡眠是健康基础，睡眠不足 6 小时会显著增加疾病风险，规律睡眠比时长更重要。',
        '睡眠的重要性证据',
        '认知与健康影响',
        '1. 睡眠不足使大脑记忆新信息能力下降',
        '2. 24 小时不睡等同酒驾（血酒精浓度 0.10%）',
        '长期健康风险',
        '1. 睡眠 < 6 小时者患癌风险翻倍，阿尔茨海默病、焦虑抑郁风险显著增加。',
        '2. 男性连续 5 晚睡 5 小时，睾酮水平降至年长 10 岁者状态；女性生殖激素（如雌激素）亦受影响。',
        '3. 晚睡 4 小时可使健康人进入糖尿病前期',
        '睡眠优化建议',
        '基础目标',
        '7-9 小时睡眠，睡眠效率（卧床睡眠时长占比）需≥85%',
        '规律作息',
        '每日固定作息时间，偏差≤±25 分钟，优先于单纯追求时长。',
        '顺应生物钟',
        '根据自身类型（早睡型 / 晚睡型）调整入睡时间，如晚睡者可从 23:30 开始，每几晚提前 15-30 分钟。',
        '生活习惯调整',
        '睡前 90 分钟结束运动，避免体温过高影响入睡；睡前 2 小时完成进食，减少消化干扰；睡前 1 小时调暗光线 70%，站立使用手机，移走床头时钟避免焦虑。',
        '压力与疾病管理',
        '睡前通过写日记、热水澡、冥想等缓解 "疲惫却亢奋" 状态；用工具监测睡眠呼吸暂停（如打鼾、喘气），及时就医。'
      ]
    },
    {
      image: 'app.media.p004' as string,
      title: '好好睡觉，比爱更重要',
      content: [
        '我们曾那么渴望被理解、被深爱，如同追逐遥不可及的月光。',
        '后来才懂得，"人人都有各自的月亮，没有谁可以做到完全的感同身受"',
        '那些独自烹饪的晚餐、独自刷过数次的电影、独自蜷缩的午休角落……最终筑起的，并非孤岛，而是完整的自我城池。',
        '然而，在这座城池里最容易忽略的，往往是那个最需要被温柔以待的自己——尤其在夜晚。',
        '好好睡觉，有时真的比爱更重要。',
        '因为爱可能缺席、可能流动、可能伤人，但一场深沉、安稳的睡眠，是身体与灵魂永不背叛的自我救赎。🌙',
        '睡眠，是身体最诚实的自由宣言',
        '我们常谈精神自由，却忘了身体是自由的根基。',
        '当身体被白日的喧嚣榨干，被压力绷紧如弦，被焦虑反复灼烧，它唯一能发出的求救信号，就是疲惫与失眠。',
        '此时，一张能温柔承托、自由呼吸的床，告诉身体："此刻，你属于自己。"🌙',
        '睡眠，是情绪最有效的自然疗愈',
        '我们独自咽下的委屈、强撑的坚强、无处安放的敏感，在清醒时或许能被理性压制，却总在夜深人静时翻涌。',
        '这时，与其在黑暗中辗转反侧咀嚼苦涩，不如让一场深睡来温柔包裹。',
        '睡眠是最好的清道夫，它用无声的黑暗溶解白天的尘埃，让受伤的心灵在睡梦中自我修复。',
        '醒来时，那份"满满的好心情"，并非世界变了，而是你被黑夜温柔地疗愈过。🌙',
        '当月光成为你最温柔的访客，当床成为你最忠诚的盟友，当深睡成为你最私密的庆典——你便已在寂静中，完成了对自己最深切的爱与尊重。',
        '这份爱，无声，却比任何喧嚣的情话都更恒久、更治愈。',
        '你是否也曾在一个人的深夜里，被一场好睡眠彻底治愈？',
        '今晚，愿我们都能早熄灯，沉入云端，让身体自由，让灵魂安眠。',
        '毕竟，好好爱自己，从今夜的一场好觉开始。'
      ]
    },
    {
      image: 'app.media.p005' as string,
      title: '越想睡越睡不着？试试这个感官放松锚定法！',
      content: [
        '你是否曾在深夜辗转难眠，大脑像脱缰野马停不下来？5-4-3-2-1感官锚定法是一种简单却高效的心理放松技巧，能帮你缓解焦虑、稳定情绪，回归当下，从而更容易入睡。',
        '这个方法的核心是通过调动五种感官，将注意力从焦虑的思绪中抽离出来，转向此时此地的真实体验。做法如下：',
        '· 5样你能看到的东西',
        '· 4样你能触摸到的东西',
        '· 3样你能听到的声音',
        '· 2样你能闻到的气味',
        '· 1样你能尝到的味道',
        '你可以随时使用这个方法，尤其当你感到压力大、心神不宁或思绪混乱时。试着找一个安静的地方坐下，先专注于呼吸——深而缓的呼吸能让你逐渐平静下来，然后依序进行这5个感官步骤。',
        '它也非常适合用在睡前，有助于放松身体、缓解焦虑，为入睡做好准备。下面是将这套方法应用在睡前的一些小技巧：',
        '看到的5样东西',
        '卧室光线最好柔和而昏暗，比如落日灯或岩盐灯都是不错的选择。光线越暗，褪黑素分泌越多，越容易产生睡意。如果房间太暗，也可以在脑中回忆你房间里的物品，比如窗帘的颜色、床头柜上的书等，这同样能分散焦虑的思绪。',
        '触摸到的4样东西',
        '感受被窝的柔软、睡衣的质地、床单的温度、眼罩贴在皮肤上的感觉……选择舒适的床品，维持适宜的室温，会让你更享受上床这一刻，进入放松状态。',
        '听到的3样声音',
        '安静的环境有助睡眠，但不是每个人都喜欢绝对的寂静。你可以尝试白噪音、轻柔音乐或自然音，比如雨声、海浪、虫鸣……让它们成为你的睡眠伴侣。',
        '闻到的2种气味',
        '睡前喷上你喜欢的香氛或精油，比如薰衣草、洋甘菊等助眠味道，不仅让入睡的仪式感更强，还能帮助身体建立"闻到这个味道＝该睡觉了"的条件反射。',
        '尝到的1样味道',
        '睡前两三小时避免大餐，但可以喝一小杯温牛奶或洋甘菊茶，或者吃一块奶酪，这些富含色氨酸的食物有助于分泌褪黑素，让你更容易产生睡意。坚持每天吃点睡前"小仪式"，大脑会慢慢学会：这是休息的信号。',
        '为什么这种方法有效？',
        '因为它让你从纷乱的脑海中抽身，把注意力拉回到当下的身体感受。这正是正念（mindfulness）的核心：活在当下、感受当下。而正念练习已被证实有助于放松肌肉、降低血压、安抚思绪，对提高睡眠质量非常有效。',
        '下次失眠时，不妨试试这个简单的小练习，或许能帮你一觉到天明。'
      ]
    }
  ];

  // 轮播图资源列表（用于获取图片，必须与 Recommend.ets 中的 swiperList 保持一致）
  swiperList: string[] = [
    'app.media.p001',
    'app.media.p002',
    'app.media.p003',
    'app.media.p004',
    'app.media.p005'
  ];

  // 判断段落是否是标题
  isParagraphTitle(paragraph: string, index: number): boolean {
    const hasPeriod = paragraph.includes('。');
    const isNumberedList = paragraph.match(/^\d+\./);
    const isShort = paragraph.length < 35;
    const isVeryShort = paragraph.length < 25;
    const endsWithColon = paragraph.trim().endsWith('：');
    const hasComma = paragraph.includes('，');
    const looksLikeTitle = isVeryShort && hasComma && (paragraph.startsWith('睡眠') || paragraph.startsWith('好好'));
    
    return index > 0 && 
           isShort && 
           !hasPeriod && 
           !isNumberedList &&
           (endsWithColon || (!paragraph.includes('：') && (!hasComma || looksLikeTitle)));
  }

  // 获取图片资源（直接使用轮播图中的图片）
  getImageResource(): ResourceStr {
    const index = this.swiperIndexState.currentIndex;
    // 直接使用 swiperList 中的图片，确保与轮播图一致
    if (index >= 0 && index < this.swiperList.length) {
      return $r(this.swiperList[index]);
    }
    // 默认返回第一个图片
    return $r(this.swiperList[0]);
  }

  @Builder
  contentParagraphBuilder(paragraph: string, index: number) {
    if (this.isParagraphTitle(paragraph, index)) {
      // 小标题样式
      Text(paragraph)
        .fontSize(18)
        .fontWeight(FontWeight.Medium)
        .fontColor('#ffffff')
        .margin({ top: 16 });
    } else {
      // 普通段落样式
      Text(paragraph)
        .fontSize(15)
        .fontColor('#e0e0e0')
        .lineHeight(24)
        .margin({ top: index === 0 ? 8 : 0 });
    }
  }

  build() {
    NavDestination() {
      Stack({ alignContent: Alignment.TopStart }) {
        // 可滚动的内容区域（包含图片和文本）
        Scroll() {
          Column({ space: 0 }) {
            // 顶部大图（可以滑动）
            Image(this.getImageResource())
              .width('100%')
              .height(300)
              .objectFit(ImageFit.Contain)
              .backgroundColor('#333333')
              .alt($r('app.media.p001'));

            // 文本内容区域
            Column({ space: 16 }) {
              if (this.swiperIndexState.currentIndex < this.tipsContent.length) {
                // 主标题
                Text(this.tipsContent[this.swiperIndexState.currentIndex].title)
                  .fontSize(24)
                  .fontWeight(FontWeight.Bold)
                  .fontColor('#ffffff')
                  .margin({ top: 20 });

              // 动态渲染内容段落
              ForEach(this.tipsContent[this.swiperIndexState.currentIndex].content, 
                (paragraph: string, index: number) => {
                  this.contentParagraphBuilder(paragraph, index);
                }, 
                (paragraph: string, index: number) => `${index}-${paragraph.substring(0, 10)}`
              );

                Blank()
                  .height(32);
              } else {
                // 默认内容（如果索引超出范围）
                Text('暂无内容')
                  .fontSize(16)
                  .fontColor('#cccccc')
                  .margin({ top: 20 });
              }
            }
            .padding({ left: 16, right: 16, bottom: 24 });
          }
        }
        .width('100%')
        .height('100%');

        // 固定在顶部的返回按钮
        Row() {
          Image($r('app.media.ic_back'))
            .width(24)
            .height(24)
            .fillColor(Color.White)
            .onClick(() => {
              this.pathStack.pop();
            })
        }
        .width(40)
        .height(40)
        .backgroundColor('#80000000')
        .borderRadius(20)
        .justifyContent(FlexAlign.Center)
        .margin({ left: 16, top: 24 })
        .expandSafeArea([SafeAreaType.SYSTEM], [SafeAreaEdge.TOP]);
      }
      .width('100%')
      .height('100%')
      .backgroundColor('#1a1a1a');
    }
    .hideTitleBar(true)
    .expandSafeArea([SafeAreaType.SYSTEM], [SafeAreaEdge.TOP, SafeAreaEdge.BOTTOM])
    .onReady((context: NavDestinationContext) => {
      this.pathStack = context.pathStack;
    });
  }
}




