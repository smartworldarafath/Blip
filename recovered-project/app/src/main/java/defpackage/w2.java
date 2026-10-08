package defpackage;

import androidx.core.content.res.ResourcesCompat;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import java.util.function.IntConsumer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class w2 implements Runnable {
    public final /* synthetic */ int j;
    public final /* synthetic */ int k;
    public final /* synthetic */ Object l;

    public /* synthetic */ w2(int i, int i2, Object obj) {
        this.j = i2;
        this.l = obj;
        this.k = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.j;
        int i2 = this.k;
        Object obj = this.l;
        switch (i) {
            case 0:
                ((IntConsumer) obj).accept(i2);
                return;
            case 1:
                AudioRendererEventListener audioRendererEventListener = ((AudioRendererEventListener.EventDispatcher) obj).b;
                String str = Util.a;
                audioRendererEventListener.b(i2);
                return;
            default:
                ((ResourcesCompat.FontCallback) obj).b(i2);
                return;
        }
    }
}
