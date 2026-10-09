package defpackage;

import android.app.Activity;
import android.view.View;
import android.view.Window;
import androidx.work.Configuration;
import androidx.work.impl.Scheduler;
import androidx.work.impl.Schedulers;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.WorkGenerationalId;
import io.sentry.android.core.BuildInfoProvider;
import io.sentry.android.core.ScreenshotEventProcessor;
import io.sentry.android.core.internal.util.FirstDrawDoneListener;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class se implements Runnable {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;
    public final /* synthetic */ Object n;

    public /* synthetic */ se(Object obj, Object obj2, Object obj3, Object obj4, int i) {
        this.j = i;
        this.k = obj;
        this.l = obj2;
        this.m = obj3;
        this.n = obj4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.j;
        Object obj = this.n;
        Object obj2 = this.m;
        Object obj3 = this.l;
        Object obj4 = this.k;
        switch (i) {
            case 0:
                List list = (List) obj4;
                WorkGenerationalId workGenerationalId = (WorkGenerationalId) obj3;
                Configuration configuration = (Configuration) obj2;
                WorkDatabase workDatabase = (WorkDatabase) obj;
                String str = Schedulers.a;
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((Scheduler) it.next()).e(workGenerationalId.a);
                }
                Schedulers.b(configuration, workDatabase, list);
                return;
            case 1:
                CountDownLatch countDownLatch = (CountDownLatch) obj;
                try {
                    ((AtomicReference) obj3).set(((ScreenshotEventProcessor) obj4).b((Activity) obj2));
                    return;
                } finally {
                    countDownLatch.countDown();
                }
            default:
                Window window = (Window) obj4;
                Window.Callback callback = (Window.Callback) obj3;
                Runnable runnable = (Runnable) obj2;
                BuildInfoProvider buildInfoProvider = (BuildInfoProvider) obj;
                View peekDecorView = window.peekDecorView();
                if (peekDecorView != null) {
                    window.setCallback(callback);
                    FirstDrawDoneListener firstDrawDoneListener = new FirstDrawDoneListener(peekDecorView, runnable);
                    buildInfoProvider.getClass();
                    peekDecorView.getViewTreeObserver().addOnDrawListener(firstDrawDoneListener);
                    return;
                }
                return;
        }
    }
}
