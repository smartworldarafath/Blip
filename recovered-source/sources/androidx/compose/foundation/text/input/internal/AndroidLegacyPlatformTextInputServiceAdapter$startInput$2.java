package androidx.compose.foundation.text.input.internal;

import android.os.Build;
import android.view.View;
import androidx.compose.foundation.text.handwriting.StylusHandwriting_androidKt;
import androidx.compose.foundation.text.input.internal.LegacyPlatformTextInputServiceAdapter;
import androidx.compose.runtime.MonotonicFrameClockKt;
import androidx.compose.runtime.MonotonicFrameClockKt$withFrameMillis$2;
import androidx.compose.ui.platform.AndroidPlatformTextInputSession;
import androidx.compose.ui.platform.PlatformTextInputSession;
import defpackage.f7;
import defpackage.la;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.text.input.internal.AndroidLegacyPlatformTextInputServiceAdapter$startInput$2", f = "LegacyPlatformTextInputServiceAdapter.android.kt", l = {125}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class AndroidLegacyPlatformTextInputServiceAdapter$startInput$2 extends SuspendLambda implements Function2<PlatformTextInputSession, Continuation<?>, Object> {
    public int n;
    public /* synthetic */ Object o;
    public final /* synthetic */ Function1 p;
    public final /* synthetic */ AndroidLegacyPlatformTextInputServiceAdapter q;
    public final /* synthetic */ LegacyPlatformTextInputServiceAdapter.LegacyPlatformTextInputNode r;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @DebugMetadata(c = "androidx.compose.foundation.text.input.internal.AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1", f = "LegacyPlatformTextInputServiceAdapter.android.kt", l = {149}, m = "invokeSuspend", v = 1)
    /* renamed from: androidx.compose.foundation.text.input.internal.AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<?>, Object> {
        public int n;
        public /* synthetic */ Object o;
        public final /* synthetic */ PlatformTextInputSession p;
        public final /* synthetic */ Function1 q;
        public final /* synthetic */ AndroidLegacyPlatformTextInputServiceAdapter r;
        public final /* synthetic */ LegacyPlatformTextInputServiceAdapter.LegacyPlatformTextInputNode s;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        @DebugMetadata(c = "androidx.compose.foundation.text.input.internal.AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1$1", f = "LegacyPlatformTextInputServiceAdapter.android.kt", l = {140, 141}, m = "invokeSuspend", v = 1)
        /* renamed from: androidx.compose.foundation.text.input.internal.AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1$1, reason: invalid class name and collision with other inner class name */
        /* loaded from: classes.dex */
        public final class C00071 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            public int n;
            public final /* synthetic */ AndroidLegacyPlatformTextInputServiceAdapter o;
            public final /* synthetic */ InputMethodManagerImpl p;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C00071(AndroidLegacyPlatformTextInputServiceAdapter androidLegacyPlatformTextInputServiceAdapter, InputMethodManagerImpl inputMethodManagerImpl, Continuation continuation) {
                super(2, continuation);
                this.o = androidLegacyPlatformTextInputServiceAdapter;
                this.p = inputMethodManagerImpl;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object n(Object obj, Object obj2) {
                return ((C00071) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation s(Object obj, Continuation continuation) {
                return new C00071(this.o, this.p, continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object v(Object obj) {
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                int i = this.n;
                if (i != 0) {
                    if (i != 1) {
                        if (i != 2) {
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        ResultKt.b(obj);
                        f7.h();
                        return null;
                    }
                    ResultKt.b(obj);
                } else {
                    ResultKt.b(obj);
                    la laVar = new la(5);
                    this.n = 1;
                    CoroutineContext coroutineContext = this.k;
                    coroutineContext.getClass();
                    if (MonotonicFrameClockKt.a(coroutineContext).w(this, new MonotonicFrameClockKt$withFrameMillis$2(laVar)) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                MutableSharedFlow j = this.o.j();
                if (j != null) {
                    final InputMethodManagerImpl inputMethodManagerImpl = this.p;
                    FlowCollector flowCollector = new FlowCollector() { // from class: androidx.compose.foundation.text.input.internal.AndroidLegacyPlatformTextInputServiceAdapter.startInput.2.1.1.2
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object r(Object obj2, Continuation continuation) {
                            if (Build.VERSION.SDK_INT >= 34) {
                                InputMethodManagerImpl inputMethodManagerImpl2 = InputMethodManagerImpl.this;
                                inputMethodManagerImpl2.a().startStylusHandwriting(inputMethodManagerImpl2.a);
                            }
                            return Unit.a;
                        }
                    };
                    this.n = 2;
                    SharedFlowImpl.l((SharedFlowImpl) j, flowCollector, this);
                    return coroutineSingletons;
                }
                return Unit.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(PlatformTextInputSession platformTextInputSession, Function1 function1, AndroidLegacyPlatformTextInputServiceAdapter androidLegacyPlatformTextInputServiceAdapter, LegacyPlatformTextInputServiceAdapter.LegacyPlatformTextInputNode legacyPlatformTextInputNode, Continuation continuation) {
            super(2, continuation);
            this.p = platformTextInputSession;
            this.q = function1;
            this.r = androidLegacyPlatformTextInputServiceAdapter;
            this.s = legacyPlatformTextInputNode;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object n(Object obj, Object obj2) {
            ((AnonymousClass1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
            return CoroutineSingletons.j;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation s(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.p, this.q, this.r, this.s, continuation);
            anonymousClass1.o = obj;
            return anonymousClass1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object v(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
            int i = this.n;
            AndroidLegacyPlatformTextInputServiceAdapter androidLegacyPlatformTextInputServiceAdapter = this.r;
            try {
                if (i != 0) {
                    if (i != 1) {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.b(obj);
                    throw new RuntimeException();
                }
                ResultKt.b(obj);
                CoroutineScope coroutineScope = (CoroutineScope) this.o;
                Function1 function1 = LegacyPlatformTextInputServiceAdapter_androidKt.a;
                PlatformTextInputSession platformTextInputSession = this.p;
                AndroidPlatformTextInputSession androidPlatformTextInputSession = (AndroidPlatformTextInputSession) platformTextInputSession;
                View view = androidPlatformTextInputSession.j;
                ((LegacyPlatformTextInputServiceAdapter_androidKt$inputMethodManagerFactory$1) function1).getClass();
                InputMethodManagerImpl inputMethodManagerImpl = new InputMethodManagerImpl(view);
                LegacyTextInputMethodRequest legacyTextInputMethodRequest = new LegacyTextInputMethodRequest(androidPlatformTextInputSession.j, new AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1$request$1(this.s), inputMethodManagerImpl);
                if (StylusHandwriting_androidKt.a) {
                    BuildersKt.c(coroutineScope, null, null, new C00071(androidLegacyPlatformTextInputServiceAdapter, inputMethodManagerImpl, null), 3);
                }
                Function1 function12 = this.q;
                if (function12 != null) {
                    function12.b(legacyTextInputMethodRequest);
                }
                androidLegacyPlatformTextInputServiceAdapter.c = legacyTextInputMethodRequest;
                this.n = 1;
                ((AndroidPlatformTextInputSession) platformTextInputSession).a(legacyTextInputMethodRequest, this);
                return coroutineSingletons;
            } catch (Throwable th) {
                androidLegacyPlatformTextInputServiceAdapter.c = null;
                throw th;
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidLegacyPlatformTextInputServiceAdapter$startInput$2(Function1 function1, AndroidLegacyPlatformTextInputServiceAdapter androidLegacyPlatformTextInputServiceAdapter, LegacyPlatformTextInputServiceAdapter.LegacyPlatformTextInputNode legacyPlatformTextInputNode, Continuation continuation) {
        super(2, continuation);
        this.p = function1;
        this.q = androidLegacyPlatformTextInputServiceAdapter;
        this.r = legacyPlatformTextInputNode;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        ((AndroidLegacyPlatformTextInputServiceAdapter$startInput$2) s((PlatformTextInputSession) obj, (Continuation) obj2)).v(Unit.a);
        return CoroutineSingletons.j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        AndroidLegacyPlatformTextInputServiceAdapter$startInput$2 androidLegacyPlatformTextInputServiceAdapter$startInput$2 = new AndroidLegacyPlatformTextInputServiceAdapter$startInput$2(this.p, this.q, this.r, continuation);
        androidLegacyPlatformTextInputServiceAdapter$startInput$2.o = obj;
        return androidLegacyPlatformTextInputServiceAdapter$startInput$2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        if (i != 0) {
            if (i != 1) {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        } else {
            ResultKt.b(obj);
            AnonymousClass1 anonymousClass1 = new AnonymousClass1((PlatformTextInputSession) this.o, this.p, this.q, this.r, null);
            this.n = 1;
            if (CoroutineScopeKt.c(anonymousClass1, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        f7.h();
        return null;
    }
}
