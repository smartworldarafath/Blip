package androidx.compose.foundation.text;

import androidx.compose.foundation.gestures.DragGestureDetectorKt;
import androidx.compose.foundation.gestures.ForEachGestureKt;
import androidx.compose.ui.input.pointer.PointerInputScope;
import defpackage.ra;
import defpackage.sa;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Job;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.text.LongPressTextDragObserverKt$detectDownAndDragGesturesWithObserver$2", f = "LongPressTextDragObserver.kt", l = {}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class LongPressTextDragObserverKt$detectDownAndDragGesturesWithObserver$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Job>, Object> {
    public /* synthetic */ Object n;
    public final /* synthetic */ PointerInputScope o;
    public final /* synthetic */ TextDragObserver p;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @DebugMetadata(c = "androidx.compose.foundation.text.LongPressTextDragObserverKt$detectDownAndDragGesturesWithObserver$2$1", f = "LongPressTextDragObserver.kt", l = {67}, m = "invokeSuspend", v = 1)
    /* renamed from: androidx.compose.foundation.text.LongPressTextDragObserverKt$detectDownAndDragGesturesWithObserver$2$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        public int n;
        public final /* synthetic */ PointerInputScope o;
        public final /* synthetic */ TextDragObserver p;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(PointerInputScope pointerInputScope, TextDragObserver textDragObserver, Continuation continuation) {
            super(2, continuation);
            this.o = pointerInputScope;
            this.p = textDragObserver;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object n(Object obj, Object obj2) {
            return ((AnonymousClass1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation s(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.o, this.p, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object v(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
            int i = this.n;
            Unit unit = Unit.a;
            if (i != 0) {
                if (i == 1) {
                    ResultKt.b(obj);
                    return unit;
                }
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            this.n = 1;
            Object b = ForEachGestureKt.b(this.o, new LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2(this.p, null), this);
            if (b != coroutineSingletons) {
                b = unit;
            }
            if (b == coroutineSingletons) {
                return coroutineSingletons;
            }
            return unit;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @DebugMetadata(c = "androidx.compose.foundation.text.LongPressTextDragObserverKt$detectDownAndDragGesturesWithObserver$2$2", f = "LongPressTextDragObserver.kt", l = {68}, m = "invokeSuspend", v = 1)
    /* renamed from: androidx.compose.foundation.text.LongPressTextDragObserverKt$detectDownAndDragGesturesWithObserver$2$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        public int n;
        public final /* synthetic */ PointerInputScope o;
        public final /* synthetic */ TextDragObserver p;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(PointerInputScope pointerInputScope, TextDragObserver textDragObserver, Continuation continuation) {
            super(2, continuation);
            this.o = pointerInputScope;
            this.p = textDragObserver;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object n(Object obj, Object obj2) {
            return ((AnonymousClass2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation s(Object obj, Continuation continuation) {
            return new AnonymousClass2(this.o, this.p, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object v(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
            int i = this.n;
            Unit unit = Unit.a;
            if (i != 0) {
                if (i == 1) {
                    ResultKt.b(obj);
                    return unit;
                }
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            this.n = 1;
            TextDragObserver textDragObserver = this.p;
            Object d = DragGestureDetectorKt.d(this.o, new ra(textDragObserver, 0), new sa(textDragObserver, 0), new sa(textDragObserver, 1), new defpackage.d(14, textDragObserver), this);
            if (d != coroutineSingletons) {
                d = unit;
            }
            if (d == coroutineSingletons) {
                return coroutineSingletons;
            }
            return unit;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LongPressTextDragObserverKt$detectDownAndDragGesturesWithObserver$2(PointerInputScope pointerInputScope, TextDragObserver textDragObserver, Continuation continuation) {
        super(2, continuation);
        this.o = pointerInputScope;
        this.p = textDragObserver;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((LongPressTextDragObserverKt$detectDownAndDragGesturesWithObserver$2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        LongPressTextDragObserverKt$detectDownAndDragGesturesWithObserver$2 longPressTextDragObserverKt$detectDownAndDragGesturesWithObserver$2 = new LongPressTextDragObserverKt$detectDownAndDragGesturesWithObserver$2(this.o, this.p, continuation);
        longPressTextDragObserverKt$detectDownAndDragGesturesWithObserver$2.n = obj;
        return longPressTextDragObserverKt$detectDownAndDragGesturesWithObserver$2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        ResultKt.b(obj);
        CoroutineScope coroutineScope = (CoroutineScope) this.n;
        CoroutineStart coroutineStart = CoroutineStart.m;
        PointerInputScope pointerInputScope = this.o;
        TextDragObserver textDragObserver = this.p;
        BuildersKt.c(coroutineScope, null, coroutineStart, new AnonymousClass1(pointerInputScope, textDragObserver, null), 1);
        return BuildersKt.c(coroutineScope, null, coroutineStart, new AnonymousClass2(pointerInputScope, textDragObserver, null), 1);
    }
}
