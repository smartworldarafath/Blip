package androidx.media3.exoplayer.trackselection;

import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import com.google.common.collect.ComparisonChain;
import com.google.common.collect.Ordering;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class b implements Comparator {
    public final /* synthetic */ int j;

    public /* synthetic */ b(int i) {
        this.j = i;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        Ordering e;
        int i = this.j;
        ComparisonChain comparisonChain = ComparisonChain.a;
        switch (i) {
            case 0:
                return Integer.compare(((DefaultTrackSelector.ImageTrackInfo) ((List) obj).get(0)).o, ((DefaultTrackSelector.ImageTrackInfo) ((List) obj2).get(0)).o);
            case 1:
                List list = (List) obj;
                List list2 = (List) obj2;
                int i2 = 4;
                ComparisonChain a = comparisonChain.b((DefaultTrackSelector.VideoTrackInfo) Collections.max(list, new b(i2)), (DefaultTrackSelector.VideoTrackInfo) Collections.max(list2, new b(i2)), new b(i2)).a(list.size(), list2.size());
                int i3 = 5;
                return a.b((DefaultTrackSelector.VideoTrackInfo) Collections.max(list, new b(i3)), (DefaultTrackSelector.VideoTrackInfo) Collections.max(list2, new b(i3)), new b(i3)).e();
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                return ((DefaultTrackSelector.AudioTrackInfo) Collections.max((List) obj)).compareTo((DefaultTrackSelector.AudioTrackInfo) Collections.max((List) obj2));
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                return ((DefaultTrackSelector.TextTrackInfo) ((List) obj).get(0)).compareTo((DefaultTrackSelector.TextTrackInfo) ((List) obj2).get(0));
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                DefaultTrackSelector.VideoTrackInfo videoTrackInfo = (DefaultTrackSelector.VideoTrackInfo) obj;
                DefaultTrackSelector.VideoTrackInfo videoTrackInfo2 = (DefaultTrackSelector.VideoTrackInfo) obj2;
                return comparisonChain.c(videoTrackInfo.q, videoTrackInfo2.q).b(Integer.valueOf(videoTrackInfo.v), Integer.valueOf(videoTrackInfo2.v), Ordering.c().e()).a(videoTrackInfo.w, videoTrackInfo2.w).a(videoTrackInfo.x, videoTrackInfo2.x).b(Integer.valueOf(videoTrackInfo.y), Integer.valueOf(videoTrackInfo2.y), Ordering.c().e()).c(videoTrackInfo.z, videoTrackInfo2.z).a(videoTrackInfo.A, videoTrackInfo2.A).c(videoTrackInfo.r, videoTrackInfo2.r).c(videoTrackInfo.n, videoTrackInfo2.n).c(videoTrackInfo.p, videoTrackInfo2.p).b(Integer.valueOf(videoTrackInfo.u), Integer.valueOf(videoTrackInfo2.u), Ordering.c().e()).c(videoTrackInfo.D, videoTrackInfo2.D).c(videoTrackInfo.F, videoTrackInfo2.F).e();
            default:
                DefaultTrackSelector.VideoTrackInfo videoTrackInfo3 = (DefaultTrackSelector.VideoTrackInfo) obj;
                DefaultTrackSelector.VideoTrackInfo videoTrackInfo4 = (DefaultTrackSelector.VideoTrackInfo) obj2;
                boolean z = videoTrackInfo3.n;
                int i4 = videoTrackInfo3.s;
                if (z && videoTrackInfo3.q) {
                    e = DefaultTrackSelector.k;
                } else {
                    e = DefaultTrackSelector.k.e();
                }
                videoTrackInfo3.o.getClass();
                ComparisonChain b = comparisonChain.c(videoTrackInfo3.H, videoTrackInfo4.H).b(Integer.valueOf(videoTrackInfo3.t), Integer.valueOf(videoTrackInfo4.t), e);
                if (videoTrackInfo3.D && videoTrackInfo3.F) {
                    b = b.a(videoTrackInfo3.G, videoTrackInfo4.G);
                }
                return b.c(videoTrackInfo3.E, videoTrackInfo4.E).b(Integer.valueOf(i4), Integer.valueOf(videoTrackInfo4.s), e).e();
        }
    }
}
