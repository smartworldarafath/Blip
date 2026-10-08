package defpackage;

import android.content.Context;
import androidx.profileinstaller.ProfileInstaller;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class zd implements Runnable {
    public final /* synthetic */ int j;
    public final /* synthetic */ Context k;

    public /* synthetic */ zd(Context context, int i) {
        this.j = i;
        this.k = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.j;
        Context context = this.k;
        switch (i) {
            case 0:
                new ThreadPoolExecutor(0, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue()).execute(new zd(context, 1));
                return;
            default:
                ProfileInstaller.b(context, new z2(2), ProfileInstaller.a, false);
                return;
        }
    }
}
