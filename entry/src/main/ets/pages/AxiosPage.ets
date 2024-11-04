import axios, { AxiosResponse } from '@ohos/axios';
import { DataType } from '../type/DataType';
import { ImageType } from '../type/ImageType';

@Entry
@Component
struct AxiosPage {
  @State images: ImageType[] = []

  build() {
    Column() {
      Button("request")
        .onClick(async () => {
          try {
            console.log("zhang", "request")
            const res =
              await axios.get<string, AxiosResponse<DataType<ImageType>, object>, object>("http://wallpaper.apc.360.cn/index.php?c=WallPaper&a=getAppsByCategory&cid=26")
            console.log("zhang", JSON.stringify(res.data))
            this.images.push(...res.data.data)
          } catch (e) {
            console.log("zhang err", JSON.stringify(e))
          }
        })
      List() {
        ForEach(this.images, (item: ImageType) => {
          ListItem() {
            Image(item.url_thumb)
          }
        })
      }
      .width("100%")
      .height("100%")
    }
    .height('100%')
    .width('100%')
  }
}