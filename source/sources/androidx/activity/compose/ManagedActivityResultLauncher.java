package androidx.activity.compose;

import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.ActivityResultRegistry$register$3;
import defpackage.u2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ManagedActivityResultLauncher<I, O> extends ActivityResultLauncher<I> {
    public final ActivityResultLauncherHolder a;

    public ManagedActivityResultLauncher(ActivityResultLauncherHolder activityResultLauncherHolder) {
        this.a = activityResultLauncherHolder;
    }

    @Override // androidx.activity.result.ActivityResultLauncher
    public final void a(Object obj) {
        ActivityResultRegistry$register$3 activityResultRegistry$register$3 = this.a.a;
        if (activityResultRegistry$register$3 != null) {
            activityResultRegistry$register$3.a(obj);
        } else {
            u2.l("Launcher has not been initialized");
        }
    }

    @Override // androidx.activity.result.ActivityResultLauncher
    public final void b() {
        throw new UnsupportedOperationException("Registration is automatically handled by rememberLauncherForActivityResult");
    }
}
