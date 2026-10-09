package net.blip.android.transferworker;

import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.transferworker.TransferWorker", f = "TransferWorker.kt", l = {48}, m = "getForegroundInfo", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
public final class TransferWorker$getForegroundInfo$1 extends ContinuationImpl {
    public /* synthetic */ Object m;
    public final /* synthetic */ TransferWorker n;
    public int o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransferWorker$getForegroundInfo$1(TransferWorker transferWorker, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.n = transferWorker;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.m = obj;
        this.o |= Integer.MIN_VALUE;
        return this.n.d(this);
    }
}
