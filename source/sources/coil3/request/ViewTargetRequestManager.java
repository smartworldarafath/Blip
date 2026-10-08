package coil3.request;

import android.view.View;
import kotlinx.coroutines.Job;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ViewTargetRequestManager implements View.OnAttachStateChangeListener {
    public final View j;
    public ViewTargetDisposable k;
    public Job l;
    public ViewTargetRequestDelegate m;
    public boolean n;

    public ViewTargetRequestManager(View view) {
        this.j = view;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        ViewTargetRequestDelegate viewTargetRequestDelegate = this.m;
        if (viewTargetRequestDelegate == null) {
            return;
        }
        this.n = true;
        viewTargetRequestDelegate.j.a(viewTargetRequestDelegate.k);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        ViewTargetRequestDelegate viewTargetRequestDelegate = this.m;
        if (viewTargetRequestDelegate != null) {
            viewTargetRequestDelegate.d();
        }
    }
}
