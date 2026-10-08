package androidx.compose.ui.platform;

import androidx.compose.runtime.snapshots.Snapshot;
import defpackage.u2;
import java.util.concurrent.CancellationException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelIterator;
import kotlinx.coroutines.channels.ReceiveChannel;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.ui.platform.GlobalSnapshotManager$ensureStarted$1", f = "GlobalSnapshotManager.android.kt", l = {64}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class GlobalSnapshotManager$ensureStarted$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public ReceiveChannel n;
    public ChannelIterator o;
    public int p;
    public final /* synthetic */ BufferedChannel q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GlobalSnapshotManager$ensureStarted$1(BufferedChannel bufferedChannel, Continuation continuation) {
        super(2, continuation);
        this.q = bufferedChannel;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((GlobalSnapshotManager$ensureStarted$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new GlobalSnapshotManager$ensureStarted$1(this.q, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0030 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0039 A[Catch: all -> 0x0012, TRY_LEAVE, TryCatch #1 {all -> 0x0012, blocks: (B:6:0x000e, B:7:0x0031, B:9:0x0039, B:10:0x0024, B:20:0x001f), top: B:2:0x0006 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x002e -> B:7:0x0031). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        ReceiveChannel receiveChannel;
        ChannelIterator it;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.p;
        CancellationException cancellationException = null;
        try {
            if (i != 0) {
                if (i == 1) {
                    it = this.o;
                    receiveChannel = this.n;
                    ResultKt.b(obj);
                    if (((Boolean) obj).booleanValue()) {
                        GlobalSnapshotManager.b.set(false);
                        Snapshot.Companion.f();
                        this.n = receiveChannel;
                        this.o = it;
                        this.p = 1;
                        obj = it.b(this);
                        if (obj == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                        if (((Boolean) obj).booleanValue()) {
                            receiveChannel.n(null);
                            return Unit.a;
                        }
                    }
                } else {
                    u2.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
            } else {
                ResultKt.b(obj);
                receiveChannel = this.q;
                it = receiveChannel.iterator();
                this.n = receiveChannel;
                this.o = it;
                this.p = 1;
                obj = it.b(this);
                if (obj == coroutineSingletons) {
                }
                if (((Boolean) obj).booleanValue()) {
                }
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (th instanceof CancellationException) {
                    cancellationException = th;
                }
                if (cancellationException == null) {
                    cancellationException = new CancellationException("Channel was consumed, consumer had failed");
                    cancellationException.initCause(th);
                }
                receiveChannel.n(cancellationException);
                throw th2;
            }
        }
    }
}
