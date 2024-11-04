import { router } from '@kit.ArkUI'

@Entry
@Component
struct Index {
  @State routeList: RouteType[] = [
    {
      name: 'Axios',
      path: 'pages/AxiosPage'
    },
  ]

  build() {
    List() {
      ForEach(this.routeList, (item: RouteType) => {
        ListItem() {
          Button(item.name)
            .onClick(() => {
              router.pushUrl({
                url: item.path
              })
            })
        }
        .margin(10)
      })
    }
    .height('100%')
    .width('100%')
  }
}

interface RouteType {
  name: string
  path: string
}

