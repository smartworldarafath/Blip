package net.blip.android.ui.util;

import android.view.ViewGroup;
import android.view.WindowManager;
import androidx.activity.ComponentActivity;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.ComposeView;
import androidx.compose.ui.unit.DpSize;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.u2;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineScope;
import net.blip.android.R;
import net.blip.libblip.Logger;
import net.blip.libblip.LoggerKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.ui.util.CaptureComposableKt$captureComposable$4", f = "CaptureComposable.kt", l = {155}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
public final class CaptureComposableKt$captureComposable$4 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super ImageBitmap>, Object> {
    public WindowManager n;
    public ComposeView o;
    public int p;
    public final /* synthetic */ ComponentActivity q;
    public final /* synthetic */ long r;
    public final /* synthetic */ long s;
    public final /* synthetic */ boolean t;
    public final /* synthetic */ Function3 u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CaptureComposableKt$captureComposable$4(ComponentActivity componentActivity, long j, long j2, boolean z, Function3 function3, Continuation continuation) {
        super(2, continuation);
        this.q = componentActivity;
        this.r = j;
        this.s = j2;
        this.t = z;
        this.u = function3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((CaptureComposableKt$captureComposable$4) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new CaptureComposableKt$captureComposable$4(this.q, this.r, this.s, this.t, this.u, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        WindowManager windowManager;
        Object u;
        ComposeView composeView;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.p;
        if (i != 0) {
            if (i == 1) {
                composeView = this.o;
                WindowManager windowManager2 = this.n;
                ResultKt.b(obj);
                windowManager = windowManager2;
                u = obj;
            } else {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        } else {
            ResultKt.b(obj);
            ComponentActivity componentActivity = this.q;
            if (!componentActivity.isFinishing() && !componentActivity.isDestroyed()) {
                Object systemService = componentActivity.getSystemService("window");
                systemService.getClass();
                windowManager = (WindowManager) systemService;
                ComposeView composeView2 = new ComposeView(componentActivity);
                composeView2.setTag(R.id.view_tree_lifecycle_owner, componentActivity);
                composeView2.setTag(R.id.view_tree_view_model_store_owner, componentActivity);
                composeView2.setTag(R.id.view_tree_saved_state_registry_owner, componentActivity);
                long j = this.r;
                int i2 = (int) (j >> 32);
                int i3 = (int) (j & 4294967295L);
                composeView2.setLayoutParams(new ViewGroup.LayoutParams(i2, i3));
                composeView2.setEnabled(false);
                composeView2.setFocusable(false);
                try {
                    windowManager.addView(composeView2, new WindowManager.LayoutParams(i2, i3, 1001, 512, 1));
                    this.n = windowManager;
                    this.o = composeView2;
                    this.p = 1;
                    final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, IntrinsicsKt.b(this));
                    cancellableContinuationImpl.v();
                    final long j2 = this.s;
                    final boolean z = this.t;
                    final Function3 function3 = this.u;
                    composeView2.setContent(new ComposableLambdaImpl(143219550, true, new Function2<Composer, Integer, Unit>() { // from class: net.blip.android.ui.util.CaptureComposableKt$captureComposable$4$imageBitmap$1$1
                        @Override // kotlin.jvm.functions.Function2
                        public final Object n(Object obj2, Object obj3) {
                            boolean z2;
                            Composer composer = (Composer) obj2;
                            int intValue = ((Number) obj3).intValue();
                            int i4 = 2;
                            if ((intValue & 3) != 2) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            GapComposer gapComposer = (GapComposer) composer;
                            if (gapComposer.N(intValue & 1, z2)) {
                                Object K = gapComposer.K();
                                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
                                if (K == composer$Companion$Empty$1) {
                                    K = SnapshotStateKt.g(Boolean.valueOf(z));
                                    gapComposer.g0(K);
                                }
                                final MutableState mutableState = (MutableState) K;
                                Object K2 = gapComposer.K();
                                if (K2 == composer$Companion$Empty$1) {
                                    K2 = new CaptureScope(new Function0<Unit>() { // from class: net.blip.android.ui.util.CaptureComposableKt$captureComposable$4$imageBitmap$1$1$scope$1$1
                                        @Override // kotlin.jvm.functions.Function0
                                        public final Object a() {
                                            MutableState.this.setValue(Boolean.TRUE);
                                            return Unit.a;
                                        }
                                    });
                                    gapComposer.g0(K2);
                                }
                                CaptureScope captureScope = (CaptureScope) K2;
                                FillElement fillElement = SizeKt.a;
                                long j3 = j2;
                                Modifier l = SizeKt.l(Modifier.Companion.b, DpSize.b(j3), DpSize.a(j3));
                                if (((Boolean) mutableState.getValue()).booleanValue()) {
                                    CaptureComposableKt$captureComposable$4$imageBitmap$1$1$1$1 captureComposableKt$captureComposable$4$imageBitmap$1$1$1$1 = new CaptureComposableKt$captureComposable$4$imageBitmap$1$1$1$1(cancellableContinuationImpl);
                                    l.getClass();
                                    l = DrawModifierKt.d(l, new a(i4, captureComposableKt$captureComposable$4$imageBitmap$1$1$1$1));
                                }
                                MeasurePolicy d = BoxKt.d(Alignment.Companion.a, false);
                                int hashCode = Long.hashCode(gapComposer.T);
                                PersistentCompositionLocalMap l2 = gapComposer.l();
                                Modifier c = ComposedModifierKt.c(gapComposer, l);
                                ComposeUiNode.b.getClass();
                                gapComposer.Z();
                                if (gapComposer.S) {
                                    gapComposer.k(LayoutNode.b0);
                                } else {
                                    gapComposer.j0();
                                }
                                Updater.c(gapComposer, d, ComposeUiNode.Companion.d);
                                Updater.c(gapComposer, l2, ComposeUiNode.Companion.c);
                                Updater.c(gapComposer, Integer.valueOf(hashCode), ComposeUiNode.Companion.e);
                                Updater.b(gapComposer);
                                Updater.c(gapComposer, c, ComposeUiNode.Companion.b);
                                gapComposer.W(392900209);
                                function3.f(captureScope, gapComposer, 0);
                                gapComposer.p(false);
                                gapComposer.p(true);
                            } else {
                                gapComposer.Q();
                            }
                            return Unit.a;
                        }
                    }));
                    u = cancellableContinuationImpl.u();
                    if (u == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                    composeView = composeView2;
                } catch (Exception e) {
                    throw new IllegalStateException("Failed to add view to window manager", e);
                }
            } else {
                u2.l("Activity is finishing or destroyed");
                return null;
            }
        }
        ImageBitmap imageBitmap = (ImageBitmap) u;
        try {
            windowManager.removeView(composeView);
            return imageBitmap;
        } catch (Exception e2) {
            LoggerKt.a.getClass();
            Logger.d("captureComposable", "removing view: " + e2, new Pair[0]);
            return imageBitmap;
        }
    }
}
