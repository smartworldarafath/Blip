package defpackage;

import androidx.media3.common.util.Consumer;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.source.MediaLoadData;
import androidx.media3.exoplayer.source.MediaSourceEventListener;
import java.io.IOException;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class gb implements Consumer {
    public final /* synthetic */ MediaSourceEventListener.EventDispatcher j;
    public final /* synthetic */ LoadEventInfo k;
    public final /* synthetic */ MediaLoadData l;
    public final /* synthetic */ IOException m;
    public final /* synthetic */ boolean n;

    public /* synthetic */ gb(MediaSourceEventListener.EventDispatcher eventDispatcher, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z) {
        this.j = eventDispatcher;
        this.k = loadEventInfo;
        this.l = mediaLoadData;
        this.m = iOException;
        this.n = z;
    }

    @Override // androidx.media3.common.util.Consumer
    public final void accept(Object obj) {
        MediaSourceEventListener mediaSourceEventListener = (MediaSourceEventListener) obj;
        MediaSourceEventListener.EventDispatcher eventDispatcher = this.j;
        mediaSourceEventListener.B(eventDispatcher.a, eventDispatcher.b, this.k, this.l, this.m, this.n);
    }
}
