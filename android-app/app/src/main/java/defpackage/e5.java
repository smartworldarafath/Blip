package defpackage;

import androidx.activity.ComponentActivity;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class e5 implements Runnable {
    public final /* synthetic */ int j;
    public final /* synthetic */ ComponentActivity k;

    public /* synthetic */ e5(ComponentActivity componentActivity, int i) {
        this.j = i;
        this.k = componentActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.j;
        ComponentActivity componentActivity = this.k;
        switch (i) {
            case 0:
                ComponentActivity.h(componentActivity);
                return;
            default:
                int i2 = ComponentActivity.D;
                componentActivity.invalidateOptionsMenu();
                return;
        }
    }
}
