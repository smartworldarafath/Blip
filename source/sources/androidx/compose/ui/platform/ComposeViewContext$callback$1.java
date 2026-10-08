package androidx.compose.ui.platform;

import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import android.view.ViewTreeObserver;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.res.ResourceIdCache;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ComposeViewContext$callback$1 implements ComponentCallbacks2, ViewTreeObserver.OnWindowFocusChangeListener {
    public final /* synthetic */ ComposeViewContext j;

    public ComposeViewContext$callback$1(ComposeViewContext composeViewContext) {
        this.j = composeViewContext;
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        this.j.f(configuration);
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
        ComposeViewContext composeViewContext = this.j;
        composeViewContext.g.a.clear();
        ResourceIdCache resourceIdCache = composeViewContext.h;
        synchronized (resourceIdCache) {
            resourceIdCache.a.c();
        }
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i) {
        ComposeViewContext composeViewContext = this.j;
        composeViewContext.g.a.clear();
        ResourceIdCache resourceIdCache = composeViewContext.h;
        synchronized (resourceIdCache) {
            resourceIdCache.a.c();
        }
    }

    @Override // android.view.ViewTreeObserver.OnWindowFocusChangeListener
    public final void onWindowFocusChanged(boolean z) {
        ((SnapshotMutableStateImpl) this.j.t.a).setValue(Boolean.valueOf(z));
    }
}
