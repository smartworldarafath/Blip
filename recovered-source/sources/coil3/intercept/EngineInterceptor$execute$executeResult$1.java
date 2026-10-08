package coil3.intercept;

import coil3.ComponentRegistry;
import coil3.EventListener;
import coil3.fetch.SourceFetchResult;
import coil3.intercept.EngineInterceptor;
import coil3.request.ImageRequest;
import coil3.request.Options;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "coil3.intercept.EngineInterceptor$execute$executeResult$1", f = "EngineInterceptor.kt", l = {131}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class EngineInterceptor$execute$executeResult$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super EngineInterceptor.ExecuteResult>, Object> {
    public int n;
    public final /* synthetic */ EngineInterceptor o;
    public final /* synthetic */ Ref$ObjectRef p;
    public final /* synthetic */ Ref$ObjectRef q;
    public final /* synthetic */ ImageRequest r;
    public final /* synthetic */ Object s;
    public final /* synthetic */ Ref$ObjectRef t;
    public final /* synthetic */ EventListener u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EngineInterceptor$execute$executeResult$1(EngineInterceptor engineInterceptor, Ref$ObjectRef ref$ObjectRef, Ref$ObjectRef ref$ObjectRef2, ImageRequest imageRequest, Object obj, Ref$ObjectRef ref$ObjectRef3, EventListener eventListener, Continuation continuation) {
        super(2, continuation);
        this.o = engineInterceptor;
        this.p = ref$ObjectRef;
        this.q = ref$ObjectRef2;
        this.r = imageRequest;
        this.s = obj;
        this.t = ref$ObjectRef3;
        this.u = eventListener;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((EngineInterceptor$execute$executeResult$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new EngineInterceptor$execute$executeResult$1(this.o, this.p, this.q, this.r, this.s, this.t, this.u, continuation);
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
        SourceFetchResult sourceFetchResult = (SourceFetchResult) this.p.j;
        ComponentRegistry componentRegistry = (ComponentRegistry) this.q.j;
        Options options = (Options) this.t.j;
        this.n = 1;
        Object a = EngineInterceptor.a(this.o, sourceFetchResult, componentRegistry, this.r, this.s, options, this.u, this);
        if (a == coroutineSingletons) {
            return coroutineSingletons;
        }
        return a;
    }
}
