package coil3;

import android.graphics.Bitmap;
import android.os.Looper;
import coil3.request.Disposable;
import coil3.request.ImageRequest;
import coil3.request.OneShotDisposable;
import coil3.request.ViewTargetDisposable;
import coil3.request.ViewTargetRequestManager;
import coil3.request.ViewTargetRequestManagerKt;
import coil3.target.Target;
import coil3.target.ViewTarget;
import coil3.util.Utils_androidKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobSupport;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class RealImageLoader_androidKt {
    public static final Disposable a(ImageRequest imageRequest, Deferred deferred) {
        Target target = imageRequest.c;
        if (target instanceof ViewTarget) {
            ViewTargetRequestManager a = ViewTargetRequestManagerKt.a(((ViewTarget) target).getView());
            synchronized (a) {
                ViewTargetDisposable viewTargetDisposable = a.k;
                if (viewTargetDisposable != null) {
                    Bitmap.Config[] configArr = Utils_androidKt.a;
                    if (Intrinsics.a(Looper.myLooper(), Looper.getMainLooper()) && a.n) {
                        a.n = false;
                        viewTargetDisposable.b = deferred;
                        return viewTargetDisposable;
                    }
                }
                Job job = a.l;
                if (job != null) {
                    ((JobSupport) job).n(null);
                }
                a.l = null;
                ViewTargetDisposable viewTargetDisposable2 = new ViewTargetDisposable(a.j, deferred);
                a.k = viewTargetDisposable2;
                return viewTargetDisposable2;
            }
        }
        return new OneShotDisposable(deferred);
    }
}
