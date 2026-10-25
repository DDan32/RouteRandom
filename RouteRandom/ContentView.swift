import SwiftUI
import Playgrounds

struct ContentView: View {
    let routes = [
        Route(
            name: "劍南路", area: "台北內湖", imageName: "劍南路",
            description: "從大直沿劍南路爬上至善路口的入門短坡，坡度多在 5–9%，途中可俯瞰美麗華摩天輪與大直市景，是下班後練爬坡的熱門選擇。",
            distance: 9.4, elevationGain: 242, averageGrade: 5.1
        ),
        Route(
            name: "南深深南", area: "台北南港", imageName: "南深深南",
            description: "從南港沿南深路往深坑方向上行再原路折返，路面寬敞、坡度溫和，綠意盎然，適合剛開始想多爬一點的新手。",
            distance: 12.4, elevationGain: 352, averageGrade: 5.6
        ),
        Route(
            name: "中社路", area: "台北士林", imageName: "中社路",
            description: "由士林外雙溪轉入中社路沿山腰蜿蜒上行，林蔭茂密、景色清幽，最陡處約 13%，是挑戰風櫃嘴前的好練習。",
            distance: 11.1, elevationGain: 287, averageGrade: 5.1
        ),
        Route(
            name: "貓空（順時針）", area: "台北木柵", imageName: "貓空（順時針）",
            description: "從木柵出發順時針繞行貓空茶園，沿途茶館林立，可眺望台北盆地與台北101，爬累了就停下來品茗休息。",
            distance: 12.3, elevationGain: 333, averageGrade: 5.6
        ),
        Route(
            name: "猴山岳", area: "台北木柵", imageName: "猴山岳",
            description: "從木柵出發爬向猴山岳一帶，距離不到 10 km 但坡度集中，最陡約 14%，沿途可遠眺台北101與台北盆地。",
            distance: 9.8, elevationGain: 343, averageGrade: 7.0
        ),
        Route(
            name: "文大後山", area: "台北天母", imageName: "文大後山",
            description: "從天母爬上中國文化大學後山，是欣賞台北盆地全景與夜景的熱門地點，最陡約 14%，傍晚騎上去看夕陽最美。",
            distance: 12.8, elevationGain: 395, averageGrade: 6.0
        ),
        Route(
            name: "風櫃嘴", area: "台北士林", imageName: "風櫃嘴",
            description: "由士林外雙溪經至善路、萬溪產業道路持續爬升至風櫃嘴，沿途山林溪谷景色優美，山頂有補給，是北部單車客的經典爬坡。",
            distance: 21.2, elevationGain: 575, averageGrade: 5.4
        ),
        Route(
            name: "大湖街上五指山", area: "台北內湖", imageName: "大湖街上五指山",
            description: "從內湖大湖公園旁的大湖街一路爬上五指山稜線，坡度連續、最陡約 14%，山上可遠眺內湖與汐止。",
            distance: 18.3, elevationGain: 580, averageGrade: 6.3
        ),
        Route(
            name: "平菁街上冷水坑", area: "台北士林", imageName: "平菁街上冷水坑",
            description: "由士林經平菁街一路爬上陽明山冷水坑，平菁街初春有櫻花步道，終點鄰近擎天崗，爬升接近 850 m。",
            distance: 31.2, elevationGain: 847, averageGrade: 5.2
        ),
        Route(
            name: "行義路上陽金公路最高點", area: "台北天母", imageName: "行義路上陽金公路最高點",
            description: "從天母經行義路溫泉區一路爬上陽金公路最高點，坡度穩定、累積爬升約 750 m，終點一帶可感受陽明山的火山地景。",
            distance: 28.0, elevationGain: 756, averageGrade: 5.4
        ),
        Route(
            name: "清天宮", area: "台北北投", imageName: "清天宮",
            description: "從北投爬上清天宮的短距離陡坡，全程僅 7 km 卻有 410 m 爬升，最陡達 19%，是短而狠的爬坡考驗。",
            distance: 7.4, elevationGain: 410, averageGrade: 10.8
        ),
        Route(
            name: "中湖戰備道上夢幻湖", area: "台北天母", imageName: "中湖戰備道上夢幻湖",
            description: "由天母經中湖戰備道爬上七星山腰的夢幻湖，沿途芒草搖曳、火山地景壯闊，終點湖面常有雲霧繚繞。",
            distance: 33.1, elevationGain: 935, averageGrade: 5.5
        ),
        Route(
            name: "劍中風劍", area: "台北士林", imageName: "劍中風劍",
            description: "劍南路 → 中社路 → 風櫃嘴 → 劍南路，一次串連三條經典坡，累積爬升破千，是進階車友的週末練功課表。",
            distance: 36.5, elevationGain: 1036, averageGrade: 5.6
        ),
        Route(
            name: "中山北路上大屯山助航站", area: "台北天母", imageName: "中山北路上大屯山助航站",
            description: "從天母中山北路一路爬上大屯山頂的助航站，爬升超過 1,100 m、最陡 20%，天氣好時可遠眺淡水河口與觀音山。",
            distance: 34.7, elevationGain: 1130, averageGrade: 6.4
        ),
        Route(
            name: "青春嶺路上陽金公路最高點", area: "台北北投", imageName: "青春嶺路上陽金公路最高點",
            description: "從北投經青春嶺路直上陽金公路最高點，距離不長但坡度驚人，最陡達 24%，是陽明山最硬的上坡之一。",
            distance: 23.4, elevationGain: 822, averageGrade: 7.7
        ),
        Route(
            name: "飛躍的貓咪（順時針）", area: "台北石碇", imageName: "飛躍的貓咪（順時針）",
            description: "從南港出發順時針繞行深坑、石碇山區的產業道路，軌跡宛如一隻躍起的貓，累積爬升近 1,800 m，山區補給少要事先準備。",
            distance: 64.4, elevationGain: 1767, averageGrade: 4.9
        ),
        Route(
            name: "海馬（逆時針）", area: "台北陽明山系", imageName: "海馬（逆時針）",
            description: "從北投出發逆時針繞行陽明山西側與北海岸，軌跡形狀像一隻海馬，沿途有大屯山系與海景，累積爬升近 2,000 m。",
            distance: 77.4, elevationGain: 1980, averageGrade: 4.5
        ),
        Route(
            name: "新陽金P字山道（順時針）", area: "台北陽明山系", imageName: "新陽金P字山道（順時針）",
            description: "串連陽明山多條山道組成大 P 字，距離近 90 km、爬升 2,300 m，是陽明山經典的長距離挑戰。",
            distance: 87.2, elevationGain: 2300, averageGrade: 4.5
        ),
        Route(
            name: "剪刀手（逆時針）", area: "台北陽明山系", imageName: "剪刀手（逆時針）",
            description: "逆時針騎遍陽明山多條上下坡，軌跡像比出「YA」的剪刀手，距離破百、爬升超過 2,700 m，途經擎天崗等經典景點。",
            distance: 105.6, elevationGain: 2703, averageGrade: 4.9
        ),
        Route(
            name: "如來神掌（逆時針）", area: "台北陽明山系", imageName: "如來神掌（逆時針）",
            description: "陽明山系最硬的路線，逆時針串連五條爬坡，軌跡宛如張開的手掌，距離 135 km、爬升超過 3,200 m，需要一整天的體力與補給。",
            distance: 135.1, elevationGain: 3272, averageGrade: 4.7
        ),
    ]

