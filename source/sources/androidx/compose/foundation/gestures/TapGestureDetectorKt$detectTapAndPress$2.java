package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputScope;
import defpackage.i2;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Job;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2", f = "TapGestureDetector.kt", l = {274}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class TapGestureDetectorKt$detectTapAndPress$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public /* synthetic */ Object o;
    public final /* synthetic */ PointerInputScope p;
    public final /* synthetic */ Function3 q;
    public final /* synthetic */ i2 r;
    public final /* synthetic */ PressGestureScopeImpl s;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2$1", f = "TapGestureDetector.kt", l = {277, 283}, m = "invokeSuspend", v = 1)
    /* renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {
        public Object l;
        public int m;
        public /* synthetic */ Object n;
        public final /* synthetic */ CoroutineScope o;
        public final /* synthetic */ Function3 p;
        public final /* synthetic */ i2 q;
        public final /* synthetic */ PressGestureScopeImpl r;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        @DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2$1$1", f = "TapGestureDetector.kt", l = {280}, m = "invokeSuspend", v = 1)
        /* renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2$1$1, reason: invalid class name and collision with other inner class name */
        /* loaded from: classes.dex */
        public final class C00011 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            public int n;
            public final /* synthetic */ Function3 o;
            public final /* synthetic */ PressGestureScopeImpl p;
            public final /* synthetic */ PointerInputChange q;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C00011(Function3 function3, PressGestureScopeImpl pressGestureScopeImpl, PointerInputChange pointerInputChange, Continuation continuation) {
                super(2, continuation);
                this.o = function3;
                this.p = pressGestureScopeImpl;
                this.q = pointerInputChange;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object n(Object obj, Object obj2) {
                return ((C00011) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation s(Object obj, Continuation continuation) {
                return new C00011(this.o, this.p, this.q, continuation);
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
                    Offset offset = new Offset(this.q.c);
                    this.n = 1;
                    if (this.o.f(this.p, offset, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                return Unit.a;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        @DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2$1$2", f = "TapGestureDetector.kt", l = {}, m = "invokeSuspend", v = 1)
        /* renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2$1$2, reason: invalid class name */
        /* loaded from: classes.dex */
        public final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            public final /* synthetic */ PressGestureScopeImpl n;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass2(PressGestureScopeImpl pressGestureScopeImpl, Continuation continuation) {
                super(2, continuation);
                this.n = pressGestureScopeImpl;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object n(Object obj, Object obj2) {
                AnonymousClass2 anonymousClass2 = (AnonymousClass2) s((CoroutineScope) obj, (Continuation) obj2);
                Unit unit = Unit.a;
                anonymousClass2.v(unit);
                return unit;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation s(Object obj, Continuation continuation) {
                return new AnonymousClass2(this.n, continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object v(Object obj) {
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                ResultKt.b(obj);
                this.n.b();
                return Unit.a;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        @DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2$1$3", f = "TapGestureDetector.kt", l = {}, m = "invokeSuspend", v = 1)
        /* renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2$1$3, reason: invalid class name */
        /* loaded from: classes.dex */
        public final class AnonymousClass3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            public final /* synthetic */ PressGestureScopeImpl n;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass3(PressGestureScopeImpl pressGestureScopeImpl, Continuation continuation) {
                super(2, continuation);
                this.n = pressGestureScopeImpl;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object n(Object obj, Object obj2) {
                AnonymousClass3 anonymousClass3 = (AnonymousClass3) s((CoroutineScope) obj, (Continuation) obj2);
                Unit unit = Unit.a;
                anonymousClass3.v(unit);
                return unit;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation s(Object obj, Continuation continuation) {
                return new AnonymousClass3(this.n, continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object v(Object obj) {
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                ResultKt.b(obj);
                this.n.c();
                return Unit.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(CoroutineScope coroutineScope, Function3 function3, i2 i2Var, PressGestureScopeImpl pressGestureScopeImpl, Continuation continuation) {
            super(2, continuation);
            this.o = coroutineScope;
            this.p = function3;
            this.q = i2Var;
            this.r = pressGestureScopeImpl;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object n(Object obj, Object obj2) {
            return ((AnonymousClass1) s((AwaitPointerEventScope) obj, (Continuation) obj2)).v(Unit.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation s(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.o, this.p, this.q, this.r, continuation);
            anonymousClass1.n = obj;
            return anonymousClass1;
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x007e  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0075  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object v(Object obj) {
            Job c;
            AwaitPointerEventScope awaitPointerEventScope;
            Job job;
            PointerInputChange pointerInputChange;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
            int i = this.m;
            CoroutineScope coroutineScope = this.o;
            PressGestureScopeImpl pressGestureScopeImpl = this.r;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        job = (Job) this.n;
                        ResultKt.b(obj);
                        pointerInputChange = (PointerInputChange) obj;
                        if (pointerInputChange != null) {
                            TapGestureDetectorKt.g(coroutineScope, job, new AnonymousClass2(pressGestureScopeImpl, null));
                        } else {
                            pointerInputChange.a();
                            TapGestureDetectorKt.g(coroutineScope, job, new AnonymousClass3(pressGestureScopeImpl, null));
                            this.q.b(new Offset(pointerInputChange.c));
                        }
                        return Unit.a;
                    }
                    u2.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                c = (Job) this.l;
                awaitPointerEventScope = (AwaitPointerEventScope) this.n;
                ResultKt.b(obj);
            } else {
                ResultKt.b(obj);
                AwaitPointerEventScope awaitPointerEventScope2 = (AwaitPointerEventScope) this.n;
                c = BuildersKt.c(coroutineScope, null, CoroutineStart.m, new TapGestureDetectorKt$detectTapAndPress$2$1$resetJob$1(pressGestureScopeImpl, null), 1);
                this.n = awaitPointerEventScope2;
                this.l = c;
                this.m = 1;
                Object b = TapGestureDetectorKt.b(awaitPointerEventScope2, this, 3);
                if (b != coroutineSingletons) {
                    awaitPointerEventScope = awaitPointerEventScope2;
                    obj = b;
                }
                return coroutineSingletons;
            }
            PointerInputChange pointerInputChange2 = (PointerInputChange) obj;
            pointerInputChange2.a();
            Function3 function3 = TapGestureDetectorKt.a;
            Function3 function32 = this.p;
            if (function32 != function3) {
                TapGestureDetectorKt.g(coroutineScope, c, new C00011(function32, pressGestureScopeImpl, pointerInputChange2, null));
            }
            this.n = c;
            this.l = null;
            this.m = 2;
            obj = TapGestureDetectorKt.j(awaitPointerEventScope, PointerEventPass.k, this);
            if (obj != coroutineSingletons) {
                job = c;
                pointerInputChange = (PointerInputChange) obj;
                if (pointerInputChange != null) {
                }
                return Unit.a;
            }
            return coroutineSingletons;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TapGestureDetectorKt$detectTapAndPress$2(PointerInputScope pointerInputScope, Function3 function3, i2 i2Var, PressGestureScopeImpl pressGestureScopeImpl, Continuation continuation) {
        super(2, continuation);
        this.p = pointerInputScope;
        this.q = function3;
        this.r = i2Var;
        this.s = pressGestureScopeImpl;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((TapGestureDetectorKt$detectTapAndPress$2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        TapGestureDetectorKt$detectTapAndPress$2 tapGestureDetectorKt$detectTapAndPress$2 = new TapGestureDetectorKt$detectTapAndPress$2(this.p, this.q, this.r, this.s, continuation);
        tapGestureDetectorKt$detectTapAndPress$2.o = obj;
        return tapGestureDetectorKt$detectTapAndPress$2;
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
            AnonymousClass1 anonymousClass1 = new AnonymousClass1((CoroutineScope) this.o, this.q, this.r, this.s, null);
            this.n = 1;
            if (ForEachGestureKt.b(this.p, anonymousClass1, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.a;
    }
}
