package androidx.compose.animation.core;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelIterator;
import kotlinx.coroutines.channels.ChannelResult;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.animation.core.AnimateAsStateKt$animateValueAsState$3$1", f = "AnimateAsState.kt", l = {430}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class AnimateAsStateKt$animateValueAsState$3$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public ChannelIterator n;
    public int o;
    public /* synthetic */ Object p;
    public final /* synthetic */ Channel q;
    public final /* synthetic */ Animatable r;
    public final /* synthetic */ MutableState s;
    public final /* synthetic */ MutableState t;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @DebugMetadata(c = "androidx.compose.animation.core.AnimateAsStateKt$animateValueAsState$3$1$1", f = "AnimateAsState.kt", l = {439}, m = "invokeSuspend", v = 1)
    /* renamed from: androidx.compose.animation.core.AnimateAsStateKt$animateValueAsState$3$1$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        public int n;
        public final /* synthetic */ Object o;
        public final /* synthetic */ Animatable p;
        public final /* synthetic */ MutableState q;
        public final /* synthetic */ MutableState r;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Object obj, Animatable animatable, MutableState mutableState, MutableState mutableState2, Continuation continuation) {
            super(2, continuation);
            this.o = obj;
            this.p = animatable;
            this.q = mutableState;
            this.r = mutableState2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object n(Object obj, Object obj2) {
            return ((AnonymousClass1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation s(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.o, this.p, this.q, this.r, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object v(Object obj) {
            AnonymousClass1 anonymousClass1;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
            int i = this.n;
            Animatable animatable = this.p;
            if (i != 0) {
                if (i == 1) {
                    ResultKt.b(obj);
                    anonymousClass1 = this;
                } else {
                    u2.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
            } else {
                ResultKt.b(obj);
                if (!Intrinsics.a(this.o, ((SnapshotMutableStateImpl) animatable.e).getValue())) {
                    SpringSpec springSpec = AnimateAsStateKt.a;
                    AnimationSpec animationSpec = (AnimationSpec) this.q.getValue();
                    this.n = 1;
                    anonymousClass1 = this;
                    if (Animatable.d(this.p, this.o, animationSpec, null, anonymousClass1, 12) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                return Unit.a;
            }
            SpringSpec springSpec2 = AnimateAsStateKt.a;
            Function1 function1 = (Function1) anonymousClass1.r.getValue();
            if (function1 != null) {
                function1.b(animatable.f());
            }
            return Unit.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnimateAsStateKt$animateValueAsState$3$1(Channel channel, Animatable animatable, MutableState mutableState, MutableState mutableState2, Continuation continuation) {
        super(2, continuation);
        this.q = channel;
        this.r = animatable;
        this.s = mutableState;
        this.t = mutableState2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((AnimateAsStateKt$animateValueAsState$3$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        AnimateAsStateKt$animateValueAsState$3$1 animateAsStateKt$animateValueAsState$3$1 = new AnimateAsStateKt$animateValueAsState$3$1(this.q, this.r, this.s, this.t, continuation);
        animateAsStateKt$animateValueAsState$3$1.p = obj;
        return animateAsStateKt$animateValueAsState$3$1;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0034 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x003d  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0032 -> B:5:0x0035). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        ChannelIterator it;
        CoroutineScope coroutineScope;
        Object obj2;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.o;
        Channel channel = this.q;
        if (i != 0) {
            if (i == 1) {
                it = this.n;
                coroutineScope = (CoroutineScope) this.p;
                ResultKt.b(obj);
                if (((Boolean) obj).booleanValue()) {
                    Object next = it.next();
                    Object a = ChannelResult.a(channel.c());
                    if (a == null) {
                        obj2 = next;
                    } else {
                        obj2 = a;
                    }
                    BuildersKt.c(coroutineScope, null, null, new AnonymousClass1(obj2, this.r, this.s, this.t, null), 3);
                    this.p = coroutineScope;
                    this.n = it;
                    this.o = 1;
                    obj = it.b(this);
                    if (obj == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                    if (((Boolean) obj).booleanValue()) {
                        return Unit.a;
                    }
                }
            } else {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        } else {
            ResultKt.b(obj);
            CoroutineScope coroutineScope2 = (CoroutineScope) this.p;
            it = channel.iterator();
            coroutineScope = coroutineScope2;
            this.p = coroutineScope;
            this.n = it;
            this.o = 1;
            obj = it.b(this);
            if (obj == coroutineSingletons) {
            }
            if (((Boolean) obj).booleanValue()) {
            }
        }
    }
}
