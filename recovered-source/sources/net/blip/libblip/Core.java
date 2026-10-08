package net.blip.libblip;

import androidx.datastore.preferences.PreferencesProto$Value;
import com.squareup.wire.ProtoReader;
import defpackage.c;
import defpackage.j6;
import java.nio.ByteBuffer;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.GlobalScope;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import net.blip.libblip.LibBlip;
import net.blip.libblip.event.SetUserAgent;
import net.blip.libblip.frontend.State;
import net.blip.libblip.frontend.State$Companion$ADAPTER$1;
import okio.ByteString;
import okio.Okio;
import okio.RealBufferedSource;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Core {
    public final StateFlow a;
    public final c b;
    public final j6 c;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @DebugMetadata(c = "net.blip.libblip.Core$4", f = "Core.kt", l = {}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
    /* renamed from: net.blip.libblip.Core$4, reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass4 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        public final /* synthetic */ Client n;
        public final /* synthetic */ Core o;
        public final /* synthetic */ ByteBuffer p;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass4(Client client, Core core, ByteBuffer byteBuffer, Continuation continuation) {
            super(2, continuation);
            this.n = client;
            this.o = core;
            this.p = byteBuffer;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object n(Object obj, Object obj2) {
            AnonymousClass4 anonymousClass4 = (AnonymousClass4) s((CoroutineScope) obj, (Continuation) obj2);
            Unit unit = Unit.a;
            anonymousClass4.v(unit);
            return unit;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation s(Object obj, Continuation continuation) {
            return new AnonymousClass4(this.n, this.o, this.p, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object v(Object obj) {
            long j = this.n.a;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
            ResultKt.b(obj);
            while (true) {
                LibBlip.Companion companion = LibBlip.a;
                if (companion.clientExists(j)) {
                    MutableStateFlow mutableStateFlow = (MutableStateFlow) this.o.a;
                    ByteBuffer byteBuffer = this.p;
                    companion.clientGetState(j, byteBuffer);
                    ByteBufferInputStream byteBufferInputStream = new ByteBufferInputStream(byteBuffer);
                    State$Companion$ADAPTER$1 state$Companion$ADAPTER$1 = State.E;
                    state$Companion$ADAPTER$1.getClass();
                    mutableStateFlow.setValue((State) state$Companion$ADAPTER$1.c(new ProtoReader(new RealBufferedSource(Okio.e(byteBufferInputStream)))));
                    LoggerKt.a.getClass();
                    Logger.c("got new state", new Pair[0]);
                } else {
                    LoggerKt.a.getClass();
                    Logger.e("LibBlip client no longer exists", new Pair[0]);
                    return Unit.a;
                }
            }
        }
    }

    public Core(String str, UserAgent userAgent) {
        Client client = new Client(str);
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(8388608);
        LoggerKt.a.getClass();
        Logger.h("waiting for initial state", new Pair[0]);
        allocateDirect.getClass();
        LibBlip.a.clientGetState(client.a, allocateDirect);
        ByteBufferInputStream byteBufferInputStream = new ByteBufferInputStream(allocateDirect);
        State$Companion$ADAPTER$1 state$Companion$ADAPTER$1 = State.E;
        state$Companion$ADAPTER$1.getClass();
        this.a = StateFlowKt.a((State) state$Companion$ADAPTER$1.c(new ProtoReader(new RealBufferedSource(Okio.e(byteBufferInputStream)))));
        Logger.h("received initial state", new Pair[0]);
        BuildersKt.c(GlobalScope.j, null, null, new AnonymousClass4(client, this, allocateDirect, null), 3);
        int i = 14;
        c cVar = new c(i, client);
        this.b = cVar;
        this.c = new j6(i);
        cVar.b(new SetUserAgent(userAgent, ByteString.m));
    }
}
