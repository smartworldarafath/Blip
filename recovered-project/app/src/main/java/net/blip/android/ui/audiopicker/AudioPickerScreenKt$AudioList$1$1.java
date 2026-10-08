package net.blip.android.ui.audiopicker;

import android.content.Context;
import androidx.compose.runtime.MutableState;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.u2;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.blip.android.ui.util.NuancedPermissionState;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.ui.audiopicker.AudioPickerScreenKt$AudioList$1$1", f = "AudioPickerScreen.kt", l = {82, 87}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
public final class AudioPickerScreenKt$AudioList$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public List n;
    public int o;
    public final /* synthetic */ NuancedPermissionState p;
    public final /* synthetic */ Context q;
    public final /* synthetic */ MutableState r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AudioPickerScreenKt$AudioList$1$1(NuancedPermissionState nuancedPermissionState, Context context, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.p = nuancedPermissionState;
        this.q = context;
        this.r = mutableState;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((AudioPickerScreenKt$AudioList$1$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new AudioPickerScreenKt$AudioList$1$1(this.p, this.q, this.r, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0041, code lost:
    
        if (r8 == r0) goto L19;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        List list;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.o;
        Unit unit = Unit.a;
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    list = this.n;
                    ResultKt.b(obj);
                    this.r.setValue(list);
                    return unit;
                }
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        } else {
            ResultKt.b(obj);
            NuancedPermissionState nuancedPermissionState = this.p;
            if (!nuancedPermissionState.a) {
                nuancedPermissionState.b.b(Boolean.FALSE);
                return unit;
            }
            DefaultScheduler defaultScheduler = Dispatchers.a;
            DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.l;
            AudioPickerScreenKt$AudioList$1$1$newFiles$1 audioPickerScreenKt$AudioList$1$1$newFiles$1 = new AudioPickerScreenKt$AudioList$1$1$newFiles$1(this.q, null);
            this.o = 1;
            obj = BuildersKt.e(defaultIoScheduler, audioPickerScreenKt$AudioList$1$1$newFiles$1, this);
        }
        List list2 = (List) obj;
        this.n = list2;
        this.o = 2;
        if (DelayKt.b(350L, this) != coroutineSingletons) {
            list = list2;
            this.r.setValue(list);
            return unit;
        }
        return coroutineSingletons;
    }
}
