package net.blip.android.ui.util;

import android.content.Context;
import androidx.datastore.preferences.PreferencesProto$Value;
import java.io.Serializable;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.ui.util.TransferClipboardKt", f = "TransferClipboard.kt", l = {26}, m = "copyTransferToClipboard", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
public final class TransferClipboardKt$copyTransferToClipboard$1 extends ContinuationImpl {
    public Context m;
    public /* synthetic */ Object n;
    public int o;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.n = obj;
        this.o |= Integer.MIN_VALUE;
        Serializable b = TransferClipboardKt.b(null, null, null, this);
        if (b == CoroutineSingletons.j) {
            return b;
        }
        return new Result(b);
    }
}
