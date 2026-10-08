package androidx.compose.ui.window;

import androidx.compose.runtime.MonotonicFrameClockKt;
import androidx.compose.ui.platform.InfiniteAnimationPolicy$Key;
import defpackage.la;
import defpackage.u2;
import io.sentry.d;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.ui.window.AndroidPopup_androidKt$Popup$5$1", f = "AndroidPopup.android.kt", l = {496}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class AndroidPopup_androidKt$Popup$5$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public /* synthetic */ Object o;
    public final /* synthetic */ PopupLayout p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidPopup_androidKt$Popup$5$1(PopupLayout popupLayout, Continuation continuation) {
        super(2, continuation);
        this.p = popupLayout;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((AndroidPopup_androidKt$Popup$5$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        AndroidPopup_androidKt$Popup$5$1 androidPopup_androidKt$Popup$5$1 = new AndroidPopup_androidKt$Popup$5$1(this.p, continuation);
        androidPopup_androidKt$Popup$5$1.o = obj;
        return androidPopup_androidKt$Popup$5$1;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0056  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0048 -> B:5:0x004b). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        CoroutineScope coroutineScope;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        if (i != 0) {
            if (i == 1) {
                coroutineScope = (CoroutineScope) this.o;
                ResultKt.b(obj);
                PopupLayout popupLayout = this.p;
                int[] iArr = popupLayout.M;
                if (popupLayout.isAttachedToWindow()) {
                    int i2 = iArr[0];
                    int i3 = iArr[1];
                    popupLayout.w.getLocationOnScreen(iArr);
                    if (i2 != iArr[0] || i3 != iArr[1]) {
                        popupLayout.p();
                    }
                }
                if (CoroutineScopeKt.d(coroutineScope)) {
                    la laVar = new la(5);
                    this.o = coroutineScope;
                    this.n = 1;
                    CoroutineContext coroutineContext = this.k;
                    coroutineContext.getClass();
                    if (coroutineContext.v(InfiniteAnimationPolicy$Key.j) == null) {
                        coroutineContext.getClass();
                        if (MonotonicFrameClockKt.a(coroutineContext).w(this, laVar) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                        PopupLayout popupLayout2 = this.p;
                        int[] iArr2 = popupLayout2.M;
                        if (popupLayout2.isAttachedToWindow()) {
                        }
                        if (CoroutineScopeKt.d(coroutineScope)) {
                            return Unit.a;
                        }
                    } else {
                        d.i();
                        return null;
                    }
                }
            } else {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        } else {
            ResultKt.b(obj);
            coroutineScope = (CoroutineScope) this.o;
            if (CoroutineScopeKt.d(coroutineScope)) {
            }
        }
    }
}
