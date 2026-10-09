package androidx.compose.ui.platform;

import android.view.View;
import android.view.ViewGroup;
import androidx.compose.runtime.AbstractApplier;
import androidx.compose.runtime.Composition;
import androidx.compose.runtime.CompositionImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.snapshots.SnapshotKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelKt;
import net.blip.android.R;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Wrapper_androidKt {
    public static final ViewGroup.LayoutParams a = new ViewGroup.LayoutParams(-2, -2);

    /* JADX WARN: Removed duplicated region for block: B:21:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0092  */
    /* JADX WARN: Type inference failed for: r1v2, types: [androidx.compose.runtime.AbstractApplier, androidx.compose.ui.node.UiApplier] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Composition a(AbstractComposeView abstractComposeView, ComposeViewContext composeViewContext, ComposableLambdaImpl composableLambdaImpl) {
        AndroidComposeView androidComposeView;
        Object tag;
        WrappedComposition wrappedComposition = null;
        if (GlobalSnapshotManager.a.compareAndSet(false, true)) {
            BufferedChannel a2 = ChannelKt.a(1, 6, null);
            BuildersKt.c(CoroutineScopeKt.a((CoroutineContext) AndroidUiDispatcher.v.getValue()), null, null, new GlobalSnapshotManager$ensureStarted$1(a2, null), 3);
            defpackage.c cVar = new defpackage.c(22, a2);
            synchronized (SnapshotKt.c) {
                SnapshotKt.i = CollectionsKt.G(SnapshotKt.i, cVar);
            }
            SnapshotKt.d(SnapshotKt.a);
        }
        if (abstractComposeView.getChildCount() > 0) {
            View childAt = abstractComposeView.getChildAt(0);
            if (childAt instanceof AndroidComposeView) {
                androidComposeView = (AndroidComposeView) childAt;
            } else {
                androidComposeView = null;
            }
            if (androidComposeView != null) {
                androidComposeView.setComposeViewContext(composeViewContext);
                if (androidComposeView == null) {
                    androidComposeView = new AndroidComposeView(abstractComposeView.getContext(), composeViewContext);
                    abstractComposeView.addView(androidComposeView.getView(), a);
                }
                androidComposeView.setComposeViewContext(composeViewContext);
                if (abstractComposeView.getComposeViewContext$ui() != null) {
                    composeViewContext.e();
                    androidComposeView.setComposeViewContextIncrementedDuringInit$ui(true);
                }
                tag = androidComposeView.getTag(R.id.wrapped_composition_tag);
                if (tag instanceof WrappedComposition) {
                    wrappedComposition = (WrappedComposition) tag;
                }
                if (wrappedComposition == null) {
                    wrappedComposition = new WrappedComposition(androidComposeView, new CompositionImpl(composeViewContext.c(), new AbstractApplier(androidComposeView.getRoot())));
                    androidComposeView.setTag(R.id.wrapped_composition_tag, wrappedComposition);
                }
                wrappedComposition.b(composableLambdaImpl);
                androidComposeView.setFrameEndScheduler$ui(new Wrapper_androidKt$setContent$1(composeViewContext.c()));
                return wrappedComposition;
            }
        } else {
            abstractComposeView.removeAllViews();
        }
        androidComposeView = null;
        if (androidComposeView == null) {
        }
        androidComposeView.setComposeViewContext(composeViewContext);
        if (abstractComposeView.getComposeViewContext$ui() != null) {
        }
        tag = androidComposeView.getTag(R.id.wrapped_composition_tag);
        if (tag instanceof WrappedComposition) {
        }
        if (wrappedComposition == null) {
        }
        wrappedComposition.b(composableLambdaImpl);
        androidComposeView.setFrameEndScheduler$ui(new Wrapper_androidKt$setContent$1(composeViewContext.c()));
        return wrappedComposition;
    }
}
