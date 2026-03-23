import { SongItemType } from "../models/music"

// 聚合 DailyRecommend1-4 中的所有歌曲（纯数据，不依赖 UI 组件）
export function getDailyRecommendSongs(): SongItemType[] {
  const songs: SongItemType[] = [
    // DailyRecommend1
    {
      img:'https://pic1.imgdb.cn/item/6950eb63a0c391c56de5e0d4.jpg',
      name:'古琴禅音 冥想助眠',
      author:'怜乐',
      url:'http://music.163.com/song/media/outer/url?id=2083417309.mp3',
      id:'1000'
    },
    {
      img:'https://pic1.imgdb.cn/item/6950eb63a0c391c56de5e0d8.jpg',
      name:'古琴禅乐 大自然就在耳边',
      author:'怜乐',
      url:'http://music.163.com/song/media/outer/url?id=2083417306.mp3',
      id:'1001'
    },
    {
      img:'https://pic1.imgdb.cn/item/6950eb63a0c391c56de5e0d3.jpg',
      name:'Ethereal Elegance',
      author:'Aaron Flemming',
      url:'http://music.163.com/song/media/outer/url?id=2639399583.mp3',
      id:'1002'
    },
    {
      img:'https://pic1.imgdb.cn/item/6950eb63a0c391c56de5e0d7.jpg',
      name:'Sunshine avenue',
      author:'Philip Grass',
      url:'http://music.163.com/song/media/outer/url?id=2603138176.mp3',
      id:'1003'
    },
    {
      img:'https://pic1.imgdb.cn/item/6950eb63a0c391c56de5e0d6.jpg',
      name:'Droplets',
      author:'Camilo Branca',
      url:'http://music.163.com/song/media/outer/url?id=2671537999.mp3',
      id:'1004'
    },

    // DailyRecommend2
    {
      img:'https://pic1.imgdb.cn/item/6950fae5a0c391c56de5e230.jpg',
      name:'432 Hz Vibrations',
      author:'Elnas',
      url:'http://music.163.com/song/media/outer/url?id=2004730741.mp3',
      id:'2001'
    },
    {
      img:'https://pic1.imgdb.cn/item/6950fae6a0c391c56de5e231.jpg',
      name:'432 Hz Calm Down',
      author:'Inner Peace Champions',
      url:'http://music.163.com/song/media/outer/url?id=2004728898.mp3',
      id:'2002'
    },
    {
      img:'https://pic1.imgdb.cn/item/6950fae5a0c391c56de5e22f.jpg',
      name:'432 Hz Flying Drones',
      author:'Elnas',
      url:'http://music.163.com/song/media/outer/url?id=2001744817.mp3',
      id:'2003'
    },
    {
      img:'https://pic1.imgdb.cn/item/6950fbaba0c391c56de5e242.jpg',
      name:"Nature's Path 432 Hz",
      author:'Madna Eúra',
      url:'http://music.163.com/song/media/outer/url?id=2018599035.mp3',
      id:'2005'
    },
    {
      img:'https://pic1.imgdb.cn/item/6950fbaba0c391c56de5e244.jpg',
      name:'Horizon 432 Hz',
      author:'Arina Ferora',
      url:'http://music.163.com/song/media/outer/url?id=2021539330.mp3',
      id:'2006'
    },
    {
      img:'https://pic1.imgdb.cn/item/6950fbaba0c391c56de5e243.jpg',
      name:'432hz Mindfullness in Vibration',
      author:'Pan Galactic Vibration',
      url:'http://music.163.com/song/media/outer/url?id=2008675515.mp3',
      id:'2007'
    },
    {
      img:'https://pic1.imgdb.cn/item/6950fbaba0c391c56de5e245.jpg',
      name:'Red Moon 432 Hz',
      author:'Bhoden',
      url:'http://music.163.com/song/media/outer/url?id=2021293537.mp3',
      id:'2008'
    },
    {
      img:'https://pic1.imgdb.cn/item/6950fbaba0c391c56de5e246.jpg',
      name:'Music On Water 432 Hz',
      author:'Allowe',
      url:'http://music.163.com/song/media/outer/url?id=2040136997.mp3',
      id:'2009'
    },

    // DailyRecommend3
    {
      img:'https://pic1.imgdb.cn/item/6950f444a0c391c56de5e1bc.jpg',
      name:'宁静睡眠 432赫兹',
      author:'焦虑自愈',
      url:'http://music.163.com/song/media/outer/url?id=1893368574.mp3',
      id:'3000'
    },
    {
      img:'https://pic1.imgdb.cn/item/6950f445a0c391c56de5e1bf.jpg',
      name:'脑波',
      author:'焦虑自愈',
      url:'http://music.163.com/song/media/outer/url?id=1899235057.mp3',
      id:'3001'
    },
    {
      img:'https://pic1.imgdb.cn/item/6950f444a0c391c56de5e1bb.jpg',
      name:'疗愈之音·轻柔助眠氛围冥想曲',
      author:'声音疗愈师',
      url:'http://music.163.com/song/media/outer/url?id=2680211713.mp3',
      id:'3002'
    },
    {
      img:'https://pic1.imgdb.cn/item/6950f444a0c391c56de5e1bd.jpg',
      name:'银河系脑洞助眠瑜伽（meditation）',
      author:'咖啡与书店',
      url:'http://music.163.com/song/media/outer/url?id=2158889076.mp3',
      id:'3003'
    },

    // DailyRecommend4
    {
      img:'https://pic1.imgdb.cn/item/694251eecf318614eda2ee49.jpg',
      name:'Rhythmic Rain (Suitable for Sleep)',
      author:'Echoes of Nature',
      url:'http://music.163.com/song/media/outer/url?id=1320363877.mp3',
      id:'4000'
    },
    {
      img:'https://pic1.imgdb.cn/item/694250bbcf318614eda2dbcd.jpg',
      name:'Hard Rain',
      author:'Rain Sounds',
      url:'http://music.163.com/song/media/outer/url?id=1424130839.mp3',
      id:'4001'
    },
    {
      img:'https://pic1.imgdb.cn/item/694251eecf318614eda2ee4c.jpg',
      name:'Relaxing Rain',
      author:'Rain Sounds',
      url:'http://music.163.com/song/media/outer/url?id=1427745575.mp3',
      id:'4002'
    },
    {
      img:'https://pic1.imgdb.cn/item/6942529fcf318614eda2f87a.jpg',
      name:'Sleep Rain Sounds',
      author:'Rain Sounds',
      url:'http://music.163.com/song/media/outer/url?id=1427745572.mp3',
      id:'4003'
    },
    {
      img:'https://pic1.imgdb.cn/item/694251fdcf318614eda2ef24.jpg',
      name:'Rain On Roof',
      author:'Rain Sounds',
      url:'http://music.163.com/song/media/outer/url?id=1427745579.mp3',
      id:'4004'
    },
    {
      img:'https://pic1.imgdb.cn/item/6950eb63a0c391c56de5e0d5.jpg',
      name:'Peaceful Nature',
      author:'Sacred Dreams',
      url:'http://music.163.com/song/media/outer/url?id=2062101668.mp3',
      id:'4005'
    },
    {
      img:'https://pic1.imgdb.cn/item/6950ebb6a0c391c56de5e0e7.jpg',
      name:'Nature Therapy',
      author:'Sacred Dreams',
      url:'http://music.163.com/song/media/outer/url?id=2028610790.mp3',
      id:'4006'
    },
    {
      img:'https://pic1.imgdb.cn/item/6950ebb6a0c391c56de5e0e6.jpg',
      name:'Peaceful Drifting Clouds',
      author:'Sacred Dreams',
      url:'http://music.163.com/song/media/outer/url?id=2750362096.mp3',
      id:'4007'
    },
    {
      img:'https://pic1.imgdb.cn/item/6950ebb6a0c391c56de5e0e9.jpg',
      name:'Open Windows',
      author:'Leonore Baldwin',
      url:'http://music.163.com/song/media/outer/url?id=1985438982.mp3',
      id:'4008'
    },
    {
      img:'https://pic1.imgdb.cn/item/6950ebb6a0c391c56de5e0e8.jpg',
      name:"Nature's Canvas",
      author:'Inner Purpose',
      url:'http://music.163.com/song/media/outer/url?id=2035953329.mp3',
      id:'4009'
    }
  ]

  return songs
}

