package net.blip.android.ui.transfer;

import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.u2;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.internal.CombineKt;
import net.blip.android.filetypes.FileIcon;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TransferThumbnailStackKt$TransferThumbnailStack$1$1$invokeSuspend$$inlined$combine$1 implements Flow<List<? extends FileIcon>> {
    public final /* synthetic */ Flow[] j;

    @DebugMetadata(c = "net.blip.android.ui.transfer.TransferThumbnailStackKt$TransferThumbnailStack$1$1$invokeSuspend$$inlined$combine$1", f = "TransferThumbnailStack.kt", l = {112}, m = "collect", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
    /* renamed from: net.blip.android.ui.transfer.TransferThumbnailStackKt$TransferThumbnailStack$1$1$invokeSuspend$$inlined$combine$1$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends ContinuationImpl {
        public /* synthetic */ Object m;
        public int n;

        public AnonymousClass1(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object v(Object obj) {
            this.m = obj;
            this.n |= Integer.MIN_VALUE;
            return TransferThumbnailStackKt$TransferThumbnailStack$1$1$invokeSuspend$$inlined$combine$1.this.a(null, this);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @DebugMetadata(c = "net.blip.android.ui.transfer.TransferThumbnailStackKt$TransferThumbnailStack$1$1$invokeSuspend$$inlined$combine$1$3", f = "TransferThumbnailStack.kt", l = {288}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
    /* renamed from: net.blip.android.ui.transfer.TransferThumbnailStackKt$TransferThumbnailStack$1$1$invokeSuspend$$inlined$combine$1$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super List<? extends FileIcon>>, FileIcon[], Continuation<? super Unit>, Object> {
        public int n;
        public /* synthetic */ FlowCollector o;
        public /* synthetic */ Object[] p;

        /* JADX WARN: Type inference failed for: r1v1, types: [net.blip.android.ui.transfer.TransferThumbnailStackKt$TransferThumbnailStack$1$1$invokeSuspend$$inlined$combine$1$3, kotlin.coroutines.jvm.internal.SuspendLambda] */
        @Override // kotlin.jvm.functions.Function3
        public final Object f(Object obj, Object obj2, Object obj3) {
            ?? suspendLambda = new SuspendLambda(3, (Continuation) obj3);
            suspendLambda.o = (FlowCollector) obj;
            suspendLambda.p = (Object[]) obj2;
            return suspendLambda.v(Unit.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object v(Object obj) {
            FlowCollector flowCollector = this.o;
            Object[] objArr = this.p;
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
                List v = ArraysKt.v((FileIcon[]) objArr);
                this.o = null;
                this.p = null;
                this.n = 1;
                if (flowCollector.r(v, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
            return Unit.a;
        }
    }

    public TransferThumbnailStackKt$TransferThumbnailStack$1$1$invokeSuspend$$inlined$combine$1(Flow[] flowArr) {
        this.j = flowArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /* JADX WARN: Type inference failed for: r2v1, types: [kotlin.coroutines.jvm.internal.SuspendLambda, kotlin.jvm.functions.Function3] */
    @Override // kotlinx.coroutines.flow.Flow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(FlowCollector flowCollector, Continuation continuation) {
        AnonymousClass1 anonymousClass1;
        int i;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            int i2 = anonymousClass1.n;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                anonymousClass1.n = i2 - Integer.MIN_VALUE;
                Object obj = anonymousClass1.m;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = anonymousClass1.n;
                if (i == 0) {
                    if (i == 1) {
                        ResultKt.b(obj);
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    final Flow[] flowArr = this.j;
                    Function0<FileIcon[]> function0 = new Function0<FileIcon[]>() { // from class: net.blip.android.ui.transfer.TransferThumbnailStackKt$TransferThumbnailStack$1$1$invokeSuspend$$inlined$combine$1.2
                        @Override // kotlin.jvm.functions.Function0
                        public final Object a() {
                            return new FileIcon[flowArr.length];
                        }
                    };
                    ?? suspendLambda = new SuspendLambda(3, null);
                    anonymousClass1.n = 1;
                    if (CombineKt.a(anonymousClass1, function0, suspendLambda, flowCollector, flowArr) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                return Unit.a;
            }
        }
        anonymousClass1 = new AnonymousClass1(continuation);
        Object obj2 = anonymousClass1.m;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = anonymousClass1.n;
        if (i == 0) {
        }
        return Unit.a;
    }
}
