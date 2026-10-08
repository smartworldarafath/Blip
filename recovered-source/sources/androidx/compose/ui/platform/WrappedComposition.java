package androidx.compose.ui.platform;

import androidx.compose.runtime.Composition;
import androidx.compose.runtime.CompositionImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import kotlin.jvm.functions.Function2;
import net.blip.android.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class WrappedComposition implements Composition, LifecycleEventObserver {
    public final AndroidComposeView j;
    public final CompositionImpl k;
    public boolean l;
    public Lifecycle m;
    public ComposableLambdaImpl n = ComposableSingletons$Wrapper_androidKt.a;

    public WrappedComposition(AndroidComposeView androidComposeView, CompositionImpl compositionImpl) {
        this.j = androidComposeView;
        this.k = compositionImpl;
    }

    @Override // androidx.compose.runtime.Composition
    public final void a() {
        if (!this.l) {
            this.l = true;
            AndroidComposeView androidComposeView = this.j;
            androidComposeView.getView().setTag(R.id.wrapped_composition_tag, null);
            Lifecycle lifecycle = this.m;
            if (lifecycle != null) {
                lifecycle.b(this);
            }
            this.m = null;
            DisposableSaveableStateRegistry disposableSaveableStateRegistry = androidComposeView.p;
            if (disposableSaveableStateRegistry != null) {
                disposableSaveableStateRegistry.k.a();
            }
            androidComposeView.p = null;
        }
        this.k.a();
    }

    public final void b(Function2 function2) {
        this.j.setOnReadyForComposition(new d(1, this, (ComposableLambdaImpl) function2));
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public final void h(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        if (event == Lifecycle.Event.ON_DESTROY) {
            a();
        } else if (event == Lifecycle.Event.ON_CREATE && !this.l) {
            b(this.n);
        }
    }
}
