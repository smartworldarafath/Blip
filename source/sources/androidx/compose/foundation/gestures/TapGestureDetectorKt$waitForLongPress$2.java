package androidx.compose.foundation.gestures;

import androidx.compose.foundation.gestures.LongPressResult;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventKt;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerInputChange;
import defpackage.u2;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$waitForLongPress$2", f = "TapGestureDetector.kt", l = {412, 435}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class TapGestureDetectorKt$waitForLongPress$2 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {
    public int l;
    public /* synthetic */ Object m;
    public final /* synthetic */ PointerEventPass n;
    public final /* synthetic */ Ref$ObjectRef o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TapGestureDetectorKt$waitForLongPress$2(PointerEventPass pointerEventPass, Ref$ObjectRef ref$ObjectRef, Continuation continuation) {
        super(2, continuation);
        this.n = pointerEventPass;
        this.o = ref$ObjectRef;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((TapGestureDetectorKt$waitForLongPress$2) s((AwaitPointerEventScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        TapGestureDetectorKt$waitForLongPress$2 tapGestureDetectorKt$waitForLongPress$2 = new TapGestureDetectorKt$waitForLongPress$2(this.n, this.o, continuation);
        tapGestureDetectorKt$waitForLongPress$2.m = obj;
        return tapGestureDetectorKt$waitForLongPress$2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x00af, code lost:
    
        r5.j = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0040, code lost:
    
        if (r8 != r1) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x005c, code lost:
    
        if (r8.c != 2) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x005e, code lost:
    
        r5.j = androidx.compose.foundation.gestures.LongPressResult.Success.a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0063, code lost:
    
        r8 = r9.size();
        r10 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0068, code lost:
    
        if (r10 >= r8) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x006a, code lost:
    
        r11 = (androidx.compose.ui.input.pointer.PointerInputChange) r9.get(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0074, code lost:
    
        if (r11.c() != false) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0082, code lost:
    
        if (androidx.compose.ui.input.pointer.PointerEventKt.e(r11, r2.f(), r2.p0()) == false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0085, code lost:
    
        r10 = r10 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0088, code lost:
    
        r5.j = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x008b, code lost:
    
        r8 = androidx.compose.ui.input.pointer.PointerEventPass.l;
        r16.m = r2;
        r16.l = 2;
        r8 = r2.q(r8, r16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0095, code lost:
    
        if (r8 != r1) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0097, code lost:
    
        return r1;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0095 -> B:6:0x0098). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        AwaitPointerEventScope awaitPointerEventScope;
        Object obj2;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.l;
        LongPressResult.Canceled canceled = LongPressResult.Canceled.a;
        Ref$ObjectRef ref$ObjectRef = this.o;
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    awaitPointerEventScope = (AwaitPointerEventScope) this.m;
                    ResultKt.b(obj);
                    Object q = obj;
                    List list = ((PointerEvent) q).a;
                    int size = list.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        if (((PointerInputChange) list.get(i2)).c()) {
                            break;
                        }
                    }
                    this.m = awaitPointerEventScope;
                    this.l = 1;
                    obj2 = awaitPointerEventScope.q(this.n, this);
                } else {
                    u2.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
            } else {
                awaitPointerEventScope = (AwaitPointerEventScope) this.m;
                ResultKt.b(obj);
                obj2 = obj;
                PointerEvent pointerEvent = (PointerEvent) obj2;
                List list2 = pointerEvent.a;
                int size2 = list2.size();
                int i3 = 0;
                while (true) {
                    if (i3 < size2) {
                        if (!PointerEventKt.c((PointerInputChange) list2.get(i3))) {
                            break;
                        }
                        i3++;
                    } else {
                        ref$ObjectRef.j = new LongPressResult.Released((PointerInputChange) list2.get(0));
                        break;
                    }
                }
                return Unit.a;
            }
        } else {
            ResultKt.b(obj);
            awaitPointerEventScope = (AwaitPointerEventScope) this.m;
            this.m = awaitPointerEventScope;
            this.l = 1;
            obj2 = awaitPointerEventScope.q(this.n, this);
        }
    }
}
