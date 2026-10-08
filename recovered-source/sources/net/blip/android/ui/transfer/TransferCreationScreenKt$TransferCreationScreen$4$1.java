package net.blip.android.ui.transfer;

import android.content.Context;
import android.widget.Toast;
import androidx.compose.runtime.MutableState;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import net.blip.android.ui.util.NuancedPermissionState;
import net.blip.libblip.frontend.Transfer;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.ui.transfer.TransferCreationScreenKt$TransferCreationScreen$4$1", f = "TransferCreationScreen.kt", l = {}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
public final class TransferCreationScreenKt$TransferCreationScreen$4$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public final /* synthetic */ NuancedPermissionState n;
    public final /* synthetic */ Context o;
    public final /* synthetic */ Function0 p;
    public final /* synthetic */ MutableState q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransferCreationScreenKt$TransferCreationScreen$4$1(NuancedPermissionState nuancedPermissionState, Context context, Function0 function0, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.n = nuancedPermissionState;
        this.o = context;
        this.p = function0;
        this.q = mutableState;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        TransferCreationScreenKt$TransferCreationScreen$4$1 transferCreationScreenKt$TransferCreationScreen$4$1 = (TransferCreationScreenKt$TransferCreationScreen$4$1) s((CoroutineScope) obj, (Continuation) obj2);
        Unit unit = Unit.a;
        transferCreationScreenKt$TransferCreationScreen$4$1.v(unit);
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new TransferCreationScreenKt$TransferCreationScreen$4$1(this.n, this.o, this.p, this.q, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        int ordinal;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        ResultKt.b(obj);
        Transfer transfer = (Transfer) this.q.getValue();
        if (transfer != null && (ordinal = transfer.w.ordinal()) != 1 && ordinal != 2) {
            if (!this.n.a) {
                Toast.makeText(this.o, "Enable notifications for Blip to see transfer progress", 1).show();
            }
            this.p.a();
        }
        return Unit.a;
    }
}
