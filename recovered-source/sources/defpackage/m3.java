package defpackage;

import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class m3 implements Runnable {
    public final /* synthetic */ int j;
    public final /* synthetic */ AudioRendererEventListener.EventDispatcher k;
    public final /* synthetic */ Exception l;

    public /* synthetic */ m3(AudioRendererEventListener.EventDispatcher eventDispatcher, Exception exc, int i) {
        this.j = i;
        this.k = eventDispatcher;
        this.l = exc;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.j;
        Exception exc = this.l;
        AudioRendererEventListener.EventDispatcher eventDispatcher = this.k;
        switch (i) {
            case 0:
                AudioRendererEventListener audioRendererEventListener = eventDispatcher.b;
                String str = Util.a;
                audioRendererEventListener.z(exc);
                return;
            default:
                AudioRendererEventListener audioRendererEventListener2 = eventDispatcher.b;
                String str2 = Util.a;
                audioRendererEventListener2.w(exc);
                return;
        }
    }
}
