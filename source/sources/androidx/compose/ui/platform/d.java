package androidx.compose.ui.platform;

import android.os.Looper;
import android.view.View;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import defpackage.r1;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class d implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;
    public final /* synthetic */ Object l;

    public /* synthetic */ d(int i, Object obj, Object obj2) {
        this.j = i;
        this.k = obj;
        this.l = obj2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        int i = this.j;
        Object obj2 = this.l;
        Object obj3 = this.k;
        switch (i) {
            case 0:
                return new InputMethodSession((PlatformTextInputMethodRequest) obj3, new r1(0, (AndroidPlatformTextInputSession) obj2));
            default:
                final WrappedComposition wrappedComposition = (WrappedComposition) obj3;
                final ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) obj2;
                final ComposeViewContext composeViewContext = (ComposeViewContext) obj;
                if (!wrappedComposition.l) {
                    LifecycleOwner d = composeViewContext.d();
                    View view = composeViewContext.a;
                    final Lifecycle g = d.g();
                    wrappedComposition.n = composableLambdaImpl;
                    if (wrappedComposition.m == null) {
                        if (!Intrinsics.a(Looper.myLooper(), view.getHandler().getLooper())) {
                            view.post(new Runnable() { // from class: androidx.compose.ui.platform.f
                                @Override // java.lang.Runnable
                                public final void run() {
                                    WrappedComposition wrappedComposition2 = WrappedComposition.this;
                                    if (!wrappedComposition2.l) {
                                        Lifecycle lifecycle = g;
                                        wrappedComposition2.m = lifecycle;
                                        lifecycle.a(wrappedComposition2);
                                    }
                                }
                            });
                        } else {
                            wrappedComposition.m = g;
                            g.a(wrappedComposition);
                        }
                    } else if (((LifecycleRegistry) g).i.compareTo(Lifecycle.State.l) >= 0) {
                        wrappedComposition.k.B(new ComposableLambdaImpl(-1723985096, true, new Function2() { // from class: androidx.compose.ui.platform.g
                            @Override // kotlin.jvm.functions.Function2
                            public final Object n(Object obj4, Object obj5) {
                                boolean z;
                                Composer composer = (Composer) obj4;
                                int intValue = ((Integer) obj5).intValue();
                                if ((intValue & 3) != 2) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                GapComposer gapComposer = (GapComposer) composer;
                                if (gapComposer.N(intValue & 1, z)) {
                                    WrappedComposition wrappedComposition2 = WrappedComposition.this;
                                    AndroidComposeView androidComposeView = wrappedComposition2.j;
                                    boolean h = gapComposer.h(wrappedComposition2);
                                    Object K = gapComposer.K();
                                    Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
                                    if (h || K == composer$Companion$Empty$1) {
                                        K = new WrappedComposition$setContent$1$2$1$1(wrappedComposition2, null);
                                        gapComposer.g0(K);
                                    }
                                    EffectsKt.e(gapComposer, androidComposeView, (Function2) K);
                                    boolean h2 = gapComposer.h(wrappedComposition2);
                                    Object K2 = gapComposer.K();
                                    if (h2 || K2 == composer$Companion$Empty$1) {
                                        K2 = new WrappedComposition$setContent$1$2$2$1(wrappedComposition2, null);
                                        gapComposer.g0(K2);
                                    }
                                    EffectsKt.e(gapComposer, androidComposeView, (Function2) K2);
                                    composeViewContext.a(androidComposeView, composableLambdaImpl, gapComposer, 0);
                                } else {
                                    gapComposer.Q();
                                }
                                return Unit.a;
                            }
                        }));
                    }
                }
                return Unit.a;
        }
    }
}
