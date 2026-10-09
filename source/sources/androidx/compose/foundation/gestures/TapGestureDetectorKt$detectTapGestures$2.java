package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerInputScope;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2", f = "TapGestureDetector.kt", l = {104}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class TapGestureDetectorKt$detectTapGestures$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public /* synthetic */ Object o;
    public final /* synthetic */ PointerInputScope p;
    public final /* synthetic */ Function3 q;
    public final /* synthetic */ Function1 r;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1", f = "TapGestureDetector.kt", l = {105}, m = "invokeSuspend", v = 1)
    /* renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {
        public int l;
        public /* synthetic */ Object m;
        public final /* synthetic */ CoroutineScope n;
        public final /* synthetic */ PressGestureScopeImpl o;
        public final /* synthetic */ Function3 p;
        public final /* synthetic */ Function1 q;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(CoroutineScope coroutineScope, PressGestureScopeImpl pressGestureScopeImpl, Function3 function3, Function1 function1, Continuation continuation) {
            super(2, continuation);
            this.n = coroutineScope;
            this.o = pressGestureScopeImpl;
            this.p = function3;
            this.q = function1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object n(Object obj, Object obj2) {
            return ((AnonymousClass1) s((AwaitPointerEventScope) obj, (Continuation) obj2)).v(Unit.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation s(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.n, this.o, this.p, this.q, continuation);
            anonymousClass1.m = obj;
            return anonymousClass1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object v(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
            int i = this.l;
            if (i != 0) {
                if (i == 1) {
                    ResultKt.b(obj);
                } else {
                    u2.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
            } else {
                ResultKt.b(obj);
                AwaitPointerEventScope awaitPointerEventScope = (AwaitPointerEventScope) this.m;
                this.l = 1;
                if (TapGestureDetectorKt.h(awaitPointerEventScope, this.n, this.o, this.p, this.q, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
            return Unit.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TapGestureDetectorKt$detectTapGestures$2(PointerInputScope pointerInputScope, Function3 function3, Function1 function1, Continuation continuation) {
        super(2, continuation);
        this.p = pointerInputScope;
        this.q = function3;
        this.r = function1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((TapGestureDetectorKt$detectTapGestures$2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        TapGestureDetectorKt$detectTapGestures$2 tapGestureDetectorKt$detectTapGestures$2 = new TapGestureDetectorKt$detectTapGestures$2(this.p, this.q, this.r, continuation);
        tapGestureDetectorKt$detectTapGestures$2.o = obj;
        return tapGestureDetectorKt$detectTapGestures$2;
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
            CoroutineScope coroutineScope = (CoroutineScope) this.o;
            PointerInputScope pointerInputScope = this.p;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(coroutineScope, new PressGestureScopeImpl(pointerInputScope), this.q, this.r, null);
            this.n = 1;
            if (ForEachGestureKt.b(pointerInputScope, anonymousClass1, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.a;
    }
}
