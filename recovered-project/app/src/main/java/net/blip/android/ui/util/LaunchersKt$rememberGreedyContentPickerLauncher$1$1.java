package net.blip.android.ui.util;

import android.os.Build;
import androidx.datastore.preferences.PreferencesProto$Value;
import com.google.accompanist.permissions.PermissionStatus;
import defpackage.u2;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.blip.shared.ContentPicker$Options;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.ui.util.LaunchersKt$rememberGreedyContentPickerLauncher$1$1", f = "Launchers.kt", l = {70, 72}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
final class LaunchersKt$rememberGreedyContentPickerLauncher$1$1 extends SuspendLambda implements Function2<ContentPicker$Options, Continuation<? super List<? extends String>>, Object> {
    public int n;
    public /* synthetic */ Object o;
    public final /* synthetic */ SuspendingPermissionState p;
    public final /* synthetic */ Function2 q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LaunchersKt$rememberGreedyContentPickerLauncher$1$1(SuspendingPermissionState suspendingPermissionState, Function2 function2, Continuation continuation) {
        super(2, continuation);
        this.p = suspendingPermissionState;
        this.q = function2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((LaunchersKt$rememberGreedyContentPickerLauncher$1$1) s((ContentPicker$Options) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        LaunchersKt$rememberGreedyContentPickerLauncher$1$1 launchersKt$rememberGreedyContentPickerLauncher$1$1 = new LaunchersKt$rememberGreedyContentPickerLauncher$1$1(this.p, this.q, continuation);
        launchersKt$rememberGreedyContentPickerLauncher$1$1.o = obj;
        return launchersKt$rememberGreedyContentPickerLauncher$1$1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0041, code lost:
    
        if (r8.b(r7) == r1) goto L20;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        ContentPicker$Options contentPicker$Options = (ContentPicker$Options) this.o;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    ResultKt.b(obj);
                    return obj;
                }
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        } else {
            ResultKt.b(obj);
            if (Build.VERSION.SDK_INT < 33) {
                SuspendingPermissionState suspendingPermissionState = this.p;
                PermissionStatus permissionStatus = suspendingPermissionState.a;
                permissionStatus.getClass();
                if (!permissionStatus.equals(PermissionStatus.Granted.a)) {
                    Function1 function1 = suspendingPermissionState.b;
                    this.o = contentPicker$Options;
                    this.n = 1;
                }
            }
        }
        this.o = null;
        this.n = 2;
        Object n = this.q.n(contentPicker$Options, this);
        if (n == coroutineSingletons) {
            return coroutineSingletons;
        }
        return n;
    }
}
