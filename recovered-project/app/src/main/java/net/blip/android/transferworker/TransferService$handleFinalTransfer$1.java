package net.blip.android.transferworker;

import android.app.job.JobParameters;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.transferworker.TransferService", f = "TransferService.kt", l = {95}, m = "handleFinalTransfer", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
public final class TransferService$handleFinalTransfer$1 extends ContinuationImpl {
    public JobParameters m;
    public /* synthetic */ Object n;
    public final /* synthetic */ TransferService o;
    public int p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransferService$handleFinalTransfer$1(TransferService transferService, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.o = transferService;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.n = obj;
        this.p |= Integer.MIN_VALUE;
        return this.o.a(null, null, this);
    }
}
