package defpackage;

import androidx.media3.common.Player;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import com.google.common.base.Function;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class d7 implements ListenerSet.Event, Function {
    public final /* synthetic */ int j;
    public final /* synthetic */ int k;

    public /* synthetic */ d7(AnalyticsListener.EventTime eventTime, int i, Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2) {
        this.j = 0;
        this.k = i;
    }

    @Override // com.google.common.base.Function
    public Object apply(Object obj) {
        int i = this.j;
        int i2 = this.k;
        switch (i) {
            case 1:
                return Integer.valueOf(i2);
            default:
                return Integer.valueOf(i2);
        }
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void b(Object obj) {
        AnalyticsListener analyticsListener = (AnalyticsListener) obj;
        analyticsListener.getClass();
        analyticsListener.i(this.k);
    }

    public /* synthetic */ d7(int i, int i2) {
        this.j = i2;
        this.k = i;
    }
}
