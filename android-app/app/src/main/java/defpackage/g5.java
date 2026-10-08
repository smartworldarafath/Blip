package defpackage;

import android.window.OnBackInvokedDispatcher;
import androidx.activity.ComponentActivity;
import androidx.activity.OnBackPressedDispatcher;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import com.google.accompanist.permissions.MutablePermissionState;
import com.google.accompanist.permissions.PermissionStatus;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class g5 implements LifecycleEventObserver {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;
    public final /* synthetic */ Object l;

    public /* synthetic */ g5(int i, Object obj, Object obj2) {
        this.j = i;
        this.k = obj;
        this.l = obj2;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public final void h(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        int i = this.j;
        Object obj = this.l;
        Object obj2 = this.k;
        switch (i) {
            case 0:
                OnBackPressedDispatcher onBackPressedDispatcher = (OnBackPressedDispatcher) obj2;
                ComponentActivity componentActivity = (ComponentActivity) obj;
                int i2 = ComponentActivity.D;
                if (event == Lifecycle.Event.ON_CREATE) {
                    onBackInvokedDispatcher = componentActivity.getOnBackInvokedDispatcher();
                    onBackInvokedDispatcher.getClass();
                    onBackPressedDispatcher.d(onBackInvokedDispatcher);
                    return;
                }
                return;
            default:
                MutablePermissionState mutablePermissionState = (MutablePermissionState) obj;
                if (event == ((Lifecycle.Event) obj2) && !Intrinsics.a(mutablePermissionState.a(), PermissionStatus.Granted.a)) {
                    ((SnapshotMutableStateImpl) mutablePermissionState.d).setValue(mutablePermissionState.c());
                    return;
                }
                return;
        }
    }
}
