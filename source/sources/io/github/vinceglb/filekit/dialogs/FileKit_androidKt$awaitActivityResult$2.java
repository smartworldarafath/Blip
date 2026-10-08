package io.github.vinceglb.filekit.dialogs;

import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.u2;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "io.github.vinceglb.filekit.dialogs.FileKit_androidKt$awaitActivityResult$2", f = "FileKit.android.kt", l = {616}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
public final class FileKit_androidKt$awaitActivityResult$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<Object>, Object> {
    public Object n;
    public int o;
    public final /* synthetic */ ActivityResultRegistry p;
    public final /* synthetic */ ActivityResultContract q;
    public final /* synthetic */ Object r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FileKit_androidKt$awaitActivityResult$2(ActivityResultRegistry activityResultRegistry, ActivityResultContract activityResultContract, Object obj, Continuation continuation) {
        super(2, continuation);
        this.p = activityResultRegistry;
        this.q = activityResultContract;
        this.r = obj;
    }

    public static final void x(AtomicBoolean atomicBoolean, Ref$ObjectRef ref$ObjectRef) {
        ActivityResultLauncher activityResultLauncher;
        if (atomicBoolean.compareAndSet(false, true) && (activityResultLauncher = (ActivityResultLauncher) ref$ObjectRef.j) != null) {
            try {
                activityResultLauncher.b();
            } catch (Throwable th) {
                new Result.Failure(th);
            }
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((FileKit_androidKt$awaitActivityResult$2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new FileKit_androidKt$awaitActivityResult$2(this.p, this.q, this.r, continuation);
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.o;
        if (i != 0) {
            if (i == 1) {
                ResultKt.b(obj);
                return obj;
            }
            u2.l("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        Object obj2 = this.r;
        this.n = obj2;
        this.o = 1;
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, IntrinsicsKt.b(this));
        cancellableContinuationImpl.v();
        final ?? obj3 = new Object();
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        String uuid = UUID.randomUUID().toString();
        uuid.getClass();
        obj3.j = this.p.d(uuid, this.q, new ActivityResultCallback() { // from class: io.github.vinceglb.filekit.dialogs.FileKit_androidKt$awaitActivityResult$2$1$1
            @Override // androidx.activity.result.ActivityResultCallback
            public final void d(Object obj4) {
                FileKit_androidKt$awaitActivityResult$2.x(atomicBoolean, obj3);
                CancellableContinuationImpl cancellableContinuationImpl2 = CancellableContinuationImpl.this;
                if (cancellableContinuationImpl2.z()) {
                    cancellableContinuationImpl2.g(obj4);
                }
            }
        });
        cancellableContinuationImpl.x(new Function1<Throwable, Unit>() { // from class: io.github.vinceglb.filekit.dialogs.FileKit_androidKt$awaitActivityResult$2$1$2
            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj4) {
                FileKit_androidKt$awaitActivityResult$2.x(atomicBoolean, obj3);
                return Unit.a;
            }
        });
        try {
            ((ActivityResultLauncher) obj3.j).a(obj2);
        } catch (Throwable th) {
            x(atomicBoolean, obj3);
            if (cancellableContinuationImpl.z()) {
                cancellableContinuationImpl.g(new Result.Failure(th));
            }
        }
        Object u = cancellableContinuationImpl.u();
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        if (u == coroutineSingletons) {
            return coroutineSingletons;
        }
        return u;
    }
}
