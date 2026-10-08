package androidx.compose.ui.scrollcapture;

import android.graphics.Rect;
import android.view.ScrollCaptureSession;
import androidx.compose.ui.graphics.RectHelper_androidKt;
import androidx.compose.ui.unit.IntRect;
import defpackage.u2;
import java.util.function.Consumer;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.ui.scrollcapture.ComposeScrollCaptureCallback$onScrollCaptureImageRequest$1", f = "ComposeScrollCaptureCallback.android.kt", l = {121}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class ComposeScrollCaptureCallback$onScrollCaptureImageRequest$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ ComposeScrollCaptureCallback o;
    public final /* synthetic */ ScrollCaptureSession p;
    public final /* synthetic */ Rect q;
    public final /* synthetic */ Consumer r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComposeScrollCaptureCallback$onScrollCaptureImageRequest$1(ComposeScrollCaptureCallback composeScrollCaptureCallback, ScrollCaptureSession scrollCaptureSession, Rect rect, Consumer consumer, Continuation continuation) {
        super(2, continuation);
        this.o = composeScrollCaptureCallback;
        this.p = scrollCaptureSession;
        this.q = rect;
        this.r = consumer;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((ComposeScrollCaptureCallback$onScrollCaptureImageRequest$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new ComposeScrollCaptureCallback$onScrollCaptureImageRequest$1(this.o, this.p, this.q, this.r, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        if (i != 0) {
            if (i == 1) {
                ResultKt.b(obj);
            } else {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        } else {
            ResultKt.b(obj);
            ScrollCaptureSession scrollCaptureSession = this.p;
            Rect rect = this.q;
            IntRect intRect = new IntRect(rect.left, rect.top, rect.right, rect.bottom);
            this.n = 1;
            obj = ComposeScrollCaptureCallback.a(this.o, scrollCaptureSession, intRect, this);
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        this.r.accept(RectHelper_androidKt.a((IntRect) obj));
        return Unit.a;
    }
}
