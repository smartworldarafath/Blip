package defpackage;

import android.os.Handler;
import androidx.media3.common.util.HandlerWrapper;
import java.util.concurrent.Executor;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class u3 implements Executor {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;

    public /* synthetic */ u3(int i, Object obj) {
        this.j = i;
        this.k = obj;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        int i = this.j;
        Object obj = this.k;
        switch (i) {
            case 0:
                ((Handler) obj).post(runnable);
                return;
            case 1:
                ((Handler) obj).post(runnable);
                return;
            default:
                ((HandlerWrapper) obj).d(runnable);
                return;
        }
    }
}
