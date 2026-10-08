package defpackage;

import androidx.media3.common.util.BackgroundThreadStateHandler;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class b4 implements Runnable {
    public final /* synthetic */ int j;
    public final /* synthetic */ BackgroundThreadStateHandler k;
    public final /* synthetic */ Object l;

    public /* synthetic */ b4(BackgroundThreadStateHandler backgroundThreadStateHandler, Object obj, int i) {
        this.j = i;
        this.k = backgroundThreadStateHandler;
        this.l = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.j;
        Object obj = this.l;
        BackgroundThreadStateHandler backgroundThreadStateHandler = this.k;
        switch (i) {
            case 0:
                if (backgroundThreadStateHandler.f == 0) {
                    Object obj2 = backgroundThreadStateHandler.d;
                    backgroundThreadStateHandler.d = obj;
                    if (!obj2.equals(obj)) {
                        backgroundThreadStateHandler.c.a(obj2, obj);
                        return;
                    }
                    return;
                }
                return;
            default:
                int i2 = backgroundThreadStateHandler.f - 1;
                backgroundThreadStateHandler.f = i2;
                if (i2 == 0) {
                    Object obj3 = backgroundThreadStateHandler.d;
                    backgroundThreadStateHandler.d = obj;
                    if (!obj3.equals(obj)) {
                        backgroundThreadStateHandler.c.a(obj3, obj);
                        return;
                    }
                    return;
                }
                return;
        }
    }
}
