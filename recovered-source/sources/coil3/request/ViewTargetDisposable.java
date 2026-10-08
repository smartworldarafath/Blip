package coil3.request;

import android.view.View;
import kotlinx.coroutines.Deferred;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ViewTargetDisposable implements Disposable {
    public final View a;
    public volatile Deferred b;

    public ViewTargetDisposable(View view, Deferred deferred) {
        this.a = view;
        this.b = deferred;
    }

    @Override // coil3.request.Disposable
    public final Deferred a() {
        return this.b;
    }
}