    @State private var selectedRouteIndex = 0

    var body: some View {
        let route = routes[selectedRouteIndex]

        ScrollView {
            VStack(spacing: 20) {
                // 路線圖 (1080×790)，維持原比例完整顯示
                Image(route.imageName)
                    .resizable()
                    .aspectRatio(1080.0 / 790.0, contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 24))

                VStack(spacing: 6) {
                    Text(route.area)
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                    Text(route.name)
                        .font(.largeTitle.bold())
                }

                HStack(spacing: 12) {
                    StatCard(systemImage: "ruler", value: "\(route.distance.formatted(.number.precision(.fractionLength(1)))) km", title: "長度")
                    StatCard(systemImage: "mountain.2", value: "\(route.elevationGain) m", title: "爬升")
                    StatCard(systemImage: "angle", value: "\(route.averageGrade.formatted(.number.precision(.fractionLength(1)))) %", title: "平均坡度")
                }

                Text(route.description)
                    .font(.body)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .fixedSize(horizontal: false, vertical: true)

                Button {
                    withAnimation {
                        selectedRouteIndex = randomIndex()
                    }
                } label: {
                    Text("隨機出發 🚲")
                        .font(.title3.weight(.semibold))
                        .padding(.horizontal, 24)
                        .padding(.vertical, 6)
                }
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.capsule)
                .tint(.blue)
                .controlSize(.large)
            }
            .padding()
        }
    }

    /// 隨機挑選一條與目前不同的路線，避免連續按下時出現同一條
    private func randomIndex() -> Int {
        let candidates = routes.indices.filter { $0 != selectedRouteIndex }
        return candidates.randomElement() ?? selectedRouteIndex
    }
}

/// 長度、爬升、平均坡度的資訊卡片
struct StatCard: View {
    let systemImage: String
    let value: String
    let title: String

    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: systemImage)
                .font(.title2)
                .foregroundStyle(.orange)
                .frame(height: 28)
            Text(value)
                .font(.headline)
                .lineLimit(1)
                .minimumScaleFactor(0.7)
            Text(title)
                .font(.caption)
                .foregroundStyle(.secondary)
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 16)
        .background(Color.orange.opacity(0.1), in: RoundedRectangle(cornerRadius: 16))
    }
}

struct Route {
    let name: String
    let area: String
    let imageName: String
    let description: String
    let distance: Double
    let elevationGain: Int
    /// 上坡路段的平均坡度 (%)，由 GPS 軌跡只計算爬升段而得，不含下坡與平路
    let averageGrade: Double
}

#Preview {
    ContentView()
}

#Playground {
    _ = 1 + 2
}
