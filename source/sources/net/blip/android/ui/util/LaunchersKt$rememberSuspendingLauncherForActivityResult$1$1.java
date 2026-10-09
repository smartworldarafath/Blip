package net.blip.android.ui.util;

import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.datastore.preferences.PreferencesProto$Value;
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
import kotlinx.coroutines.NonCancellable;
import kotlinx.coroutines.channels.Channel;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.ui.util.LaunchersKt$rememberSuspendingLauncherForActivityResult$1$1", f = "Launchers.kt", l = {123}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
final class LaunchersKt$rememberSuspendingLauncherForActivityResult$1$1 extends SuspendLambda implements Function2<Object, Continuation<Object>, Object> {
    public int n;
    public /* synthetic */ Object o;
    public final /* synthetic */ ManagedActivityResultLauncher p;
    public final /* synthetic */ Channel q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @DebugMetadata(c = "net.blip.android.ui.util.LaunchersKt$rememberSuspendingLauncherForActivityResult$1$1$1", f = "Launchers.kt", l = {124}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
    /* renamed from: net.blip.android.ui.util.LaunchersKt$rememberSuspendingLauncherForActivityResult$1$1$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<Object>, Object> {
        public int n;
        public final /* synthetic */ Channel o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Channel channel, Continuation continuation) {
            super(2, continuation);
            this.o = channel;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object n(Object obj, Object obj2) {
            return ((AnonymousClass1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation s(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.o, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object v(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
            int i = this.n;
            if (i != 0) {
                if (i == 1) {
                    ResultKt.b(obj);
                    return obj;
                }
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            this.n = 1;
            Object i2 = this.o.i(this);
            if (i2 == coroutineSingletons) {
                return coroutineSingletons;
            }
            return i2;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LaunchersKt$rememberSuspendingLauncherForActivityResult$1$1(ManagedActivityResultLauncher managedActivityResultLauncher, Channel channel, Continuation continuation) {
        super(2, continuation);
        this.p = managedActivityResultLauncher;
        this.q = channel;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((LaunchersKt$rememberSuspendingLauncherForActivityResult$1$1) s(obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        LaunchersKt$rememberSuspendingLauncherForActivityResult$1$1 launchersKt$rememberSuspendingLauncherForActivityResult$1$1 = new LaunchersKt$rememberSuspendingLauncherForActivityResult$1$1(this.p, this.q, continuation);
        launchersKt$rememberSuspendingLauncherForActivityResult$1$1.o = obj;
        return launchersKt$rememberSuspendingLauncherForActivityResult$1$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        Object obj2 = this.o;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        if (i != 0) {
            if (i == 1) {
                ResultKt.b(obj);
                return obj;
            }
            u2.l("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        this.p.a(obj2);
        NonCancellable nonCancellable = NonCancellable.k;
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.q, null);
        this.o = null;
        this.n = 1;
        Object e = BuildersKt.e(nonCancellable, anonymousClass1, this);
        if (e == coroutineSingletons) {
            return coroutineSingletons;
        }
        return e;
    }
}
