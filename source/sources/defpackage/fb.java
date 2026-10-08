package defpackage;

import androidx.media3.common.util.Consumer;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.source.MediaLoadData;
import androidx.media3.exoplayer.source.MediaSourceEventListener;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class fb implements Consumer {
    public final /* synthetic */ int j;
    public final /* synthetic */ MediaSourceEventListener.EventDispatcher k;
    public final /* synthetic */ LoadEventInfo l;
    public final /* synthetic */ MediaLoadData m;

    public /* synthetic */ fb(MediaSourceEventListener.EventDispatcher eventDispatcher, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, int i) {
        this.j = i;
        this.k = eventDispatcher;
        this.l = loadEventInfo;
        this.m = mediaLoadData;
    }

    @Override // androidx.media3.common.util.Consumer
    public final void accept(Object obj) {
        int i = this.j;
        MediaLoadData mediaLoadData = this.m;
        LoadEventInfo loadEventInfo = this.l;
        MediaSourceEventListener.EventDispatcher eventDispatcher = this.k;
        MediaSourceEventListener mediaSourceEventListener = (MediaSourceEventListener) obj;
        switch (i) {
            case 0:
                mediaSourceEventListener.g(eventDispatcher.a, eventDispatcher.b, loadEventInfo, mediaLoadData);
                return;
            default:
                mediaSourceEventListener.E(eventDispatcher.a, eventDispatcher.b, loadEventInfo, mediaLoadData);
                return;
        }
    }
}
