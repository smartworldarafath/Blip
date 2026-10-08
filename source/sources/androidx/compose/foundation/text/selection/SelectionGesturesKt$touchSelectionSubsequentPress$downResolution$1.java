package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.gestures.DragGestureDetectorKt;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEventKt;
import androidx.compose.ui.input.pointer.PointerInputChange;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$LongRef;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.text.selection.SelectionGesturesKt$touchSelectionSubsequentPress$downResolution$1", f = "SelectionGestures.kt", l = {200}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class SelectionGesturesKt$touchSelectionSubsequentPress$downResolution$1 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super DownResolution>, Object> {
    public int l;
    public /* synthetic */ Object m;
    public final /* synthetic */ long n;
    public final /* synthetic */ Ref$LongRef o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectionGesturesKt$touchSelectionSubsequentPress$downResolution$1(long j, Ref$LongRef ref$LongRef, Continuation continuation) {
        super(2, continuation);
        this.n = j;
        this.o = ref$LongRef;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((SelectionGesturesKt$touchSelectionSubsequentPress$downResolution$1) s((AwaitPointerEventScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        SelectionGesturesKt$touchSelectionSubsequentPress$downResolution$1 selectionGesturesKt$touchSelectionSubsequentPress$downResolution$1 = new SelectionGesturesKt$touchSelectionSubsequentPress$downResolution$1(this.n, this.o, continuation);
        selectionGesturesKt$touchSelectionSubsequentPress$downResolution$1.m = obj;
        return selectionGesturesKt$touchSelectionSubsequentPress$downResolution$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        AwaitPointerEventScope awaitPointerEventScope;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.l;
        Ref$LongRef ref$LongRef = this.o;
        if (i != 0) {
            if (i == 1) {
                awaitPointerEventScope = (AwaitPointerEventScope) this.m;
                ResultKt.b(obj);
            } else {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        } else {
            ResultKt.b(obj);
            AwaitPointerEventScope awaitPointerEventScope2 = (AwaitPointerEventScope) this.m;
            defpackage.d dVar = new defpackage.d(19, ref$LongRef);
            this.m = awaitPointerEventScope2;
            this.l = 1;
            Object c = DragGestureDetectorKt.c(awaitPointerEventScope2, this.n, dVar, this);
            if (c == coroutineSingletons) {
                return coroutineSingletons;
            }
            obj = c;
            awaitPointerEventScope = awaitPointerEventScope2;
        }
        if (((PointerInputChange) obj) != null && (ref$LongRef.j & 9223372034707292159L) != 9205357640488583168L) {
            return DownResolution.k;
        }
        PointerInputChange pointerInputChange = (PointerInputChange) CollectionsKt.s(awaitPointerEventScope.s().a);
        if (PointerEventKt.d(pointerInputChange)) {
            pointerInputChange.a();
            return DownResolution.j;
        }
        return DownResolution.m;
    }
}
