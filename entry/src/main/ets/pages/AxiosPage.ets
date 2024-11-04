import axios, { AxiosResponse } from '@ohos/axios';
import { DataType } from '../type/DataType';

@Entry
@Component
struct AxiosPage {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Button("request")
        .onClick(async () => {
          try {
            console.log("zhang", "request")
            const res =
              await axios.get<string, AxiosResponse<object, object>, object>("http://wallpaper.apc.360.cn/index.php?c=WallPaper&a=getAppsByCategory&cid=26")
            console.log("zhang", JSON.stringify(res.data))
          } catch (e) {
            console.log("zhang err", JSON.stringify(e))
          }
        })
    }
    .height('100%')
    .width('100%')
  }
}