package androidx.core.provider;

import android.os.Handler;
import androidx.core.provider.FontRequestWorker;
import androidx.core.util.Consumer;
import java.util.concurrent.Callable;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class RequestExecutor$ReplyRunnable<T> implements Runnable {
    public Callable j;
    public Consumer k;
    public Handler l;

    @Override // java.lang.Runnable
    public final void run() {
        final Object obj;
        try {
            obj = ((FontRequestWorker.AnonymousClass3) this.j).call();
        } catch (Exception unused) {
            obj = null;
        }
        final Consumer consumer = this.k;
        this.l.post(new Runnable() { // from class: androidx.core.provider.RequestExecutor$ReplyRunnable.1
            @Override // java.lang.Runnable
            public final void run() {
                Consumer.this.accept(obj);
            }
        });
    }
}
